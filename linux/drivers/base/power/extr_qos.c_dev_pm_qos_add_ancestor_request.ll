; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_add_ancestor_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_add_ancestor_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dev_pm_qos_request = type { i32* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_qos_add_ancestor_request(%struct.device* %0, %struct.dev_pm_qos_request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dev_pm_qos_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.dev_pm_qos_request* %1, %struct.dev_pm_qos_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %53 [
    i32 128, label %17
    i32 129, label %35
  ]

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load %struct.device*, %struct.device** %9, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ false, %18 ], [ %27, %21 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %9, align 8
  br label %18

34:                                               ; preds = %28
  br label %54

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load %struct.device*, %struct.device** %9, align 8
  %38 = icmp ne %struct.device* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %39, %36
  %47 = phi i1 [ false, %36 ], [ %45, %39 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = load %struct.device*, %struct.device** %9, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load %struct.device*, %struct.device** %50, align 8
  store %struct.device* %51, %struct.device** %9, align 8
  br label %36

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %4
  store %struct.device* null, %struct.device** %9, align 8
  br label %54

54:                                               ; preds = %53, %52, %34
  %55 = load %struct.device*, %struct.device** %9, align 8
  %56 = icmp ne %struct.device* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_pm_qos_add_request(%struct.device* %58, %struct.dev_pm_qos_request* %59, i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %68 = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @dev_pm_qos_add_request(%struct.device*, %struct.dev_pm_qos_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
