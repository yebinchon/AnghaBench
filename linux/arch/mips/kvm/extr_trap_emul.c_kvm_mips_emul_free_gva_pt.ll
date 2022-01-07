; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_emul_free_gva_pt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_emul_free_gva_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USER_PTRS_PER_PGD = common dso_local global i32 0, align 4
@PGDIR_SHIFT = common dso_local global i64 0, align 8
@PTRS_PER_PUD = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i64 0, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @kvm_mips_emul_free_gva_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_mips_emul_free_gva_pt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 2147483648, i64* %3, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %112, %1
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @USER_PTRS_PER_PGD, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @pgd_none(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %112

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @PGDIR_SHIFT, align 8
  %30 = shl i64 %28, %29
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp uge i64 %31, 2147483648
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %115

34:                                               ; preds = %26
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32* @pud_offset(i32* %38, i32 0)
  store i32* %39, i32** %7, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %106, %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @PTRS_PER_PUD, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %109

44:                                               ; preds = %40
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @pud_none(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %106

53:                                               ; preds = %44
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @PUD_SHIFT, align 8
  %58 = shl i64 %56, %57
  %59 = or i64 %54, %58
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp uge i64 %60, 2147483648
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %109

63:                                               ; preds = %53
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32* @pmd_offset(i32* %67, i32 0)
  store i32* %68, i32** %8, align 8
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %100, %63
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @PTRS_PER_PMD, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @pmd_none(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %100

82:                                               ; preds = %73
  %83 = load i64, i64* %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @PMD_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = or i64 %83, %87
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  %90 = icmp uge i64 %89, 2147483648
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %103

92:                                               ; preds = %82
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32* @pte_offset(i32* %96, i32 0)
  store i32* %97, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @pte_free_kernel(i32* null, i32* %98)
  br label %100

100:                                              ; preds = %92, %81
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %69

103:                                              ; preds = %91, %69
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @pmd_free(i32* null, i32* %104)
  br label %106

106:                                              ; preds = %103, %52
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %40

109:                                              ; preds = %62, %40
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @pud_free(i32* null, i32* %110)
  br label %112

112:                                              ; preds = %109, %25
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %13

115:                                              ; preds = %33, %13
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @pgd_free(i32* null, i32* %116)
  ret void
}

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i32) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32* @pte_offset(i32*, i32) #1

declare dso_local i32 @pte_free_kernel(i32*, i32*) #1

declare dso_local i32 @pmd_free(i32*, i32*) #1

declare dso_local i32 @pud_free(i32*, i32*) #1

declare dso_local i32 @pgd_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
