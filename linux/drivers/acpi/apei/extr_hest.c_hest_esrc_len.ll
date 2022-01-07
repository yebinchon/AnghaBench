; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_hest.c_hest_esrc_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_hest.c_hest_esrc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_header = type { i64 }
%struct.acpi_hest_ia_corrected = type { i32 }
%struct.acpi_hest_ia_machine_check = type { i32 }
%struct.acpi_hest_ia_deferred_check = type { i32 }

@ACPI_HEST_TYPE_RESERVED = common dso_local global i64 0, align 8
@hest_esrc_len_tab = common dso_local global i32* null, align 8
@ACPI_HEST_TYPE_IA32_CORRECTED_CHECK = common dso_local global i64 0, align 8
@ACPI_HEST_TYPE_IA32_CHECK = common dso_local global i64 0, align 8
@ACPI_HEST_TYPE_IA32_DEFERRED_CHECK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_hest_header*)* @hest_esrc_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hest_esrc_len(%struct.acpi_hest_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_hest_header*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_hest_ia_corrected*, align 8
  %7 = alloca %struct.acpi_hest_ia_machine_check*, align 8
  %8 = alloca %struct.acpi_hest_ia_deferred_check*, align 8
  store %struct.acpi_hest_header* %0, %struct.acpi_hest_header** %3, align 8
  %9 = load %struct.acpi_hest_header*, %struct.acpi_hest_header** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_hest_header, %struct.acpi_hest_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ACPI_HEST_TYPE_RESERVED, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load i32*, i32** @hest_esrc_len_tab, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @ACPI_HEST_TYPE_IA32_CORRECTED_CHECK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.acpi_hest_header*, %struct.acpi_hest_header** %3, align 8
  %26 = bitcast %struct.acpi_hest_header* %25 to %struct.acpi_hest_ia_corrected*
  store %struct.acpi_hest_ia_corrected* %26, %struct.acpi_hest_ia_corrected** %6, align 8
  %27 = load %struct.acpi_hest_ia_corrected*, %struct.acpi_hest_ia_corrected** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_hest_ia_corrected, %struct.acpi_hest_ia_corrected* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 4, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %64

34:                                               ; preds = %16
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @ACPI_HEST_TYPE_IA32_CHECK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.acpi_hest_header*, %struct.acpi_hest_header** %3, align 8
  %40 = bitcast %struct.acpi_hest_header* %39 to %struct.acpi_hest_ia_machine_check*
  store %struct.acpi_hest_ia_machine_check* %40, %struct.acpi_hest_ia_machine_check** %7, align 8
  %41 = load %struct.acpi_hest_ia_machine_check*, %struct.acpi_hest_ia_machine_check** %7, align 8
  %42 = getelementptr inbounds %struct.acpi_hest_ia_machine_check, %struct.acpi_hest_ia_machine_check* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 4, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %63

48:                                               ; preds = %34
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @ACPI_HEST_TYPE_IA32_DEFERRED_CHECK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.acpi_hest_header*, %struct.acpi_hest_header** %3, align 8
  %54 = bitcast %struct.acpi_hest_header* %53 to %struct.acpi_hest_ia_deferred_check*
  store %struct.acpi_hest_ia_deferred_check* %54, %struct.acpi_hest_ia_deferred_check** %8, align 8
  %55 = load %struct.acpi_hest_ia_deferred_check*, %struct.acpi_hest_ia_deferred_check** %8, align 8
  %56 = getelementptr inbounds %struct.acpi_hest_ia_deferred_check, %struct.acpi_hest_ia_deferred_check* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = add i64 4, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %52, %48
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63, %24
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, -1
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %15
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
