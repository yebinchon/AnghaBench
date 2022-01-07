; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_print_htw_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlbex.c_print_htw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [90 x i8] c"PWField (0x%0*lx): GDI: 0x%02lx  UDI: 0x%02lx  MDI: 0x%02lx  PTI: 0x%02lx  PTEI: 0x%02lx\0A\00", align 1
@MIPS_PWFIELD_GDI_MASK = common dso_local global i64 0, align 8
@MIPS_PWFIELD_GDI_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_UDI_MASK = common dso_local global i64 0, align 8
@MIPS_PWFIELD_UDI_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_MDI_MASK = common dso_local global i64 0, align 8
@MIPS_PWFIELD_MDI_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_PTI_MASK = common dso_local global i64 0, align 8
@MIPS_PWFIELD_PTI_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWFIELD_PTEI_MASK = common dso_local global i64 0, align 8
@MIPS_PWFIELD_PTEI_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [101 x i8] c"PWSize  (0x%0*lx): PS: 0x%lx  GDW: 0x%02lx  UDW: 0x%02lx  MDW: 0x%02lx  PTW: 0x%02lx  PTEW: 0x%02lx\0A\00", align 1
@MIPS_PWSIZE_PS_MASK = common dso_local global i64 0, align 8
@MIPS_PWSIZE_PS_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWSIZE_GDW_MASK = common dso_local global i64 0, align 8
@MIPS_PWSIZE_GDW_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWSIZE_UDW_MASK = common dso_local global i64 0, align 8
@MIPS_PWSIZE_UDW_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWSIZE_MDW_MASK = common dso_local global i64 0, align 8
@MIPS_PWSIZE_MDW_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWSIZE_PTW_MASK = common dso_local global i64 0, align 8
@MIPS_PWSIZE_PTW_SHIFT = common dso_local global i64 0, align 8
@MIPS_PWSIZE_PTEW_MASK = common dso_local global i64 0, align 8
@MIPS_PWSIZE_PTEW_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [94 x i8] c"PWCtl   (0x%x): PWEn: 0x%x  XK: 0x%x  XS: 0x%x  XU: 0x%x  DPH: 0x%x  HugePg: 0x%x  Psn: 0x%x\0A\00", align 1
@MIPS_PWCTL_PWEN_MASK = common dso_local global i32 0, align 4
@MIPS_PWCTL_PWEN_SHIFT = common dso_local global i32 0, align 4
@MIPS_PWCTL_XK_MASK = common dso_local global i32 0, align 4
@MIPS_PWCTL_XK_SHIFT = common dso_local global i32 0, align 4
@MIPS_PWCTL_XS_MASK = common dso_local global i32 0, align 4
@MIPS_PWCTL_XS_SHIFT = common dso_local global i32 0, align 4
@MIPS_PWCTL_XU_MASK = common dso_local global i32 0, align 4
@MIPS_PWCTL_XU_SHIFT = common dso_local global i32 0, align 4
@MIPS_PWCTL_DPH_MASK = common dso_local global i32 0, align 4
@MIPS_PWCTL_DPH_SHIFT = common dso_local global i32 0, align 4
@MIPS_PWCTL_HUGEPG_MASK = common dso_local global i32 0, align 4
@MIPS_PWCTL_HUGEPG_SHIFT = common dso_local global i32 0, align 4
@MIPS_PWCTL_PSN_MASK = common dso_local global i32 0, align 4
@MIPS_PWCTL_PSN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_htw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_htw_config() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 16, i32* %3, align 4
  %4 = call i64 (...) @read_c0_pwfield()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @MIPS_PWFIELD_GDI_MASK, align 8
  %9 = and i64 %7, %8
  %10 = load i64, i64* @MIPS_PWFIELD_GDI_SHIFT, align 8
  %11 = lshr i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @MIPS_PWFIELD_UDI_MASK, align 8
  %15 = and i64 %13, %14
  %16 = load i64, i64* @MIPS_PWFIELD_UDI_SHIFT, align 8
  %17 = lshr i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @MIPS_PWFIELD_MDI_MASK, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* @MIPS_PWFIELD_MDI_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @MIPS_PWFIELD_PTI_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* @MIPS_PWFIELD_PTI_SHIFT, align 8
  %29 = lshr i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @MIPS_PWFIELD_PTEI_MASK, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @MIPS_PWFIELD_PTEI_SHIFT, align 8
  %35 = lshr i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 16, i32 %6, i32 %12, i32 %18, i32 %24, i32 %30, i32 %36)
  %38 = call i64 (...) @read_c0_pwsize()
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @MIPS_PWSIZE_PS_MASK, align 8
  %43 = and i64 %41, %42
  %44 = load i64, i64* @MIPS_PWSIZE_PS_SHIFT, align 8
  %45 = lshr i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %1, align 8
  %48 = load i64, i64* @MIPS_PWSIZE_GDW_MASK, align 8
  %49 = and i64 %47, %48
  %50 = load i64, i64* @MIPS_PWSIZE_GDW_SHIFT, align 8
  %51 = lshr i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @MIPS_PWSIZE_UDW_MASK, align 8
  %55 = and i64 %53, %54
  %56 = load i64, i64* @MIPS_PWSIZE_UDW_SHIFT, align 8
  %57 = lshr i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @MIPS_PWSIZE_MDW_MASK, align 8
  %61 = and i64 %59, %60
  %62 = load i64, i64* @MIPS_PWSIZE_MDW_SHIFT, align 8
  %63 = lshr i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %1, align 8
  %66 = load i64, i64* @MIPS_PWSIZE_PTW_MASK, align 8
  %67 = and i64 %65, %66
  %68 = load i64, i64* @MIPS_PWSIZE_PTW_SHIFT, align 8
  %69 = lshr i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* @MIPS_PWSIZE_PTEW_MASK, align 8
  %73 = and i64 %71, %72
  %74 = load i64, i64* @MIPS_PWSIZE_PTEW_SHIFT, align 8
  %75 = lshr i64 %73, %74
  %76 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 16, i32 %40, i32 %46, i32 %52, i32 %58, i32 %64, i32 %70, i64 %75)
  %77 = call i32 (...) @read_c0_pwctl()
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @MIPS_PWCTL_PWEN_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @MIPS_PWCTL_PWEN_SHIFT, align 4
  %83 = lshr i32 %81, %82
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @MIPS_PWCTL_XK_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @MIPS_PWCTL_XK_SHIFT, align 4
  %88 = lshr i32 %86, %87
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @MIPS_PWCTL_XS_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @MIPS_PWCTL_XS_SHIFT, align 4
  %93 = lshr i32 %91, %92
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @MIPS_PWCTL_XU_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @MIPS_PWCTL_XU_SHIFT, align 4
  %98 = lshr i32 %96, %97
  %99 = load i32, i32* %2, align 4
  %100 = load i32, i32* @MIPS_PWCTL_DPH_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @MIPS_PWCTL_DPH_SHIFT, align 4
  %103 = lshr i32 %101, %102
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @MIPS_PWCTL_HUGEPG_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @MIPS_PWCTL_HUGEPG_SHIFT, align 4
  %108 = lshr i32 %106, %107
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @MIPS_PWCTL_PSN_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @MIPS_PWCTL_PSN_SHIFT, align 4
  %113 = lshr i32 %111, %112
  %114 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %83, i32 %88, i32 %93, i32 %98, i32 %103, i32 %108, i32 %113)
  ret void
}

declare dso_local i64 @read_c0_pwfield(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i64 @read_c0_pwsize(...) #1

declare dso_local i32 @read_c0_pwctl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
