; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_rtas_get_sensor_fast.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_rtas_get_sensor_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"get-sensor-state\00", align 1
@RTAS_UNKNOWN_SERVICE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RTAS_BUSY = common dso_local global i32 0, align 4
@RTAS_EXTENDED_DELAY_MIN = common dso_local global i32 0, align 4
@RTAS_EXTENDED_DELAY_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtas_get_sensor_fast(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = call i32 @rtas_token(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @RTAS_UNKNOWN_SERVICE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rtas_call(i32 %18, i32 2, i32 2, i32* %19, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RTAS_BUSY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @RTAS_EXTENDED_DELAY_MIN, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @RTAS_EXTENDED_DELAY_MAX, align 4
  %33 = icmp sle i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br label %36

36:                                               ; preds = %34, %17
  %37 = phi i1 [ true, %17 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @rtas_error_rc(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %42, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rtas_error_rc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
