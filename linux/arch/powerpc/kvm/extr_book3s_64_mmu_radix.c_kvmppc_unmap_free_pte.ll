; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_unmap_free_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_unmap_free_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@PTE_INDEX_SIZE = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i32, i32)* @kvmppc_unmap_free_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_unmap_free_pte(%struct.kvm* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @PTE_INDEX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(i32* %14, i32 0, i32 %18)
  br label %50

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %44, %20
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @PTRS_PER_PTE, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @pte_val(i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %44

32:                                               ; preds = %26
  %33 = call i32 @WARN_ON_ONCE(i32 1)
  %34 = load %struct.kvm*, %struct.kvm** %5, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pte_pfn(i32 %37)
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @kvmppc_unmap_pte(%struct.kvm* %34, i32* %35, i32 %40, i32 %41, i32* null, i32 %42)
  br label %44

44:                                               ; preds = %32, %31
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  br label %22

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %49, %13
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @kvmppc_pte_free(i32* %51)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kvmppc_unmap_pte(%struct.kvm*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @kvmppc_pte_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
