; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_refresh_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_refresh_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.skd_special_context }
%struct.skd_special_context = type { i32 }

@TEST_UNIT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_refresh_device_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_refresh_device_data(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca %struct.skd_special_context*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %4 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %5 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %4, i32 0, i32 0
  store %struct.skd_special_context* %5, %struct.skd_special_context** %3, align 8
  %6 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %7 = load %struct.skd_special_context*, %struct.skd_special_context** %3, align 8
  %8 = load i32, i32* @TEST_UNIT_READY, align 4
  %9 = call i32 @skd_send_internal_skspcl(%struct.skd_device* %6, %struct.skd_special_context* %7, i32 %8)
  ret void
}

declare dso_local i32 @skd_send_internal_skspcl(%struct.skd_device*, %struct.skd_special_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
