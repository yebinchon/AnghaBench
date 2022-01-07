; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_efi.c_phys_mem_access_prot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_efi.c_phys_mem_access_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFI_MEMORY_WB = common dso_local global i32 0, align 4
@EFI_MEMORY_UC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phys_mem_access_prot(%struct.file* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = shl i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @kern_mem_attribute(i64 %15, i64 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @EFI_MEMORY_WB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @pgprot_cacheable(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %47

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @EFI_MEMORY_UC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pgprot_noncached(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %47

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @efi_mem_attribute(i64 %35, i64 %36)
  %38 = load i32, i32* @EFI_MEMORY_WB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pgprot_cacheable(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pgprot_noncached(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %41, %30, %22
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @kern_mem_attribute(i64, i64) #1

declare dso_local i32 @pgprot_cacheable(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @efi_mem_attribute(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
