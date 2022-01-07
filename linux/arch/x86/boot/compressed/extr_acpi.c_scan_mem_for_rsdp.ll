; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_acpi.c_scan_mem_for_rsdp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_acpi.c_scan_mem_for_rsdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_rsdp = type { i32, i32 }

@ACPI_RSDP_CHECKSUM_LENGTH = common dso_local global i32 0, align 4
@ACPI_RSDP_XCHECKSUM_LENGTH = common dso_local global i32 0, align 4
@ACPI_RSDP_SCAN_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @scan_mem_for_rsdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @scan_mem_for_rsdp(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_table_rsdp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %7, align 8
  br label %14

14:                                               ; preds = %48, %2
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ult i32* %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to %struct.acpi_table_rsdp*
  store %struct.acpi_table_rsdp* %20, %struct.acpi_table_rsdp** %6, align 8
  %21 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %6, align 8
  %22 = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ACPI_VALIDATE_RSDP_SIG(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %48

27:                                               ; preds = %18
  %28 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %6, align 8
  %29 = bitcast %struct.acpi_table_rsdp* %28 to i32*
  %30 = load i32, i32* @ACPI_RSDP_CHECKSUM_LENGTH, align 4
  %31 = call i64 @compute_checksum(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %48

34:                                               ; preds = %27
  %35 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %6, align 8
  %36 = getelementptr inbounds %struct.acpi_table_rsdp, %struct.acpi_table_rsdp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.acpi_table_rsdp*, %struct.acpi_table_rsdp** %6, align 8
  %41 = bitcast %struct.acpi_table_rsdp* %40 to i32*
  %42 = load i32, i32* @ACPI_RSDP_XCHECKSUM_LENGTH, align 4
  %43 = call i64 @compute_checksum(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %48

46:                                               ; preds = %39, %34
  %47 = load i32*, i32** %7, align 8
  store i32* %47, i32** %3, align 8
  br label %54

48:                                               ; preds = %45, %33, %26
  %49 = load i32, i32* @ACPI_RSDP_SCAN_STEP, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %7, align 8
  br label %14

53:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i32 @ACPI_VALIDATE_RSDP_SIG(i32) #1

declare dso_local i64 @compute_checksum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
