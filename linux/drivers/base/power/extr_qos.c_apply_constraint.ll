; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_apply_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_apply_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pm_qos_request = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32)*, %struct.dev_pm_qos* }
%struct.dev_pm_qos = type { i32, i32, i32 }

@PM_QOS_REMOVE_REQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_pm_qos_request*, i32, i32)* @apply_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_constraint(%struct.dev_pm_qos_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dev_pm_qos_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_pm_qos*, align 8
  %8 = alloca i32, align 4
  store %struct.dev_pm_qos_request* %0, %struct.dev_pm_qos_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %4, align 8
  %10 = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %13, align 8
  store %struct.dev_pm_qos* %14, %struct.dev_pm_qos** %7, align 8
  %15 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %4, align 8
  %16 = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %76 [
    i32 128, label %18
    i32 129, label %40
    i32 130, label %67
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PM_QOS_REMOVE_REQ, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %7, align 8
  %33 = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %32, i32 0, i32 2
  %34 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %4, align 8
  %35 = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @pm_qos_update_target(i32* %33, i32* %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %79

40:                                               ; preds = %3
  %41 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %7, align 8
  %42 = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %41, i32 0, i32 1
  %43 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %4, align 8
  %44 = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @pm_qos_update_target(i32* %42, i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %40
  %52 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %7, align 8
  %53 = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %52, i32 0, i32 1
  %54 = call i32 @pm_qos_read_value(i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %4, align 8
  %56 = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %59, align 8
  %61 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %4, align 8
  %62 = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 %60(%struct.TYPE_6__* %63, i32 %64)
  br label %66

66:                                               ; preds = %51, %40
  br label %79

67:                                               ; preds = %3
  %68 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %7, align 8
  %69 = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %68, i32 0, i32 0
  %70 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %4, align 8
  %71 = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @pm_qos_update_flags(i32* %69, i32* %72, i32 %73, i32 %74)
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %3
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %67, %66, %31
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pm_qos_update_target(i32*, i32*, i32, i32) #1

declare dso_local i32 @pm_qos_read_value(i32*) #1

declare dso_local i32 @pm_qos_update_flags(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
