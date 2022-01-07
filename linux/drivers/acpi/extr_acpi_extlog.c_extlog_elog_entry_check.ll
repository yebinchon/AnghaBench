; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_extlog.c_extlog_elog_entry_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_extlog.c_extlog_elog_entry_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_generic_status = type { i64 }

@ELOG_ENTRY_VALID = common dso_local global i32 0, align 4
@EXT_ELOG_ENTRY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_hest_generic_status* (i32, i32)* @extlog_elog_entry_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_hest_generic_status* @extlog_elog_entry_check(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_hest_generic_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_hest_generic_status*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ELOG_IDX(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ELOG_ENTRY_DATA(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ELOG_ENTRY_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.acpi_hest_generic_status* null, %struct.acpi_hest_generic_status** %3, align 8
  br label %37

23:                                               ; preds = %2
  %24 = load i32, i32* @EXT_ELOG_ENTRY_MASK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @ELOG_ENTRY_ADDR(i32 %27)
  %29 = inttoptr i64 %28 to %struct.acpi_hest_generic_status*
  store %struct.acpi_hest_generic_status* %29, %struct.acpi_hest_generic_status** %8, align 8
  %30 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %8, align 8
  %31 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store %struct.acpi_hest_generic_status* null, %struct.acpi_hest_generic_status** %3, align 8
  br label %37

35:                                               ; preds = %23
  %36 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %8, align 8
  store %struct.acpi_hest_generic_status* %36, %struct.acpi_hest_generic_status** %3, align 8
  br label %37

37:                                               ; preds = %35, %34, %22
  %38 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %3, align 8
  ret %struct.acpi_hest_generic_status* %38
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ELOG_IDX(i32, i32) #1

declare dso_local i32 @ELOG_ENTRY_DATA(i32) #1

declare dso_local i64 @ELOG_ENTRY_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
