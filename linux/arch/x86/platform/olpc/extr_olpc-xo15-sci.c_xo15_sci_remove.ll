; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo15-sci.c_xo15_sci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo15-sci.c_xo15_sci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.acpi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@xo15_sci_gpe = common dso_local global i32 0, align 4
@xo15_sci_gpe_handler = common dso_local global i32 0, align 4
@sci_work = common dso_local global i32 0, align 4
@lid_wake_on_close_attr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @xo15_sci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo15_sci_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %3 = load i32, i32* @xo15_sci_gpe, align 4
  %4 = call i32 @acpi_disable_gpe(i32* null, i32 %3)
  %5 = load i32, i32* @xo15_sci_gpe, align 4
  %6 = load i32, i32* @xo15_sci_gpe_handler, align 4
  %7 = call i32 @acpi_remove_gpe_handler(i32* null, i32 %5, i32 %6)
  %8 = call i32 @cancel_work_sync(i32* @sci_work)
  %9 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @sysfs_remove_file(i32* %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lid_wake_on_close_attr, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @acpi_disable_gpe(i32*, i32) #1

declare dso_local i32 @acpi_remove_gpe_handler(i32*, i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
