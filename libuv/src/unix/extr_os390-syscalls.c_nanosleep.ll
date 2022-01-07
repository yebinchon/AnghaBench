; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_os390-syscalls.c_nanosleep.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_os390-syscalls.c_nanosleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@CW_CONDVAR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nanosleep(%struct.timespec* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %13 = load %struct.timespec*, %struct.timespec** %3, align 8
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.timespec*, %struct.timespec** %3, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @CW_CONDVAR, align 4
  store i32 %19, i32* %7, align 4
  %20 = call i32 @BPX4CTW(i32* %6, i32* %5, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12)
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EAGAIN, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i1 [ false, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.timespec*, %struct.timespec** %4, align 8
  %32 = icmp ne %struct.timespec* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.timespec*, %struct.timespec** %4, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.timespec*, %struct.timespec** %4, align 8
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %27
  ret i32 0
}

declare dso_local i32 @BPX4CTW(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
