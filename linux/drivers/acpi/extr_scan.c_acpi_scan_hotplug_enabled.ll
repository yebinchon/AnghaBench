; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_hotplug_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_hotplug_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hotplug_profile = type { i32 }

@acpi_scan_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_scan_hotplug_enabled(%struct.acpi_hotplug_profile* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_hotplug_profile*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_hotplug_profile* %0, %struct.acpi_hotplug_profile** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.acpi_hotplug_profile*, %struct.acpi_hotplug_profile** %3, align 8
  %6 = getelementptr inbounds %struct.acpi_hotplug_profile, %struct.acpi_hotplug_profile* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %25

19:                                               ; preds = %2
  %20 = call i32 @mutex_lock(i32* @acpi_scan_lock)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.acpi_hotplug_profile*, %struct.acpi_hotplug_profile** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_hotplug_profile, %struct.acpi_hotplug_profile* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = call i32 @mutex_unlock(i32* @acpi_scan_lock)
  br label %25

25:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
