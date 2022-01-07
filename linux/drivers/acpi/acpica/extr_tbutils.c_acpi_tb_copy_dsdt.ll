; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbutils.c_acpi_tb_copy_dsdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbutils.c_acpi_tb_copy_dsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.acpi_table_desc* }
%struct.acpi_table_desc = type { i32, i32 }
%struct.acpi_table_header = type { i32 }

@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not copy DSDT of length 0x%X\00", align 1
@acpi_gbl_dsdt_index = common dso_local global i64 0, align 8
@ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Forced DSDT copy: length 0x%05X copied locally, original unmapped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_table_header* @acpi_tb_copy_dsdt(i64 %0) #0 {
  %2 = alloca %struct.acpi_table_header*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_table_header*, align 8
  %5 = alloca %struct.acpi_table_desc*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i64 %7
  store %struct.acpi_table_desc* %8, %struct.acpi_table_desc** %5, align 8
  %9 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.acpi_table_header* @ACPI_ALLOCATE(i32 %11)
  store %struct.acpi_table_header* %12, %struct.acpi_table_header** %4, align 8
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %14 = icmp ne %struct.acpi_table_header* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @AE_INFO, align 4
  %17 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ACPI_ERROR(i32 %19)
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %2, align 8
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %23 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(%struct.acpi_table_header* %22, i32 %25, i32 %28)
  %30 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %31 = call i32 @acpi_tb_uninstall_table(%struct.acpi_table_desc* %30)
  %32 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %33 = load i64, i64* @acpi_gbl_dsdt_index, align 8
  %34 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %32, i64 %33
  %35 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %36 = call i32 @ACPI_PTR_TO_PHYSADDR(%struct.acpi_table_header* %35)
  %37 = load i32, i32* @ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL, align 4
  %38 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %39 = call i32 @acpi_tb_init_table_descriptor(%struct.acpi_table_desc* %34, i32 %36, i32 %37, %struct.acpi_table_header* %38)
  %40 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @ACPI_INFO(i8* %44)
  %46 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  store %struct.acpi_table_header* %46, %struct.acpi_table_header** %2, align 8
  br label %47

47:                                               ; preds = %21, %15
  %48 = load %struct.acpi_table_header*, %struct.acpi_table_header** %2, align 8
  ret %struct.acpi_table_header* %48
}

declare dso_local %struct.acpi_table_header* @ACPI_ALLOCATE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @memcpy(%struct.acpi_table_header*, i32, i32) #1

declare dso_local i32 @acpi_tb_uninstall_table(%struct.acpi_table_desc*) #1

declare dso_local i32 @acpi_tb_init_table_descriptor(%struct.acpi_table_desc*, i32, i32, %struct.acpi_table_header*) #1

declare dso_local i32 @ACPI_PTR_TO_PHYSADDR(%struct.acpi_table_header*) #1

declare dso_local i32 @ACPI_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
