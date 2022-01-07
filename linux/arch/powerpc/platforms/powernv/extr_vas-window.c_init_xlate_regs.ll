; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_init_xlate_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_init_xlate_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32 }

@VAS_XLATE_MSR_HV = common dso_local global i32 0, align 4
@VAS_XLATE_MSR_SF = common dso_local global i32 0, align 4
@VAS_XLATE_MSR_DR = common dso_local global i32 0, align 4
@VAS_XLATE_MSR_PR = common dso_local global i32 0, align 4
@XLATE_MSR = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@VAS_XLATE_LPCR_PAGE_SIZE = common dso_local global i32 0, align 4
@VAS_XLATE_LPCR_ISL = common dso_local global i32 0, align 4
@LPCR_ISL = common dso_local global i32 0, align 4
@VAS_XLATE_LPCR_TC = common dso_local global i32 0, align 4
@LPCR_TC = common dso_local global i32 0, align 4
@VAS_XLATE_LPCR_SC = common dso_local global i32 0, align 4
@XLATE_LPCR = common dso_local global i32 0, align 4
@VAS_XLATE_MODE = common dso_local global i32 0, align 4
@XLATE_CTL = common dso_local global i32 0, align 4
@VAS_AMR = common dso_local global i32 0, align 4
@SPRN_AMR = common dso_local global i32 0, align 4
@AMR = common dso_local global i32 0, align 4
@VAS_SEIDR = common dso_local global i32 0, align 4
@SEIDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vas_window*, i32)* @init_xlate_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_xlate_regs(%struct.vas_window* %0, i32 %1) #0 {
  %3 = alloca %struct.vas_window*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vas_window* %0, %struct.vas_window** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @VAS_XLATE_MSR_HV, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @SET_FIELD(i32 %7, i32 %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @VAS_XLATE_MSR_SF, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @SET_FIELD(i32 %10, i32 %11, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @VAS_XLATE_MSR_DR, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @SET_FIELD(i32 %16, i32 %17, i32 1)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @VAS_XLATE_MSR_PR, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @SET_FIELD(i32 %19, i32 %20, i32 1)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %24 = load i32, i32* @XLATE_MSR, align 4
  %25 = call i32 @VREG(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @write_hvwc_reg(%struct.vas_window* %23, i32 %25, i32 %26)
  %28 = load i32, i32* @SPRN_LPCR, align 4
  %29 = call i32 @mfspr(i32 %28)
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %30 = load i32, i32* @VAS_XLATE_LPCR_PAGE_SIZE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SET_FIELD(i32 %30, i32 %31, i32 5)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @VAS_XLATE_LPCR_ISL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @LPCR_ISL, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @SET_FIELD(i32 %33, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @VAS_XLATE_LPCR_TC, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @LPCR_TC, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @SET_FIELD(i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @VAS_XLATE_LPCR_SC, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @SET_FIELD(i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %49 = load i32, i32* @XLATE_LPCR, align 4
  %50 = call i32 @VREG(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @write_hvwc_reg(%struct.vas_window* %48, i32 %50, i32 %51)
  store i32 0, i32* %6, align 4
  %53 = load i32, i32* @VAS_XLATE_MODE, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 (...) @radix_enabled()
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 3, i32 2
  %59 = call i32 @SET_FIELD(i32 %53, i32 %54, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %61 = load i32, i32* @XLATE_CTL, align 4
  %62 = call i32 @VREG(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @write_hvwc_reg(%struct.vas_window* %60, i32 %62, i32 %63)
  store i32 0, i32* %6, align 4
  %65 = load i32, i32* @VAS_AMR, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SPRN_AMR, align 4
  %68 = call i32 @mfspr(i32 %67)
  %69 = call i32 @SET_FIELD(i32 %65, i32 %66, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %71 = load i32, i32* @AMR, align 4
  %72 = call i32 @VREG(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @write_hvwc_reg(%struct.vas_window* %70, i32 %72, i32 %73)
  store i32 0, i32* %6, align 4
  %75 = load i32, i32* @VAS_SEIDR, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @SET_FIELD(i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  %79 = load i32, i32* @SEIDR, align 4
  %80 = call i32 @VREG(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @write_hvwc_reg(%struct.vas_window* %78, i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @write_hvwc_reg(%struct.vas_window*, i32, i32) #1

declare dso_local i32 @VREG(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i64 @radix_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
