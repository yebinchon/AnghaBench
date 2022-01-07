; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_irq_safe_dev_in_no_sleep_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_irq_safe_dev_in_no_sleep_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.generic_pm_domain = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"PM domain %s will not be powered off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.generic_pm_domain*)* @irq_safe_dev_in_no_sleep_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_safe_dev_in_no_sleep_domain(%struct.device* %0, %struct.generic_pm_domain* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.generic_pm_domain*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.generic_pm_domain* %1, %struct.generic_pm_domain** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i64 @pm_runtime_is_irq_safe(%struct.device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %11 = call i32 @genpd_is_irq_safe(%struct.generic_pm_domain* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %21 = call i32 @genpd_is_always_on(%struct.generic_pm_domain* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %26 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_warn_once(%struct.device* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %19, %14
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @pm_runtime_is_irq_safe(%struct.device*) #1

declare dso_local i32 @genpd_is_irq_safe(%struct.generic_pm_domain*) #1

declare dso_local i32 @genpd_is_always_on(%struct.generic_pm_domain*) #1

declare dso_local i32 @dev_warn_once(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
