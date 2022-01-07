; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_suspend.c_pseries_suspend_sysfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_suspend.c_pseries_suspend_sysfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.device = type { %struct.TYPE_4__*, i64 }

@suspend_subsys = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@dev_attr_hibernate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pseries_suspend_sysfs_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_suspend_sysfs_register(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = call i32 @subsys_system_register(%struct.TYPE_4__* @suspend_subsys, i32* null)
  store i32 %5, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  store %struct.TYPE_4__* @suspend_subsys, %struct.TYPE_4__** %13, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @suspend_subsys, i32 0, i32 0), align 4
  %15 = call i32 @device_create_file(i32 %14, i32* @dev_attr_hibernate)
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %19

18:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %17
  %20 = call i32 @bus_unregister(%struct.TYPE_4__* @suspend_subsys)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %18, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @subsys_system_register(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @bus_unregister(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
