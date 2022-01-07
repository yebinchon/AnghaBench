; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_set_dedicated_wake_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeirq.c_dev_pm_set_dedicated_wake_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wake_irq = type { i32, %struct.wake_irq*, i32, %struct.device* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s:wakeup\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@IRQ_DISABLE_UNLAZY = common dso_local global i32 0, align 4
@handle_threaded_wake_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@WAKE_IRQ_DEDICATED_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_set_dedicated_wake_irq(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wake_irq*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %85

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.wake_irq* @kzalloc(i32 32, i32 %14)
  store %struct.wake_irq* %15, %struct.wake_irq** %6, align 8
  %16 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %17 = icmp ne %struct.wake_irq* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %85

21:                                               ; preds = %13
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_name(%struct.device* %23)
  %25 = call %struct.wake_irq* @kasprintf(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %27 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %26, i32 0, i32 1
  store %struct.wake_irq* %25, %struct.wake_irq** %27, align 8
  %28 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %29 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %28, i32 0, i32 1
  %30 = load %struct.wake_irq*, %struct.wake_irq** %29, align 8
  %31 = icmp ne %struct.wake_irq* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %81

35:                                               ; preds = %21
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %38 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %37, i32 0, i32 3
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %41 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %44 = call i32 @irq_set_status_flags(i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IRQ_DISABLE_UNLAZY, align 4
  %47 = call i32 @irq_set_status_flags(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @handle_threaded_wake_irq, align 4
  %50 = load i32, i32* @IRQF_ONESHOT, align 4
  %51 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %52 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %51, i32 0, i32 1
  %53 = load %struct.wake_irq*, %struct.wake_irq** %52, align 8
  %54 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %55 = call i32 @request_threaded_irq(i32 %48, i32* null, i32 %49, i32 %50, %struct.wake_irq* %53, %struct.wake_irq* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  br label %76

59:                                               ; preds = %35
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %63 = call i32 @dev_pm_attach_wake_irq(%struct.device* %60, i32 %61, %struct.wake_irq* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %72

67:                                               ; preds = %59
  %68 = load i32, i32* @WAKE_IRQ_DEDICATED_ALLOCATED, align 4
  %69 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %70 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %85

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %75 = call i32 @free_irq(i32 %73, %struct.wake_irq* %74)
  br label %76

76:                                               ; preds = %72, %58
  %77 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %78 = getelementptr inbounds %struct.wake_irq, %struct.wake_irq* %77, i32 0, i32 1
  %79 = load %struct.wake_irq*, %struct.wake_irq** %78, align 8
  %80 = call i32 @kfree(%struct.wake_irq* %79)
  br label %81

81:                                               ; preds = %76, %32
  %82 = load %struct.wake_irq*, %struct.wake_irq** %6, align 8
  %83 = call i32 @kfree(%struct.wake_irq* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %67, %18, %10
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.wake_irq* @kzalloc(i32, i32) #1

declare dso_local %struct.wake_irq* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, %struct.wake_irq*, %struct.wake_irq*) #1

declare dso_local i32 @dev_pm_attach_wake_irq(%struct.device*, i32, %struct.wake_irq*) #1

declare dso_local i32 @free_irq(i32, %struct.wake_irq*) #1

declare dso_local i32 @kfree(%struct.wake_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
