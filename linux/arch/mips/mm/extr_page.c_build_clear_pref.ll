; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_page.c_build_clear_pref.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_page.c_build_clear_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pref_bias_clear_store = common dso_local global i64 0, align 8
@pref_dst_mode = common dso_local global i32 0, align 4
@A0 = common dso_local global i32 0, align 4
@cache_line_size = common dso_local global i32 0, align 4
@half_clear_loop_size = common dso_local global i32 0, align 4
@cpu_has_cache_cdex_s = common dso_local global i64 0, align 8
@Create_Dirty_Excl_SD = common dso_local global i32 0, align 4
@cpu_has_cache_cdex_p = common dso_local global i64 0, align 8
@R4600_V1_HIT_CACHEOP_WAR = common dso_local global i64 0, align 8
@R4600_V2_HIT_CACHEOP_WAR = common dso_local global i64 0, align 8
@ZERO = common dso_local global i32 0, align 4
@AT = common dso_local global i32 0, align 4
@Create_Dirty_Excl_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32)* @build_clear_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_clear_pref(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (...) @cache_line_mask()
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %75

10:                                               ; preds = %2
  %11 = load i64, i64* @pref_bias_clear_store, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32**, i32*** %3, align 8
  %15 = load i32, i32* @pref_dst_mode, align 4
  %16 = load i64, i64* @pref_bias_clear_store, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i32, i32* @A0, align 4
  %21 = call i32 @_uasm_i_pref(i32** %14, i32 %15, i64 %19, i32 %20)
  br label %75

22:                                               ; preds = %10
  %23 = load i32, i32* @cache_line_size, align 4
  %24 = load i32, i32* @half_clear_loop_size, align 4
  %25 = shl i32 %24, 1
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %22
  %28 = load i64, i64* @cpu_has_cache_cdex_s, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32**, i32*** %3, align 8
  %32 = load i32, i32* @Create_Dirty_Excl_SD, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @A0, align 4
  %35 = call i32 @uasm_i_cache(i32** %31, i32 %32, i32 %33, i32 %34)
  br label %73

36:                                               ; preds = %27
  %37 = load i64, i64* @cpu_has_cache_cdex_p, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load i64, i64* @R4600_V1_HIT_CACHEOP_WAR, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = call i64 (...) @cpu_is_r4600_v1_x()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32**, i32*** %3, align 8
  %47 = call i32 @uasm_i_nop(i32** %46)
  %48 = load i32**, i32*** %3, align 8
  %49 = call i32 @uasm_i_nop(i32** %48)
  %50 = load i32**, i32*** %3, align 8
  %51 = call i32 @uasm_i_nop(i32** %50)
  %52 = load i32**, i32*** %3, align 8
  %53 = call i32 @uasm_i_nop(i32** %52)
  br label %54

54:                                               ; preds = %45, %42, %39
  %55 = load i64, i64* @R4600_V2_HIT_CACHEOP_WAR, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = call i64 (...) @cpu_is_r4600_v2_x()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32**, i32*** %3, align 8
  %62 = load i32, i32* @ZERO, align 4
  %63 = load i32, i32* @ZERO, align 4
  %64 = load i32, i32* @AT, align 4
  %65 = call i32 @uasm_i_lw(i32** %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %57, %54
  %67 = load i32**, i32*** %3, align 8
  %68 = load i32, i32* @Create_Dirty_Excl_D, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @A0, align 4
  %71 = call i32 @uasm_i_cache(i32** %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %36
  br label %73

73:                                               ; preds = %72, %30
  br label %74

74:                                               ; preds = %73, %22
  br label %75

75:                                               ; preds = %9, %74, %13
  ret void
}

declare dso_local i32 @cache_line_mask(...) #1

declare dso_local i32 @_uasm_i_pref(i32**, i32, i64, i32) #1

declare dso_local i32 @uasm_i_cache(i32**, i32, i32, i32) #1

declare dso_local i64 @cpu_is_r4600_v1_x(...) #1

declare dso_local i32 @uasm_i_nop(i32**) #1

declare dso_local i64 @cpu_is_r4600_v2_x(...) #1

declare dso_local i32 @uasm_i_lw(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
