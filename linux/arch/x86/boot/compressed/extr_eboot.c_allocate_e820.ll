; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_allocate_e820.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_allocate_e820.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { i32 }
%struct.setup_data = type { i32 }
%struct.efi_boot_memmap = type { i64*, i64*, i64*, i32*, i32*, i32** }

@sys_table = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.boot_params*, %struct.setup_data**, i64*)* @allocate_e820 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @allocate_e820(%struct.boot_params* %0, %struct.setup_data** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.boot_params*, align 8
  %6 = alloca %struct.setup_data**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.efi_boot_memmap, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.boot_params* %0, %struct.boot_params** %5, align 8
  store %struct.setup_data** %1, %struct.setup_data*** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %11, i32 0, i32 5
  store i32** %12, i32*** %16, align 8
  %17 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %11, i32 0, i32 0
  store i64* %8, i64** %17, align 8
  %18 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %11, i32 0, i32 1
  store i64* %9, i64** %18, align 8
  %19 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %11, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %11, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %11, i32 0, i32 2
  store i64* %10, i64** %21, align 8
  %22 = load i32, i32* @sys_table, align 4
  %23 = call i64 @efi_get_memory_map(i32 %22, %struct.efi_boot_memmap* %11)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @EFI_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %4, align 8
  br label %58

29:                                               ; preds = %3
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = udiv i64 %30, %31
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %35 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ARRAY_SIZE(i32 %36)
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.boot_params*, %struct.boot_params** %5, align 8
  %42 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ARRAY_SIZE(i32 %43)
  %45 = sub i64 %40, %44
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.setup_data**, %struct.setup_data*** %6, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = call i64 @alloc_e820ext(i64 %46, %struct.setup_data** %47, i64* %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @EFI_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i64, i64* %13, align 8
  store i64 %54, i64* %4, align 8
  br label %58

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %29
  %57 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %53, %27
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @efi_get_memory_map(i32, %struct.efi_boot_memmap*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i64 @alloc_e820ext(i64, %struct.setup_data**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
