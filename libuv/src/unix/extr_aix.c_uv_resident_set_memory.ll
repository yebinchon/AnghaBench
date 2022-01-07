; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_resident_set_memory.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_resident_set_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"/proc/%lu/psinfo\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_resident_set_memory(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %9 = call i64 (...) @getpid()
  %10 = call i32 @snprintf(i8* %8, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @UV__ERR(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load i32, i32* @UV_EINVAL, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @read(i32 %21, %struct.TYPE_3__* %5, i32 8)
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 8
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %27, 1024
  %29 = load i64*, i64** %3, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @uv__close(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @uv__close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
