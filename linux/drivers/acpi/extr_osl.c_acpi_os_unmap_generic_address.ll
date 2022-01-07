; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_unmap_generic_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_unmap_generic_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i64, i32, i32 }
%struct.acpi_ioremap = type { i32 }

@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@acpi_ioremap_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_os_unmap_generic_address(%struct.acpi_generic_address* %0) #0 {
  %2 = alloca %struct.acpi_generic_address*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_ioremap*, align 8
  store %struct.acpi_generic_address* %0, %struct.acpi_generic_address** %2, align 8
  %5 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %12, i32 0, i32 2
  %14 = call i32 @memcpy(i32* %3, i32* %13, i32 4)
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %11
  br label %41

23:                                               ; preds = %17
  %24 = call i32 @mutex_lock(i32* @acpi_ioremap_lock)
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %2, align 8
  %27 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 8
  %30 = call %struct.acpi_ioremap* @acpi_map_lookup(i32 %25, i32 %29)
  store %struct.acpi_ioremap* %30, %struct.acpi_ioremap** %4, align 8
  %31 = load %struct.acpi_ioremap*, %struct.acpi_ioremap** %4, align 8
  %32 = icmp ne %struct.acpi_ioremap* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = call i32 @mutex_unlock(i32* @acpi_ioremap_lock)
  br label %41

35:                                               ; preds = %23
  %36 = load %struct.acpi_ioremap*, %struct.acpi_ioremap** %4, align 8
  %37 = call i32 @acpi_os_drop_map_ref(%struct.acpi_ioremap* %36)
  %38 = call i32 @mutex_unlock(i32* @acpi_ioremap_lock)
  %39 = load %struct.acpi_ioremap*, %struct.acpi_ioremap** %4, align 8
  %40 = call i32 @acpi_os_map_cleanup(%struct.acpi_ioremap* %39)
  br label %41

41:                                               ; preds = %35, %33, %22, %10
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.acpi_ioremap* @acpi_map_lookup(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acpi_os_drop_map_ref(%struct.acpi_ioremap*) #1

declare dso_local i32 @acpi_os_map_cleanup(%struct.acpi_ioremap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
