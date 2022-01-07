; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_r3000_tlbchange_handler_head.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_r3000_tlbchange_handler_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgd_current = common dso_local global i64 0, align 8
@C0_BADVADDR = common dso_local global i32 0, align 4
@C0_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32)* @build_r3000_tlbchange_handler_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_r3000_tlbchange_handler_head(i32** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @pgd_current, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @C0_BADVADDR, align 4
  %12 = call i32 @uasm_i_mfc0(i32** %9, i32 %10, i32 %11)
  %13 = load i32**, i32*** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @uasm_rel_hi(i64 %15)
  %17 = call i32 @uasm_i_lui(i32** %13, i32 %14, i32 %16)
  %18 = load i32**, i32*** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @uasm_rel_lo(i64 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @uasm_i_lw(i32** %18, i32 %19, i32 %21, i32 %22)
  %24 = load i32**, i32*** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @uasm_i_srl(i32** %24, i32 %25, i32 %26, i32 22)
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @uasm_i_sll(i32** %28, i32 %29, i32 %30, i32 2)
  %32 = load i32**, i32*** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @uasm_i_addu(i32** %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32**, i32*** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @C0_CONTEXT, align 4
  %40 = call i32 @uasm_i_mfc0(i32** %37, i32 %38, i32 %39)
  %41 = load i32**, i32*** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @uasm_i_lw(i32** %41, i32 %42, i32 0, i32 %43)
  %45 = load i32**, i32*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @uasm_i_andi(i32** %45, i32 %46, i32 %47, i32 4092)
  %49 = load i32**, i32*** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @uasm_i_addu(i32** %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32**, i32*** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @uasm_i_lw(i32** %54, i32 %55, i32 0, i32 %56)
  %58 = load i32**, i32*** %4, align 8
  %59 = call i32 @uasm_i_tlbp(i32** %58)
  ret void
}

declare dso_local i32 @uasm_i_mfc0(i32**, i32, i32) #1

declare dso_local i32 @uasm_i_lui(i32**, i32, i32) #1

declare dso_local i32 @uasm_rel_hi(i64) #1

declare dso_local i32 @uasm_i_lw(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_rel_lo(i64) #1

declare dso_local i32 @uasm_i_srl(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_sll(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_addu(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_andi(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_i_tlbp(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
