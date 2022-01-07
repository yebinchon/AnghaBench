; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_page.c_pg_addiu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_page.c_pg_addiu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_64bit_gp_regs = common dso_local global i64 0, align 8
@DADDI_WAR = common dso_local global i64 0, align 8
@T9 = common dso_local global i32 0, align 4
@ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32, i32)* @pg_addiu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_addiu(i32** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* @cpu_has_64bit_gp_regs, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %4
  %12 = load i64, i64* @DADDI_WAR, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = call i64 (...) @r4k_daddiu_bug()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp ugt i32 %18, 32767
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32, i32* @T9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @uasm_rel_hi(i32 %23)
  %25 = call i32 @uasm_i_lui(i32** %21, i32 %22, i32 %24)
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32, i32* @T9, align 4
  %28 = load i32, i32* @T9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @uasm_rel_lo(i32 %29)
  %31 = call i32 @uasm_i_addiu(i32** %26, i32 %27, i32 %28, i32 %30)
  br label %38

32:                                               ; preds = %17
  %33 = load i32**, i32*** %5, align 8
  %34 = load i32, i32* @T9, align 4
  %35 = load i32, i32* @ZERO, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @uasm_i_addiu(i32** %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %20
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @T9, align 4
  %43 = call i32 @uasm_i_daddu(i32** %39, i32 %40, i32 %41, i32 %42)
  br label %71

44:                                               ; preds = %14, %11, %4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ugt i32 %45, 32767
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32**, i32*** %5, align 8
  %49 = load i32, i32* @T9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @uasm_rel_hi(i32 %50)
  %52 = call i32 @uasm_i_lui(i32** %48, i32 %49, i32 %51)
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32, i32* @T9, align 4
  %55 = load i32, i32* @T9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @uasm_rel_lo(i32 %56)
  %58 = call i32 @uasm_i_addiu(i32** %53, i32 %54, i32 %55, i32 %57)
  %59 = load i32**, i32*** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @T9, align 4
  %63 = call i32 @UASM_i_ADDU(i32** %59, i32 %60, i32 %61, i32 %62)
  br label %70

64:                                               ; preds = %44
  %65 = load i32**, i32*** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @UASM_i_ADDIU(i32** %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %47
  br label %71

71:                                               ; preds = %70, %38
  ret void
}

declare dso_local i64 @r4k_daddiu_bug(...) #1

declare dso_local i32 @uasm_i_lui(i32**, i32, i32) #1

declare dso_local i32 @uasm_rel_hi(i32) #1

declare dso_local i32 @uasm_i_addiu(i32**, i32, i32, i32) #1

declare dso_local i32 @uasm_rel_lo(i32) #1

declare dso_local i32 @uasm_i_daddu(i32**, i32, i32, i32) #1

declare dso_local i32 @UASM_i_ADDU(i32**, i32, i32, i32) #1

declare dso_local i32 @UASM_i_ADDIU(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
