; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_enable_runtime_gpe_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_enable_runtime_gpe_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { i32 }
%struct.acpi_gpe_block_info = type { i64, %struct.acpi_gpe_register_info* }
%struct.acpi_gpe_register_info = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_enable_runtime_gpe_block(%struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_block_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %6 = alloca %struct.acpi_gpe_block_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_gpe_register_info*, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_xrupt_info** %5, align 8
  store %struct.acpi_gpe_block_info* %1, %struct.acpi_gpe_block_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %47, %3
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %15 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %12
  %19 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %19, i32 0, i32 1
  %21 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %21, i64 %22
  store %struct.acpi_gpe_register_info* %23, %struct.acpi_gpe_register_info** %10, align 8
  %24 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %10, align 8
  %25 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %47

29:                                               ; preds = %18
  %30 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %10, align 8
  %31 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %10, align 8
  %34 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %10, align 8
  %40 = call i32 @acpi_hw_gpe_enable_write(i32 %38, %struct.acpi_gpe_register_info* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %12

50:                                               ; preds = %12
  %51 = load i32, i32* @AE_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @acpi_hw_gpe_enable_write(i32, %struct.acpi_gpe_register_info*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
