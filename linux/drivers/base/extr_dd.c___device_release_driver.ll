; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_release_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_release_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.device_driver* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 (%struct.device*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.device*)* }
%struct.device_driver = type { i32 (%struct.device.0*)*, i32 }
%struct.device.0 = type opaque

@BUS_NOTIFY_UNBIND_DRIVER = common dso_local global i32 0, align 4
@BUS_NOTIFY_UNBOUND_DRIVER = common dso_local global i32 0, align 4
@KOBJ_UNBIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*)* @__device_release_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__device_release_driver(%struct.device* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 4
  %8 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  store %struct.device_driver* %8, %struct.device_driver** %5, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %10 = icmp ne %struct.device_driver* %9, null
  br i1 %10, label %11, label %154

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %31, %11
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i64 @device_links_busy(%struct.device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @__device_driver_unlock(%struct.device* %17, %struct.device* %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @device_links_unbind_consumers(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @__device_driver_lock(%struct.device* %22, %struct.device* %23)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 4
  %27 = load %struct.device_driver*, %struct.device_driver** %26, align 8
  %28 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %29 = icmp ne %struct.device_driver* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %154

31:                                               ; preds = %16
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i32 @pm_runtime_get_sync(%struct.device* %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 @pm_runtime_clean_up_links(%struct.device* %35)
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i32 @driver_sysfs_remove(%struct.device* %37)
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* @BUS_NOTIFY_UNBIND_DRIVER, align 4
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 @blocking_notifier_call_chain(i32* %49, i32 %50, %struct.device* %51)
  br label %53

53:                                               ; preds = %43, %32
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = call i32 @pm_runtime_put_sync(%struct.device* %54)
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %58 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @device_remove_groups(%struct.device* %56, i32 %59)
  %61 = load %struct.device*, %struct.device** %3, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %53
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32 (%struct.device*)*, i32 (%struct.device*)** %69, align 8
  %71 = icmp ne i32 (%struct.device*)* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32 (%struct.device*)*, i32 (%struct.device*)** %76, align 8
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = call i32 %77(%struct.device* %78)
  br label %93

80:                                               ; preds = %65, %53
  %81 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %82 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %81, i32 0, i32 0
  %83 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %82, align 8
  %84 = icmp ne i32 (%struct.device.0*)* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %87 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %86, i32 0, i32 0
  %88 = load i32 (%struct.device.0*)*, i32 (%struct.device.0*)** %87, align 8
  %89 = load %struct.device*, %struct.device** %3, align 8
  %90 = bitcast %struct.device* %89 to %struct.device.0*
  %91 = call i32 %88(%struct.device.0* %90)
  br label %92

92:                                               ; preds = %85, %80
  br label %93

93:                                               ; preds = %92, %72
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = call i32 @device_links_driver_cleanup(%struct.device* %94)
  %96 = load %struct.device*, %struct.device** %3, align 8
  %97 = call i32 @devres_release_all(%struct.device* %96)
  %98 = load %struct.device*, %struct.device** %3, align 8
  %99 = call i32 @arch_teardown_dma_ops(%struct.device* %98)
  %100 = load %struct.device*, %struct.device** %3, align 8
  %101 = getelementptr inbounds %struct.device, %struct.device* %100, i32 0, i32 4
  store %struct.device_driver* null, %struct.device_driver** %101, align 8
  %102 = load %struct.device*, %struct.device** %3, align 8
  %103 = call i32 @dev_set_drvdata(%struct.device* %102, i32* null)
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = getelementptr inbounds %struct.device, %struct.device* %104, i32 0, i32 3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = icmp ne %struct.TYPE_5__* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %93
  %109 = load %struct.device*, %struct.device** %3, align 8
  %110 = getelementptr inbounds %struct.device, %struct.device* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32 (%struct.device*)*, i32 (%struct.device*)** %112, align 8
  %114 = icmp ne i32 (%struct.device*)* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load %struct.device*, %struct.device** %3, align 8
  %117 = getelementptr inbounds %struct.device, %struct.device* %116, i32 0, i32 3
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32 (%struct.device*)*, i32 (%struct.device*)** %119, align 8
  %121 = load %struct.device*, %struct.device** %3, align 8
  %122 = call i32 %120(%struct.device* %121)
  br label %123

123:                                              ; preds = %115, %108, %93
  %124 = load %struct.device*, %struct.device** %3, align 8
  %125 = call i32 @pm_runtime_reinit(%struct.device* %124)
  %126 = load %struct.device*, %struct.device** %3, align 8
  %127 = call i32 @dev_pm_set_driver_flags(%struct.device* %126, i32 0)
  %128 = load %struct.device*, %struct.device** %3, align 8
  %129 = getelementptr inbounds %struct.device, %struct.device* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = call i32 @klist_remove(i32* %131)
  %133 = load %struct.device*, %struct.device** %3, align 8
  %134 = call i32 @device_pm_check_callbacks(%struct.device* %133)
  %135 = load %struct.device*, %struct.device** %3, align 8
  %136 = getelementptr inbounds %struct.device, %struct.device* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = icmp ne %struct.TYPE_8__* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %123
  %140 = load %struct.device*, %struct.device** %3, align 8
  %141 = getelementptr inbounds %struct.device, %struct.device* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* @BUS_NOTIFY_UNBOUND_DRIVER, align 4
  %147 = load %struct.device*, %struct.device** %3, align 8
  %148 = call i32 @blocking_notifier_call_chain(i32* %145, i32 %146, %struct.device* %147)
  br label %149

149:                                              ; preds = %139, %123
  %150 = load %struct.device*, %struct.device** %3, align 8
  %151 = getelementptr inbounds %struct.device, %struct.device* %150, i32 0, i32 0
  %152 = load i32, i32* @KOBJ_UNBIND, align 4
  %153 = call i32 @kobject_uevent(i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %30, %149, %2
  ret void
}

declare dso_local i64 @device_links_busy(%struct.device*) #1

declare dso_local i32 @__device_driver_unlock(%struct.device*, %struct.device*) #1

declare dso_local i32 @device_links_unbind_consumers(%struct.device*) #1

declare dso_local i32 @__device_driver_lock(%struct.device*, %struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_clean_up_links(%struct.device*) #1

declare dso_local i32 @driver_sysfs_remove(%struct.device*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @device_remove_groups(%struct.device*, i32) #1

declare dso_local i32 @device_links_driver_cleanup(%struct.device*) #1

declare dso_local i32 @devres_release_all(%struct.device*) #1

declare dso_local i32 @arch_teardown_dma_ops(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_reinit(%struct.device*) #1

declare dso_local i32 @dev_pm_set_driver_flags(%struct.device*, i32) #1

declare dso_local i32 @klist_remove(i32*) #1

declare dso_local i32 @device_pm_check_callbacks(%struct.device*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
