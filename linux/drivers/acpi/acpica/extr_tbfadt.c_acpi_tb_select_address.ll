; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbfadt.c_acpi_tb_select_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbfadt.c_acpi_tb_select_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"32/64X %s address mismatch in FADT: 0x%8.8X/0x%8.8X%8.8X, using %u-bit address\00", align 1
@acpi_gbl_use32_bit_fadt_addresses = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64)* @acpi_tb_select_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_tb_select_address(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %4, align 8
  br label %37

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load i32, i32* @AE_INFO, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @ACPI_FORMAT_UINT64(i64 %23)
  %25 = load i64, i64* @acpi_gbl_use32_bit_fadt_addresses, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 32, i32 64
  %29 = call i32 @ACPI_BIOS_WARNING(i32 %28)
  %30 = load i64, i64* @acpi_gbl_use32_bit_fadt_addresses, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %4, align 8
  br label %37

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %15, %12
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %35, %32, %10
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i32 @ACPI_BIOS_WARNING(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
