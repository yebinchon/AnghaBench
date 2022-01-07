; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_radix_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_radix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADIX_PTE_INDEX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"kvm-pte\00", align 1
@pte_ctor = common dso_local global i32 0, align 4
@kvm_pte_cache = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RADIX_PMD_INDEX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"kvm-pmd\00", align 1
@pmd_ctor = common dso_local global i32 0, align 4
@kvm_pmd_cache = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_radix_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @RADIX_PTE_INDEX_SIZE, align 4
  %4 = zext i32 %3 to i64
  %5 = shl i64 8, %4
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i32, i32* @pte_ctor, align 4
  %9 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %6, i64 %7, i32 0, i32 %8)
  store i8* %9, i8** @kvm_pte_cache, align 8
  %10 = load i8*, i8** @kvm_pte_cache, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %31

15:                                               ; preds = %0
  %16 = load i32, i32* @RADIX_PMD_INDEX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 8, %17
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load i32, i32* @pmd_ctor, align 4
  %22 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %19, i64 %20, i32 0, i32 %21)
  store i8* %22, i8** @kvm_pmd_cache, align 8
  %23 = load i8*, i8** @kvm_pmd_cache, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load i8*, i8** @kvm_pte_cache, align 8
  %27 = call i32 @kmem_cache_destroy(i8* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %1, align 4
  br label %31

30:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %25, %12
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i8* @kmem_cache_create(i8*, i64, i64, i32, i32) #1

declare dso_local i32 @kmem_cache_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
