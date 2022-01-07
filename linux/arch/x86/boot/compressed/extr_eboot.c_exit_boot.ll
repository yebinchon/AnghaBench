; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_exit_boot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_exit_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { i32, i32 }
%struct.setup_data = type { i32 }
%struct.efi_boot_memmap = type { i64*, i64*, i64*, i64*, i32*, i32** }
%struct.exit_boot_struct = type { i32*, %struct.boot_params* }

@EFI_SUCCESS = common dso_local global i64 0, align 8
@sys_table = common dso_local global i32 0, align 4
@exit_boot_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.boot_params*, i8*)* @exit_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exit_boot(%struct.boot_params* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.boot_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.setup_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.efi_boot_memmap, align 8
  %16 = alloca %struct.exit_boot_struct, align 8
  store %struct.boot_params* %0, %struct.boot_params** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.setup_data* null, %struct.setup_data** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %15, i32 0, i32 5
  store i32** %10, i32*** %17, align 8
  %18 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %15, i32 0, i32 0
  store i64* %6, i64** %18, align 8
  %19 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %15, i32 0, i32 1
  store i64* %8, i64** %19, align 8
  %20 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %15, i32 0, i32 4
  store i32* %14, i32** %20, align 8
  %21 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %15, i32 0, i32 2
  store i64* %7, i64** %21, align 8
  %22 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %15, i32 0, i32 3
  store i64* %9, i64** %22, align 8
  %23 = load %struct.boot_params*, %struct.boot_params** %4, align 8
  %24 = getelementptr inbounds %struct.exit_boot_struct, %struct.exit_boot_struct* %16, i32 0, i32 1
  store %struct.boot_params* %23, %struct.boot_params** %24, align 8
  %25 = load %struct.boot_params*, %struct.boot_params** %4, align 8
  %26 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.exit_boot_struct, %struct.exit_boot_struct* %16, i32 0, i32 0
  store i32* %26, i32** %27, align 8
  %28 = load %struct.boot_params*, %struct.boot_params** %4, align 8
  %29 = call i64 @allocate_e820(%struct.boot_params* %28, %struct.setup_data** %11, i32* %12)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @EFI_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %3, align 8
  br label %59

35:                                               ; preds = %2
  %36 = load i32, i32* @sys_table, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @exit_boot_func, align 4
  %39 = call i64 @efi_exit_boot_services(i32 %36, i8* %37, %struct.efi_boot_memmap* %15, %struct.exit_boot_struct* %16, i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @EFI_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %3, align 8
  br label %59

45:                                               ; preds = %35
  %46 = load %struct.boot_params*, %struct.boot_params** %4, align 8
  %47 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %46, i32 0, i32 0
  store i32 32768, i32* %47, align 4
  %48 = load %struct.boot_params*, %struct.boot_params** %4, align 8
  %49 = load %struct.setup_data*, %struct.setup_data** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @setup_e820(%struct.boot_params* %48, %struct.setup_data* %49, i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @EFI_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i64, i64* %13, align 8
  store i64 %56, i64* %3, align 8
  br label %59

57:                                               ; preds = %45
  %58 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %57, %55, %43, %33
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i64 @allocate_e820(%struct.boot_params*, %struct.setup_data**, i32*) #1

declare dso_local i64 @efi_exit_boot_services(i32, i8*, %struct.efi_boot_memmap*, %struct.exit_boot_struct*, i32) #1

declare dso_local i64 @setup_e820(%struct.boot_params*, %struct.setup_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
