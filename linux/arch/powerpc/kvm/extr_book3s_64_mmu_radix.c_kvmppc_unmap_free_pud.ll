; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_unmap_free_pud.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_unmap_free_pud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@PTRS_PER_PUD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32*, i32)* @kvmppc_unmap_free_pud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_unmap_free_pud(%struct.kvm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %8, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %39, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @PTRS_PER_PUD, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pud_present(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %39

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pud_is_leaf(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @pud_clear(i32* %27)
  br label %38

29:                                               ; preds = %21
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @pmd_offset(i32* %30, i32 0)
  store i32* %31, i32** %9, align 8
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @kvmppc_unmap_free_pmd(%struct.kvm* %32, i32* %33, i32 1, i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @pud_clear(i32* %36)
  br label %38

38:                                               ; preds = %29, %26
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  br label %11

44:                                               ; preds = %11
  %45 = load %struct.kvm*, %struct.kvm** %4, align 8
  %46 = getelementptr inbounds %struct.kvm, %struct.kvm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @pud_free(i32 %47, i32* %48)
  ret void
}

declare dso_local i32 @pud_present(i32) #1

declare dso_local i64 @pud_is_leaf(i32) #1

declare dso_local i32 @pud_clear(i32*) #1

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i32 @kvmppc_unmap_free_pmd(%struct.kvm*, i32*, i32, i32) #1

declare dso_local i32 @pud_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
