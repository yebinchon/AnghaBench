; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_exit_boot_func.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_exit_boot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_boot_memmap = type { i64*, i32*, i32*, i32* }
%struct.exit_boot_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }

@EFI64_LOADER_SIGNATURE = common dso_local global i8* null, align 8
@EFI32_LOADER_SIGNATURE = common dso_local global i8* null, align 8
@EFI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.efi_boot_memmap*, i8*)* @exit_boot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exit_boot_func(i32* %0, %struct.efi_boot_memmap* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efi_boot_memmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.exit_boot_struct*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.efi_boot_memmap* %1, %struct.efi_boot_memmap** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.exit_boot_struct*
  store %struct.exit_boot_struct* %10, %struct.exit_boot_struct** %8, align 8
  %11 = call i64 (...) @efi_is_64bit()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** @EFI64_LOADER_SIGNATURE, align 8
  br label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** @EFI32_LOADER_SIGNATURE, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i8* [ %14, %13 ], [ %16, %15 ]
  store i8* %18, i8** %7, align 8
  %19 = load %struct.exit_boot_struct*, %struct.exit_boot_struct** %8, align 8
  %20 = getelementptr inbounds %struct.exit_boot_struct, %struct.exit_boot_struct* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 7
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @memcpy(i32* %22, i8* %23, i32 4)
  %25 = load i32*, i32** %4, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = load %struct.exit_boot_struct*, %struct.exit_boot_struct** %8, align 8
  %28 = getelementptr inbounds %struct.exit_boot_struct, %struct.exit_boot_struct* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %26, i64* %30, align 8
  %31 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %5, align 8
  %32 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.exit_boot_struct*, %struct.exit_boot_struct** %8, align 8
  %36 = getelementptr inbounds %struct.exit_boot_struct, %struct.exit_boot_struct* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  store i32 %34, i32* %38, align 8
  %39 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %5, align 8
  %40 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.exit_boot_struct*, %struct.exit_boot_struct** %8, align 8
  %44 = getelementptr inbounds %struct.exit_boot_struct, %struct.exit_boot_struct* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  store i32 %42, i32* %46, align 4
  %47 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %5, align 8
  %48 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.exit_boot_struct*, %struct.exit_boot_struct** %8, align 8
  %52 = getelementptr inbounds %struct.exit_boot_struct, %struct.exit_boot_struct* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 %50, i64* %54, align 8
  %55 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %5, align 8
  %56 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.exit_boot_struct*, %struct.exit_boot_struct** %8, align 8
  %60 = getelementptr inbounds %struct.exit_boot_struct, %struct.exit_boot_struct* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* @EFI_SUCCESS, align 4
  ret i32 %63
}

declare dso_local i64 @efi_is_64bit(...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
