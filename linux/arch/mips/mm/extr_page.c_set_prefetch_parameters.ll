; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_page.c_set_prefetch_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_page.c_set_prefetch_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cpu_has_64bit_gp_regs = common dso_local global i64 0, align 8
@cpu_has_64bit_zero_reg = common dso_local global i64 0, align 8
@clear_word_size = common dso_local global i32 0, align 4
@copy_word_size = common dso_local global i32 0, align 4
@cpu_has_prefetch = common dso_local global i64 0, align 8
@cache_line_size = common dso_local global i32 0, align 4
@pref_bias_copy_load = common dso_local global i32 0, align 4
@pref_bias_clear_store = common dso_local global i32 0, align 4
@pref_bias_copy_store = common dso_local global i32 0, align 4
@Pref_LoadStreamed = common dso_local global i32 0, align 4
@pref_src_mode = common dso_local global i32 0, align 4
@Pref_StoreStreamed = common dso_local global i32 0, align 4
@pref_dst_mode = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@Pref_Load = common dso_local global i32 0, align 4
@Pref_Store = common dso_local global i32 0, align 4
@cpu_has_mips_r6 = common dso_local global i32 0, align 4
@Pref_PrepareForStore = common dso_local global i32 0, align 4
@cpu_has_cache_cdex_s = common dso_local global i64 0, align 8
@cpu_has_cache_cdex_p = common dso_local global i64 0, align 8
@half_clear_loop_size = common dso_local global i8* null, align 8
@half_copy_loop_size = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_prefetch_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_prefetch_parameters() #0 {
  %1 = load i64, i64* @cpu_has_64bit_gp_regs, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @cpu_has_64bit_zero_reg, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  store i32 8, i32* @clear_word_size, align 4
  br label %8

7:                                                ; preds = %3
  store i32 4, i32* @clear_word_size, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i64, i64* @cpu_has_64bit_gp_regs, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 8, i32* @copy_word_size, align 4
  br label %13

12:                                               ; preds = %8
  store i32 4, i32* @copy_word_size, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i64, i64* @cpu_has_prefetch, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = call i32 (...) @cpu_dcache_line_size()
  store i32 %17, i32* @cache_line_size, align 4
  %18 = call i32 (...) @current_cpu_type()
  switch i32 %18, label %40 [
    i32 131, label %19
    i32 128, label %19
    i32 135, label %20
    i32 134, label %20
    i32 133, label %20
    i32 132, label %20
    i32 130, label %23
    i32 129, label %23
    i32 136, label %37
  ]

19:                                               ; preds = %16, %16
  store i32 256, i32* @pref_bias_copy_load, align 4
  br label %49

20:                                               ; preds = %16, %16, %16, %16
  store i32 512, i32* @pref_bias_clear_store, align 4
  store i32 256, i32* @pref_bias_copy_load, align 4
  store i32 256, i32* @pref_bias_copy_store, align 4
  %21 = load i32, i32* @Pref_LoadStreamed, align 4
  store i32 %21, i32* @pref_src_mode, align 4
  %22 = load i32, i32* @Pref_StoreStreamed, align 4
  store i32 %22, i32* @pref_dst_mode, align 4
  br label %49

23:                                               ; preds = %16, %16
  store i32 128, i32* @pref_bias_clear_store, align 4
  store i32 128, i32* @pref_bias_copy_load, align 4
  store i32 128, i32* @pref_bias_copy_store, align 4
  %24 = call i32 (...) @current_cpu_type()
  %25 = icmp eq i32 %24, 130
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %28 = and i32 %27, 255
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @Pref_Load, align 4
  store i32 %31, i32* @pref_src_mode, align 4
  %32 = load i32, i32* @Pref_Store, align 4
  store i32 %32, i32* @pref_dst_mode, align 4
  br label %36

33:                                               ; preds = %26, %23
  %34 = load i32, i32* @Pref_LoadStreamed, align 4
  store i32 %34, i32* @pref_src_mode, align 4
  %35 = load i32, i32* @Pref_StoreStreamed, align 4
  store i32 %35, i32* @pref_dst_mode, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %49

37:                                               ; preds = %16
  store i32 128, i32* @pref_bias_clear_store, align 4
  store i32 128, i32* @pref_bias_copy_load, align 4
  store i32 128, i32* @pref_bias_copy_store, align 4
  %38 = load i32, i32* @Pref_Load, align 4
  store i32 %38, i32* @pref_src_mode, align 4
  %39 = load i32, i32* @Pref_Store, align 4
  store i32 %39, i32* @pref_dst_mode, align 4
  br label %49

40:                                               ; preds = %16
  store i32 128, i32* @pref_bias_clear_store, align 4
  store i32 256, i32* @pref_bias_copy_load, align 4
  store i32 128, i32* @pref_bias_copy_store, align 4
  %41 = load i32, i32* @Pref_LoadStreamed, align 4
  store i32 %41, i32* @pref_src_mode, align 4
  %42 = load i32, i32* @cpu_has_mips_r6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @Pref_StoreStreamed, align 4
  store i32 %45, i32* @pref_dst_mode, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @Pref_PrepareForStore, align 4
  store i32 %47, i32* @pref_dst_mode, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %37, %36, %20, %19
  br label %62

50:                                               ; preds = %13
  %51 = load i64, i64* @cpu_has_cache_cdex_s, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @cpu_scache_line_size()
  store i32 %54, i32* @cache_line_size, align 4
  br label %61

55:                                               ; preds = %50
  %56 = load i64, i64* @cpu_has_cache_cdex_p, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (...) @cpu_dcache_line_size()
  store i32 %59, i32* @cache_line_size, align 4
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %53
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* @clear_word_size, align 4
  %64 = mul nsw i32 16, %63
  %65 = load i32, i32* @cache_line_size, align 4
  %66 = ashr i32 %65, 1
  %67 = load i32, i32* @clear_word_size, align 4
  %68 = mul nsw i32 4, %67
  %69 = call i32 @max(i32 %66, i32 %68)
  %70 = call i8* @min(i32 %64, i32 %69)
  store i8* %70, i8** @half_clear_loop_size, align 8
  %71 = load i32, i32* @copy_word_size, align 4
  %72 = mul nsw i32 16, %71
  %73 = load i32, i32* @cache_line_size, align 4
  %74 = ashr i32 %73, 1
  %75 = load i32, i32* @copy_word_size, align 4
  %76 = mul nsw i32 4, %75
  %77 = call i32 @max(i32 %74, i32 %76)
  %78 = call i8* @min(i32 %72, i32 %77)
  store i8* %78, i8** @half_copy_loop_size, align 8
  ret void
}

declare dso_local i32 @cpu_dcache_line_size(...) #1

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i32 @cpu_scache_line_size(...) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
