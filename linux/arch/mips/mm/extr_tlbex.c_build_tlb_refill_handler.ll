; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_tlb_refill_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_build_tlb_refill_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@build_tlb_refill_handler.run_once = internal global i32 0, align 4
@CONFIG_XPA = common dso_local global i32 0, align 4
@cpu_has_rixi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Kernels supporting XPA currently require CPUs with RIXI\00", align 1
@cpu_has_3kex = common dso_local global i64 0, align 8
@cpu_has_ldpte = common dso_local global i64 0, align 8
@scratch_reg = common dso_local global i32 0, align 4
@cpu_has_xpa = common dso_local global i64 0, align 8
@cpu_has_htw = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PGDIR_SHIFT = common dso_local global i32 0, align 4
@PGD_ORDER = common dso_local global i32 0, align 4
@check_for_high_segbits = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_tlb_refill_handler() #0 {
  %1 = load i32, i32* @CONFIG_XPA, align 4
  %2 = call i64 @IS_ENABLED(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @cpu_has_rixi, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %4, %0
  %10 = call i32 (...) @output_pgtable_bits_defines()
  %11 = call i32 (...) @check_pabits()
  %12 = load i64, i64* @cpu_has_3kex, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i32, i32* @build_tlb_refill_handler.run_once, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = call i32 (...) @build_setup_pgd()
  %19 = call i32 (...) @build_r3000_tlb_refill_handler()
  %20 = call i32 (...) @build_r3000_tlb_load_handler()
  %21 = call i32 (...) @build_r3000_tlb_store_handler()
  %22 = call i32 (...) @build_r3000_tlb_modify_handler()
  %23 = call i32 (...) @flush_tlb_handlers()
  %24 = load i32, i32* @build_tlb_refill_handler.run_once, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @build_tlb_refill_handler.run_once, align 4
  br label %26

26:                                               ; preds = %17, %14
  br label %61

27:                                               ; preds = %9
  %28 = load i64, i64* @cpu_has_ldpte, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @setup_pw()
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* @build_tlb_refill_handler.run_once, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = call i32 (...) @allocate_kscratch()
  store i32 %36, i32* @scratch_reg, align 4
  %37 = call i32 (...) @build_setup_pgd()
  %38 = call i32 (...) @build_r4000_tlb_load_handler()
  %39 = call i32 (...) @build_r4000_tlb_store_handler()
  %40 = call i32 (...) @build_r4000_tlb_modify_handler()
  %41 = load i64, i64* @cpu_has_ldpte, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 (...) @build_loongson3_tlb_refill_handler()
  br label %47

45:                                               ; preds = %35
  %46 = call i32 (...) @build_r4000_tlb_refill_handler()
  br label %47

47:                                               ; preds = %45, %43
  %48 = call i32 (...) @flush_tlb_handlers()
  %49 = load i32, i32* @build_tlb_refill_handler.run_once, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @build_tlb_refill_handler.run_once, align 4
  br label %51

51:                                               ; preds = %47, %32
  %52 = load i64, i64* @cpu_has_xpa, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @config_xpa_params()
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i64, i64* @cpu_has_htw, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @config_htw_params()
  br label %61

61:                                               ; preds = %26, %59, %56
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @output_pgtable_bits_defines(...) #1

declare dso_local i32 @check_pabits(...) #1

declare dso_local i32 @build_setup_pgd(...) #1

declare dso_local i32 @build_r3000_tlb_refill_handler(...) #1

declare dso_local i32 @build_r3000_tlb_load_handler(...) #1

declare dso_local i32 @build_r3000_tlb_store_handler(...) #1

declare dso_local i32 @build_r3000_tlb_modify_handler(...) #1

declare dso_local i32 @flush_tlb_handlers(...) #1

declare dso_local i32 @setup_pw(...) #1

declare dso_local i32 @allocate_kscratch(...) #1

declare dso_local i32 @build_r4000_tlb_load_handler(...) #1

declare dso_local i32 @build_r4000_tlb_store_handler(...) #1

declare dso_local i32 @build_r4000_tlb_modify_handler(...) #1

declare dso_local i32 @build_loongson3_tlb_refill_handler(...) #1

declare dso_local i32 @build_r4000_tlb_refill_handler(...) #1

declare dso_local i32 @config_xpa_params(...) #1

declare dso_local i32 @config_htw_params(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
