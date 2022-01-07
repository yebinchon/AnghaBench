; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_xo1_sci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_xo1_sci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@sci_irq = common dso_local global i32 0, align 4
@sci_work = common dso_local global i32 0, align 4
@acpi_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xo1_sci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo1_sci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %4 = call i32 @mfd_cell_disable(%struct.platform_device* %3)
  %5 = load i32, i32* @sci_irq, align 4
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call i32 @free_irq(i32 %5, %struct.platform_device* %6)
  %8 = call i32 @cancel_work_sync(i32* @sci_work)
  %9 = call i32 (...) @free_ec_sci()
  %10 = call i32 (...) @free_lid_events()
  %11 = call i32 (...) @free_lid_switch()
  %12 = call i32 (...) @free_ebook_switch()
  %13 = call i32 (...) @free_power_button()
  store i64 0, i64* @acpi_base, align 8
  ret i32 0
}

declare dso_local i32 @mfd_cell_disable(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @free_ec_sci(...) #1

declare dso_local i32 @free_lid_events(...) #1

declare dso_local i32 @free_lid_switch(...) #1

declare dso_local i32 @free_ebook_switch(...) #1

declare dso_local i32 @free_power_button(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
