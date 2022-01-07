; ModuleID = '/home/carl/AnghaBench/kphp-kdb/random/extr_random-data.c_prng_seed.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/random/extr_random-data.c_prng_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i16, i16 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Warning: fail to open password file - \22%s\22, %m.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Warning: fail to read password file - \22%s\22, %m.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"read %d bytes from password file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @prng_seed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prng_seed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 64, %12
  %14 = call i8* @calloc(i32 %13, i32 1)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i64 (...) @rdtsc()
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* @CLOCK_REALTIME, align 4
  %21 = call i64 @clock_gettime(i32 %20, %struct.timespec* %7)
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %27 = call i32 (i8*, ...) @memcpy(i8* %25, i16* %26, i32 4)
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %31 = call i32 (i8*, ...) @memcpy(i8* %29, i16* %30, i32 4)
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i32 (i8*, ...) @memcpy(i8* %33, i64* %6, i32 8)
  %35 = call zeroext i16 (...) @getpid()
  store i16 %35, i16* %8, align 2
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 16
  %38 = call i32 (i8*, ...) @memcpy(i8* %37, i16* %8, i32 2)
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 18
  %41 = call i32 @get_random_bytes(i8* %40, i32 32)
  %42 = add nsw i32 %41, 18
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* @O_RDONLY, align 4
  %45 = call i32 @open(i8* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %73

51:                                               ; preds = %2
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @read(i32 %52, i8* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %70

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @close(i32 %71)
  br label %73

73:                                               ; preds = %70, %48
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @RAND_seed(i8* %74, i32 %75)
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @memset(i8* %77, i32 0, i32 %78)
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @free(i8* %80)
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local zeroext i16 @getpid(...) #1

declare dso_local i32 @get_random_bytes(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @RAND_seed(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
