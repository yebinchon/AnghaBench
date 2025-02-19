; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c___dev_pm_qos_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c___dev_pm_qos_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dev_pm_qos* }
%struct.dev_pm_qos = type { %struct.pm_qos_flags }
%struct.pm_qos_flags = type { i32, i32 }

@PM_QOS_FLAGS_UNDEFINED = common dso_local global i32 0, align 4
@PM_QOS_FLAGS_ALL = common dso_local global i32 0, align 4
@PM_QOS_FLAGS_SOME = common dso_local global i32 0, align 4
@PM_QOS_FLAGS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dev_pm_qos_flags(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_pm_qos*, align 8
  %7 = alloca %struct.pm_qos_flags*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %11, align 8
  store %struct.dev_pm_qos* %12, %struct.dev_pm_qos** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %6, align 8
  %18 = call i64 @IS_ERR_OR_NULL(%struct.dev_pm_qos* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @PM_QOS_FLAGS_UNDEFINED, align 4
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %6, align 8
  %24 = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %23, i32 0, i32 0
  store %struct.pm_qos_flags* %24, %struct.pm_qos_flags** %7, align 8
  %25 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %7, align 8
  %26 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %25, i32 0, i32 1
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @PM_QOS_FLAGS_UNDEFINED, align 4
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %22
  %32 = load %struct.pm_qos_flags*, %struct.pm_qos_flags** %7, align 8
  %33 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @PM_QOS_FLAGS_ALL, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @PM_QOS_FLAGS_SOME, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %31
  %50 = load i32, i32* @PM_QOS_FLAGS_NONE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %47, %29, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dev_pm_qos*) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
