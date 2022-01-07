; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_flush_gva_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_mips_flush_gva_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTRS_PER_PMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @kvm_mips_flush_gva_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mips_flush_gva_pmd(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 -1, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @__pmd_offset(i64 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @__pmd_offset(i64 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PTRS_PER_PMD, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp eq i32 %20, %22
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ false, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %68, %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pmd_present(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %68

41:                                               ; preds = %32
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32* @pte_offset(i32* %45, i32 0)
  store i32* %46, i32** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %41
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @kvm_mips_flush_gva_pte(i32* %53, i64 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @pmd_clear(i32* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @pte_free_kernel(i32* null, i32* %64)
  br label %67

66:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %66, %58
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  store i64 0, i64* %5, align 8
  br label %28

71:                                               ; preds = %28
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @__pmd_offset(i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32* @pte_offset(i32*, i32) #1

declare dso_local i64 @kvm_mips_flush_gva_pte(i32*, i64, i64) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @pte_free_kernel(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
