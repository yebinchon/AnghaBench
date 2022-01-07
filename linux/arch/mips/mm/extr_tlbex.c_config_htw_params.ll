; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_config_htw_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_config_htw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MIPS_PWFIELD_GDI_MASK = common dso_local global i64 0, align 8
@PGDIR_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_GDI_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_PTI_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_PTI_SHIFT = common dso_local global i64 0, align 8
@CONFIG_PGTABLE_LEVELS = common dso_local global i32 0, align 4
@MIPS_PWFIELD_MDI_MASK = common dso_local global i64 0, align 8
@PMD_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_MDI_SHIFT = common dso_local global i64 0, align 8
@_PAGE_GLOBAL_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_PTEI_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_PTEI_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Unsupported PTEI field value: 0x%lx. HTW will not be enabled\00", align 1
@MIPS_CPU_HTW = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@MIPS_PWSIZE_GDW_SHIFT = common dso_local global i64 0, align 8
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@MIPS_PWSIZE_PTW_SHIFT = common dso_local global i64 0, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@MIPS_PWSIZE_MDW_SHIFT = common dso_local global i64 0, align 8
@CONFIG_64BIT = common dso_local global i32 0, align 4
@MIPS_PWSIZE_PS_MASK = common dso_local global i64 0, align 8
@PTE_T_LOG2 = common dso_local global i64 0, align 8
@PGD_T_LOG2 = common dso_local global i64 0, align 8
@MIPS_PWSIZE_PTEW_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWSIZE_PTEW_MASK = common dso_local global i64 0, align 8
@MIPS_PWCTL_PWEN_SHIFT = common dso_local global i32 0, align 4
@MIPS_PWCTL_XU_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Hardware Page Table Walker enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @config_htw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_htw_params() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i64 (...) @read_c0_pwfield()
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* @MIPS_PWFIELD_GDI_MASK, align 8
  %7 = xor i64 %6, -1
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, %7
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* @PGDIR_SHIFT, align 8
  %11 = load i64, i64* @MIPS_PWFIELD_GDI_SHIFT, align 8
  %12 = shl i64 %10, %11
  %13 = load i64, i64* %1, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* @MIPS_PWFIELD_PTI_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %1, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = load i64, i64* @MIPS_PWFIELD_PTI_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = load i64, i64* %1, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %1, align 8
  %24 = load i32, i32* @CONFIG_PGTABLE_LEVELS, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %36

26:                                               ; preds = %0
  %27 = load i64, i64* @MIPS_PWFIELD_MDI_MASK, align 8
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %1, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* @PMD_SHIFT, align 8
  %32 = load i64, i64* @MIPS_PWFIELD_MDI_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = load i64, i64* %1, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %1, align 8
  br label %36

36:                                               ; preds = %26, %0
  %37 = load i64, i64* @_PAGE_GLOBAL_SHIFT, align 8
  %38 = load i64, i64* @MIPS_PWFIELD_PTEI_SHIFT, align 8
  %39 = shl i64 %37, %38
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %1, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = call i32 @write_c0_pwfield(i64 %43)
  %45 = call i32 (...) @back_to_back_c0_hazard()
  %46 = call i64 (...) @read_c0_pwfield()
  store i64 %46, i64* %1, align 8
  %47 = load i64, i64* %1, align 8
  %48 = load i64, i64* @MIPS_PWFIELD_PTEI_MASK, align 8
  %49 = and i64 %47, %48
  %50 = load i64, i64* @MIPS_PWFIELD_PTEI_SHIFT, align 8
  %51 = shl i64 %49, %50
  %52 = load i64, i64* %3, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %36
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @MIPS_CPU_HTW, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  br label %116

61:                                               ; preds = %36
  %62 = load i32, i32* @PTRS_PER_PGD, align 4
  %63 = call i64 @ilog2(i32 %62)
  %64 = load i64, i64* @MIPS_PWSIZE_GDW_SHIFT, align 8
  %65 = shl i64 %63, %64
  store i64 %65, i64* %2, align 8
  %66 = load i32, i32* @PTRS_PER_PTE, align 4
  %67 = call i64 @ilog2(i32 %66)
  %68 = load i64, i64* @MIPS_PWSIZE_PTW_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = load i64, i64* %2, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %2, align 8
  %72 = load i32, i32* @CONFIG_PGTABLE_LEVELS, align 4
  %73 = icmp sge i32 %72, 3
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load i32, i32* @PTRS_PER_PMD, align 4
  %76 = call i64 @ilog2(i32 %75)
  %77 = load i64, i64* @MIPS_PWSIZE_MDW_SHIFT, align 8
  %78 = shl i64 %76, %77
  %79 = load i64, i64* %2, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %2, align 8
  br label %81

81:                                               ; preds = %74, %61
  %82 = load i32, i32* @CONFIG_64BIT, align 4
  %83 = call i64 @IS_ENABLED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64, i64* @MIPS_PWSIZE_PS_MASK, align 8
  %87 = load i64, i64* %2, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %2, align 8
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i64, i64* @PTE_T_LOG2, align 8
  %91 = load i64, i64* @PGD_T_LOG2, align 8
  %92 = sub i64 %90, %91
  %93 = load i64, i64* @MIPS_PWSIZE_PTEW_SHIFT, align 8
  %94 = shl i64 %92, %93
  %95 = load i64, i64* @MIPS_PWSIZE_PTEW_MASK, align 8
  %96 = and i64 %94, %95
  %97 = load i64, i64* %2, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %2, align 8
  %99 = load i64, i64* %2, align 8
  %100 = call i32 @write_c0_pwsize(i64 %99)
  %101 = call i32 (...) @back_to_back_c0_hazard()
  %102 = load i32, i32* @MIPS_PWCTL_PWEN_SHIFT, align 4
  %103 = shl i32 1, %102
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* @CONFIG_64BIT, align 4
  %105 = call i64 @IS_ENABLED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %89
  %108 = load i32, i32* @MIPS_PWCTL_XU_MASK, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %89
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @write_c0_pwctl(i32 %112)
  %114 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %115 = call i32 (...) @print_htw_config()
  br label %116

116:                                              ; preds = %111, %54
  ret void
}

declare dso_local i64 @read_c0_pwfield(...) #1

declare dso_local i32 @write_c0_pwfield(i64) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @write_c0_pwsize(i64) #1

declare dso_local i32 @write_c0_pwctl(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @print_htw_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
