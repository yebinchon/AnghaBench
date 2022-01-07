; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-rsa.c_generate_aes_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-rsa.c_generate_aes_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i16, i16 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @generate_aes_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_aes_key(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call i64 (...) @rdtsc()
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @CLOCK_REALTIME, align 4
  %12 = call i64 @clock_gettime(i32 %11, %struct.timespec* %7)
  %13 = icmp sge i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %18 = call i32 (i8*, ...) @memcpy(i8* %16, i16* %17, i32 4)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %22 = call i32 (i8*, ...) @memcpy(i8* %20, i16* %21, i32 4)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  %25 = call i32 (i8*, ...) @memcpy(i8* %24, i64* %6, i32 8)
  %26 = call zeroext i16 (...) @getpid()
  store i16 %26, i16* %8, align 2
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %28 = getelementptr inbounds i8, i8* %27, i64 16
  %29 = call i32 (i8*, ...) @memcpy(i8* %28, i16* %8, i32 2)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %31 = getelementptr inbounds i8, i8* %30, i64 18
  %32 = call i32 @get_random_bytes(i8* %31, i32 32)
  store i32 %32, i32* %9, align 4
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 18
  %36 = call i32 @RAND_seed(i8* %33, i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @RAND_bytes(i8* %37, i32 32)
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @RAND_pseudo_bytes(i8* %40, i32 32)
  %42 = call i32 @assert(i32 %41)
  ret i32 0
}

declare dso_local i64 @rdtsc(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local zeroext i16 @getpid(...) #1

declare dso_local i32 @get_random_bytes(i8*, i32) #1

declare dso_local i32 @RAND_seed(i8*, i32) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @RAND_pseudo_bytes(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
