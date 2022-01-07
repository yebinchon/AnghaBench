; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utaddress.c_acpi_ut_delete_address_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utaddress.c_acpi_ut_delete_address_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_address_range = type { %struct.acpi_address_range* }

@ACPI_ADDRESS_RANGE_MAX = common dso_local global i32 0, align 4
@acpi_gbl_address_range_list = common dso_local global %struct.acpi_address_range** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_delete_address_lists() #0 {
  %1 = alloca %struct.acpi_address_range*, align 8
  %2 = alloca %struct.acpi_address_range*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ACPI_ADDRESS_RANGE_MAX, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = load %struct.acpi_address_range**, %struct.acpi_address_range*** @acpi_gbl_address_range_list, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.acpi_address_range*, %struct.acpi_address_range** %9, i64 %11
  %13 = load %struct.acpi_address_range*, %struct.acpi_address_range** %12, align 8
  store %struct.acpi_address_range* %13, %struct.acpi_address_range** %1, align 8
  br label %14

14:                                               ; preds = %17, %8
  %15 = load %struct.acpi_address_range*, %struct.acpi_address_range** %1, align 8
  %16 = icmp ne %struct.acpi_address_range* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.acpi_address_range*, %struct.acpi_address_range** %1, align 8
  store %struct.acpi_address_range* %18, %struct.acpi_address_range** %2, align 8
  %19 = load %struct.acpi_address_range*, %struct.acpi_address_range** %2, align 8
  %20 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %19, i32 0, i32 0
  %21 = load %struct.acpi_address_range*, %struct.acpi_address_range** %20, align 8
  store %struct.acpi_address_range* %21, %struct.acpi_address_range** %1, align 8
  %22 = load %struct.acpi_address_range*, %struct.acpi_address_range** %2, align 8
  %23 = call i32 @ACPI_FREE(%struct.acpi_address_range* %22)
  br label %14

24:                                               ; preds = %14
  %25 = load %struct.acpi_address_range**, %struct.acpi_address_range*** @acpi_gbl_address_range_list, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.acpi_address_range*, %struct.acpi_address_range** %25, i64 %27
  store %struct.acpi_address_range* null, %struct.acpi_address_range** %28, align 8
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ACPI_FREE(%struct.acpi_address_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
