; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpit.c_lpit_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_lpit.c_lpit_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_lpit_native = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@residency_info_mem = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ACPI_ADR_SPACE_FIXED_HARDWARE = common dso_local global i64 0, align 8
@residency_info_ffh = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @lpit_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpit_process(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_lpit_native*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %53, %2
  %7 = load i64, i64* %3, align 8
  %8 = add i64 %7, 24
  %9 = load i64, i64* %4, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %6
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to %struct.acpi_lpit_native*
  store %struct.acpi_lpit_native* %13, %struct.acpi_lpit_native** %5, align 8
  %14 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_lpit_native, %struct.acpi_lpit_native* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %11
  %20 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_lpit_native, %struct.acpi_lpit_native* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %19
  %26 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_lpit_native, %struct.acpi_lpit_native* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @residency_info_mem, i32 0, i32 0, i32 0), align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %5, align 8
  %37 = call i32 @lpit_update_residency(%struct.TYPE_10__* @residency_info_mem, %struct.acpi_lpit_native* %36)
  br label %52

38:                                               ; preds = %32, %25
  %39 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %5, align 8
  %40 = getelementptr inbounds %struct.acpi_lpit_native, %struct.acpi_lpit_native* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @residency_info_ffh, i32 0, i32 0, i32 0), align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %5, align 8
  %50 = call i32 @lpit_update_residency(%struct.TYPE_10__* @residency_info_ffh, %struct.acpi_lpit_native* %49)
  br label %51

51:                                               ; preds = %48, %45, %38
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %19, %11
  %54 = load %struct.acpi_lpit_native*, %struct.acpi_lpit_native** %5, align 8
  %55 = getelementptr inbounds %struct.acpi_lpit_native, %struct.acpi_lpit_native* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %3, align 8
  br label %6

60:                                               ; preds = %6
  ret void
}

declare dso_local i32 @lpit_update_residency(%struct.TYPE_10__*, %struct.acpi_lpit_native*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
