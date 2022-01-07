; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_init_pgtables.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-rpc/extr_ecard.c_ecard_init_pgtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@VM_EXEC = common dso_local global i32 0, align 4
@IO_BASE = common dso_local global i64 0, align 8
@IO_START = common dso_local global i32 0, align 4
@IO_SIZE = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i32 0, align 4
@EASI_BASE = common dso_local global i64 0, align 8
@EASI_START = common dso_local global i32 0, align 4
@EASI_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @ecard_init_pgtables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecard_init_pgtables(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %7 = load i32, i32* @VM_EXEC, align 4
  %8 = call i32 @TLB_FLUSH_VMA(%struct.mm_struct* %6, i32 %7)
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = load i64, i64* @IO_BASE, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32* @pgd_offset(%struct.mm_struct* %10, i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = load i32, i32* @IO_START, align 4
  %16 = call i32* @pgd_offset(%struct.mm_struct* %14, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @IO_SIZE, align 4
  %20 = load i32, i32* @PGDIR_SIZE, align 4
  %21 = sdiv i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memcpy(i32* %17, i32* %18, i32 %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %27 = load i64, i64* @EASI_BASE, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32* @pgd_offset(%struct.mm_struct* %26, i32 %28)
  store i32* %29, i32** %4, align 8
  %30 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %31 = load i32, i32* @EASI_START, align 4
  %32 = call i32* @pgd_offset(%struct.mm_struct* %30, i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @EASI_SIZE, align 4
  %36 = load i32, i32* @PGDIR_SIZE, align 4
  %37 = sdiv i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memcpy(i32* %33, i32* %34, i32 %40)
  %42 = load i32, i32* @IO_START, align 4
  %43 = load i32, i32* @IO_START, align 4
  %44 = load i32, i32* @IO_SIZE, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @flush_tlb_range(%struct.vm_area_struct* %3, i32 %42, i32 %45)
  %47 = load i32, i32* @EASI_START, align 4
  %48 = load i32, i32* @EASI_START, align 4
  %49 = load i32, i32* @EASI_SIZE, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @flush_tlb_range(%struct.vm_area_struct* %3, i32 %47, i32 %50)
  ret void
}

declare dso_local i32 @TLB_FLUSH_VMA(%struct.mm_struct*, i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
