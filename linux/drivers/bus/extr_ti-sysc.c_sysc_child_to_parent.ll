; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_child_to_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_child_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32 }
%struct.device = type { i32*, %struct.device* }

@sysc_device_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sysc* (%struct.device*)* @sysc_child_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sysc* @sysc_child_to_parent(%struct.device* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 1
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, @sysc_device_type
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  store %struct.sysc* null, %struct.sysc** %2, align 8
  br label %19

16:                                               ; preds = %10
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.sysc* @dev_get_drvdata(%struct.device* %17)
  store %struct.sysc* %18, %struct.sysc** %2, align 8
  br label %19

19:                                               ; preds = %16, %15
  %20 = load %struct.sysc*, %struct.sysc** %2, align 8
  ret %struct.sysc* %20
}

declare dso_local %struct.sysc* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
