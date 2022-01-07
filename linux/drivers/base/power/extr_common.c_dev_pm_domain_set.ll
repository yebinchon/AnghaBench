; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_common.c_dev_pm_domain_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_common.c_dev_pm_domain_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dev_pm_domain* }
%struct.dev_pm_domain = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"PM domains can only be changed for unbound devices\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_pm_domain_set(%struct.device* %0, %struct.dev_pm_domain* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dev_pm_domain*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.dev_pm_domain* %1, %struct.dev_pm_domain** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %6, align 8
  %8 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %4, align 8
  %9 = icmp eq %struct.dev_pm_domain* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %27

11:                                               ; preds = %2
  %12 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %4, align 8
  %13 = icmp ne %struct.dev_pm_domain* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i64 @device_is_bound(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN(i32 %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dev_pm_domain*, %struct.dev_pm_domain** %4, align 8
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  store %struct.dev_pm_domain* %22, %struct.dev_pm_domain** %24, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @device_pm_check_callbacks(%struct.device* %25)
  br label %27

27:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @device_is_bound(%struct.device*) #1

declare dso_local i32 @device_pm_check_callbacks(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
