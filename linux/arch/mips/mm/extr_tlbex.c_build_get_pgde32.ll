; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_get_pgde32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_get_pgde32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgd_reg = common dso_local global i32 0, align 4
@C0_BADVADDR = common dso_local global i32 0, align 4
@pgd_current = common dso_local global i64 0, align 8
@PGDIR_SHIFT = common dso_local global i32 0, align 4
@PGD_T_LOG2 = common dso_local global i32 0, align 4
@SMP_CPUID_PTRSHIFT = common dso_local global i32 0, align 4
@SMP_CPUID_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_get_pgde32(i32** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @pgd_reg, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i32**, i32*** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (...) @c0_kscratch()
  %14 = load i32, i32* @pgd_reg, align 4
  %15 = call i32 (i32**, i32, i32, ...) @uasm_i_mfc0(i32** %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32**, i32*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @C0_BADVADDR, align 4
  %19 = call i32 (i32**, i32, i32, ...) @uasm_i_mfc0(i32** %16, i32 %17, i32 %18)
  br label %36

20:                                               ; preds = %3
  %21 = load i64, i64* @pgd_current, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i32**, i32*** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @UASM_i_LA_mostly(i32** %22, i32 %23, i64 %24)
  %26 = load i32**, i32*** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @C0_BADVADDR, align 4
  %29 = call i32 (i32**, i32, i32, ...) @uasm_i_mfc0(i32** %26, i32 %27, i32 %28)
  %30 = load i32**, i32*** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @uasm_rel_lo(i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @uasm_i_lw(i32** %30, i32 %31, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %20, %10
  %37 = load i32**, i32*** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PGDIR_SHIFT, align 4
  %41 = call i32 @uasm_i_srl(i32** %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32**, i32*** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PGD_T_LOG2, align 4
  %46 = call i32 @uasm_i_sll(i32** %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32**, i32*** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @uasm_i_addu(i32** %47, i32 %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @uasm_i_mfc0(i32**, i32, i32, ...) #1

declare dso_local i32 @c0_kscratch(...) #1

declare dso_local i32 @UASM_i_LA_mostly(i32**, i32, i64) #1

declare dso_local i32 @uasm_i_lw(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_rel_lo(i64) #1

declare dso_local i32 @uasm_i_srl(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_sll(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_addu(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
