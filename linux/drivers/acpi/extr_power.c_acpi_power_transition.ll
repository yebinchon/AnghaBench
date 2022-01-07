; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_power.c_acpi_power_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_power.c_acpi_power_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3_COLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_power_transition(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ACPI_STATE_D0, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %9, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %101

20:                                               ; preds = %13
  %21 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %20
  store i32 0, i32* %3, align 4
  br label %101

34:                                               ; preds = %27
  %35 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ACPI_STATE_D0, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %34
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %101

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %57 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @acpi_power_on_list(i32* %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %55, %51
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %65
  %69 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %70 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %77 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %81 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i32 @acpi_power_off_list(i32* %86)
  br label %88

88:                                               ; preds = %75, %68, %65
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %98 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %48, %33, %17
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @acpi_power_on_list(i32*) #1

declare dso_local i32 @acpi_power_off_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
