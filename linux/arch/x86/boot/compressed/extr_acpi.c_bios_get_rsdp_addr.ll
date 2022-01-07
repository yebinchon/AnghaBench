; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_acpi.c_bios_get_rsdp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_acpi.c_bios_get_rsdp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_EBDA_PTR_LOCATION = common dso_local global i64 0, align 8
@ACPI_EBDA_WINDOW_SIZE = common dso_local global i32 0, align 4
@ACPI_HI_RSDP_WINDOW_BASE = common dso_local global i64 0, align 8
@ACPI_HI_RSDP_WINDOW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bios_get_rsdp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_get_rsdp_addr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = load i64, i64* @ACPI_EBDA_PTR_LOCATION, align 8
  %5 = inttoptr i64 %4 to i64*
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = shl i64 %7, 4
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp ugt i64 %9, 1024
  br i1 %10, label %11, label %23

11:                                               ; preds = %0
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32, i32* @ACPI_EBDA_WINDOW_SIZE, align 4
  %15 = call i32* @scan_mem_for_rsdp(i32* %13, i32 %14)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32*, i32** %3, align 8
  %20 = ptrtoint i32* %19 to i64
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %1, align 4
  br label %35

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %0
  %24 = load i64, i64* @ACPI_HI_RSDP_WINDOW_BASE, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* @ACPI_HI_RSDP_WINDOW_SIZE, align 4
  %27 = call i32* @scan_mem_for_rsdp(i32* %25, i32 %26)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32*, i32** %3, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %1, align 4
  br label %35

34:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %30, %18
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32* @scan_mem_for_rsdp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
