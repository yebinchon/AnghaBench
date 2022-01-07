; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpit.c_lpit_update_residency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpit.c_lpit_update_residency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.lpit_residency_info = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.acpi_lpit_native = type { i32, %struct.TYPE_7__ }

@tsc_khz = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@acpi_gbl_FADT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ACPI_FADT_LOW_POWER_S0 = common dso_local global i32 0, align 4
@cpu_subsys = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@dev_attr_low_power_idle_system_residency_us = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"cpuidle\00", align 1
@ACPI_ADR_SPACE_FIXED_HARDWARE = common dso_local global i64 0, align 8
@dev_attr_low_power_idle_cpu_residency_us = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpit_residency_info*, %struct.acpi_lpit_native*)* @lpit_update_residency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpit_update_residency(%struct.lpit_residency_info* %0, %struct.acpi_lpit_native* %1) #0 {
  %3 = alloca %struct.lpit_residency_info*, align 8
  %4 = alloca %struct.acpi_lpit_native*, align 8
  store %struct.lpit_residency_info* %0, %struct.lpit_residency_info** %3, align 8
  store %struct.acpi_lpit_native* %1, %struct.acpi_lpit_native** %4, align 8
  %5 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %4, align 8
  %6 = getelementptr inbounds %struct.acpi_lpit_native, %struct.acpi_lpit_native* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_lpit_native, %struct.acpi_lpit_native* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @tsc_khz, align 4
  %15 = mul nsw i32 %14, 1000
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %12, %9 ], [ %15, %13 ]
  %18 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %19 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %21 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %26 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %29 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %28, i32 0, i32 1
  %30 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %4, align 8
  %31 = getelementptr inbounds %struct.acpi_lpit_native, %struct.acpi_lpit_native* %30, i32 0, i32 1
  %32 = bitcast %struct.TYPE_7__* %29 to i8*
  %33 = bitcast %struct.TYPE_7__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %35 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %27
  %41 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %42 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %46 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 8
  %50 = call i32 @ioremap_nocache(i32 %44, i32 %49)
  %51 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %52 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %54 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %40
  br label %86

58:                                               ; preds = %40
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %60 = load i32, i32* @ACPI_FADT_LOW_POWER_S0, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %86

64:                                               ; preds = %58
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cpu_subsys, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @sysfs_add_file_to_group(i32* %66, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dev_attr_low_power_idle_system_residency_us, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %86

68:                                               ; preds = %27
  %69 = load %struct.lpit_residency_info*, %struct.lpit_residency_info** %3, align 8
  %70 = getelementptr inbounds %struct.lpit_residency_info, %struct.lpit_residency_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %77 = load i32, i32* @ACPI_FADT_LOW_POWER_S0, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %86

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cpu_subsys, i32 0, i32 0), align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @sysfs_add_file_to_group(i32* %83, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dev_attr_low_power_idle_cpu_residency_us, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %68
  br label %86

86:                                               ; preds = %57, %63, %80, %85, %64
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #2

declare dso_local i32 @sysfs_add_file_to_group(i32*, i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
