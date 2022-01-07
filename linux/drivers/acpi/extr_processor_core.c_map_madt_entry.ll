; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_core.c_map_madt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_core.c_map_madt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_madt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_subtable_header = type { i64, i64 }

@PHYS_CPUID_INVALID = common dso_local global i32 0, align 4
@ACPI_MADT_TYPE_LOCAL_APIC = common dso_local global i64 0, align 8
@ACPI_MADT_TYPE_LOCAL_X2APIC = common dso_local global i64 0, align 8
@ACPI_MADT_TYPE_LOCAL_SAPIC = common dso_local global i64 0, align 8
@ACPI_MADT_TYPE_GENERIC_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_madt*, i32, i32)* @map_madt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_madt_entry(%struct.acpi_table_madt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_table_madt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_subtable_header*, align 8
  store %struct.acpi_table_madt* %0, %struct.acpi_table_madt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @PHYS_CPUID_INVALID, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %5, align 8
  %14 = icmp ne %struct.acpi_table_madt* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %101

17:                                               ; preds = %3
  %18 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %5, align 8
  %19 = ptrtoint %struct.acpi_table_madt* %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.acpi_table_madt*, %struct.acpi_table_madt** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_table_madt, %struct.acpi_table_madt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %20, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 8
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %93, %17
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 16
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = inttoptr i64 %34 to %struct.acpi_subtable_header*
  store %struct.acpi_subtable_header* %35, %struct.acpi_subtable_header** %11, align 8
  %36 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %37 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACPI_MADT_TYPE_LOCAL_APIC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @map_lapic_id(%struct.acpi_subtable_header* %42, i32 %43, i32* %10)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %99

47:                                               ; preds = %41
  br label %93

48:                                               ; preds = %33
  %49 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %50 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ACPI_MADT_TYPE_LOCAL_X2APIC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @map_x2apic_id(%struct.acpi_subtable_header* %55, i32 %56, i32 %57, i32* %10)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %99

61:                                               ; preds = %54
  br label %92

62:                                               ; preds = %48
  %63 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %64 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ACPI_MADT_TYPE_LOCAL_SAPIC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @map_lsapic_id(%struct.acpi_subtable_header* %69, i32 %70, i32 %71, i32* %10)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %99

75:                                               ; preds = %68
  br label %91

76:                                               ; preds = %62
  %77 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %78 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ACPI_MADT_TYPE_GENERIC_INTERRUPT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @map_gicc_mpidr(%struct.acpi_subtable_header* %83, i32 %84, i32 %85, i32* %10)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %99

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %76
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92, %47
  %94 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %95 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %9, align 8
  br label %28

99:                                               ; preds = %88, %74, %60, %46, %28
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %15
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @map_lapic_id(%struct.acpi_subtable_header*, i32, i32*) #1

declare dso_local i32 @map_x2apic_id(%struct.acpi_subtable_header*, i32, i32, i32*) #1

declare dso_local i32 @map_lsapic_id(%struct.acpi_subtable_header*, i32, i32, i32*) #1

declare dso_local i32 @map_gicc_mpidr(%struct.acpi_subtable_header*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
