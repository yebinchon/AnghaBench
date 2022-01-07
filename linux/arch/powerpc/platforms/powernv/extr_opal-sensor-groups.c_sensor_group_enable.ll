; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-sensor-groups.c_sensor_group_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-sensor-groups.c_sensor_group_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_msg = type { i32 }

@OPAL_ASYNC_COMPLETION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to wait for the async response\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sensor_group_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.opal_msg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @opal_async_get_token_interruptible()
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @opal_sensor_group_enable(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @OPAL_ASYNC_COMPLETION, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @opal_async_wait_response(i32 %23, %struct.opal_msg* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 @pr_devel(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %40

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @opal_get_async_rc(i32 %33)
  %35 = call i32 @opal_error_code(i32 %34)
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %14
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @opal_error_code(i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @opal_async_release_token(i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @opal_async_get_token_interruptible(...) #1

declare dso_local i32 @opal_sensor_group_enable(i32, i32, i32) #1

declare dso_local i32 @opal_async_wait_response(i32, %struct.opal_msg*) #1

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @opal_error_code(i32) #1

declare dso_local i32 @opal_get_async_rc(i32) #1

declare dso_local i32 @opal_async_release_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
