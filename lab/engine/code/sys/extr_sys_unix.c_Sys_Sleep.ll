; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_Sleep.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_Sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@stdinIsATTY = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_Sleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %41

8:                                                ; preds = %1
  %9 = load i64, i64* @stdinIsATTY, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = call i32 @FD_ZERO(i32* %3)
  %13 = load i64, i64* @STDIN_FILENO, align 8
  %14 = call i32 @FD_SET(i64 %13, i32* %3)
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i64, i64* @STDIN_FILENO, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @select(i64 %19, i32* %3, i32* null, i32* null, %struct.timeval* null)
  br label %32

21:                                               ; preds = %11
  %22 = load i32, i32* %2, align 4
  %23 = sdiv i32 %22, 1000
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %2, align 4
  %26 = srem i32 %25, 1000
  %27 = mul nsw i32 %26, 1000
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i64, i64* @STDIN_FILENO, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @select(i64 %30, i32* %3, i32* null, i32* null, %struct.timeval* %4)
  br label %32

32:                                               ; preds = %21, %17
  br label %41

33:                                               ; preds = %8
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 10, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %2, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = call i32 @usleep(i32 %39)
  br label %41

41:                                               ; preds = %7, %37, %32
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
