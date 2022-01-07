; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_power.c_restore_core_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_power.c_restore_core_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sleep_sys_clocks = common dso_local global i32* null, align 8
@AU1000_SYS_FREQCTRL0 = common dso_local global i32 0, align 4
@AU1000_SYS_FREQCTRL1 = common dso_local global i32 0, align 4
@AU1000_SYS_CLKSRC = common dso_local global i32 0, align 4
@AU1000_SYS_AUXPLL = common dso_local global i32 0, align 4
@AU1000_SYS_CPUPLL = common dso_local global i32 0, align 4
@sleep_sys_pinfunc = common dso_local global i32 0, align 4
@AU1000_SYS_PINFUNC = common dso_local global i32 0, align 4
@sleep_static_memctlr = common dso_local global i32** null, align 8
@AU1000_MEM_STCFG0 = common dso_local global i32 0, align 4
@AU1000_MEM_STTIME0 = common dso_local global i32 0, align 4
@AU1000_MEM_STADDR0 = common dso_local global i32 0, align 4
@AU1000_MEM_STCFG1 = common dso_local global i32 0, align 4
@AU1000_MEM_STTIME1 = common dso_local global i32 0, align 4
@AU1000_MEM_STADDR1 = common dso_local global i32 0, align 4
@AU1000_MEM_STCFG2 = common dso_local global i32 0, align 4
@AU1000_MEM_STTIME2 = common dso_local global i32 0, align 4
@AU1000_MEM_STADDR2 = common dso_local global i32 0, align 4
@AU1000_MEM_STCFG3 = common dso_local global i32 0, align 4
@AU1000_MEM_STTIME3 = common dso_local global i32 0, align 4
@AU1000_MEM_STADDR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @restore_core_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_core_regs() #0 {
  %1 = load i32*, i32** @sleep_sys_clocks, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @AU1000_SYS_FREQCTRL0, align 4
  %5 = call i32 @alchemy_wrsys(i32 %3, i32 %4)
  %6 = load i32*, i32** @sleep_sys_clocks, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AU1000_SYS_FREQCTRL1, align 4
  %10 = call i32 @alchemy_wrsys(i32 %8, i32 %9)
  %11 = load i32*, i32** @sleep_sys_clocks, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AU1000_SYS_CLKSRC, align 4
  %15 = call i32 @alchemy_wrsys(i32 %13, i32 %14)
  %16 = load i32*, i32** @sleep_sys_clocks, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AU1000_SYS_AUXPLL, align 4
  %20 = call i32 @alchemy_wrsys(i32 %18, i32 %19)
  %21 = call i32 (...) @au1xxx_cpu_has_pll_wo()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %0
  %24 = load i32*, i32** @sleep_sys_clocks, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AU1000_SYS_CPUPLL, align 4
  %28 = call i32 @alchemy_wrsys(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %0
  %30 = load i32, i32* @sleep_sys_pinfunc, align 4
  %31 = load i32, i32* @AU1000_SYS_PINFUNC, align 4
  %32 = call i32 @alchemy_wrsys(i32 %30, i32 %31)
  %33 = load i32**, i32*** @sleep_static_memctlr, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AU1000_MEM_STCFG0, align 4
  %39 = call i32 @alchemy_wrsmem(i32 %37, i32 %38)
  %40 = load i32**, i32*** @sleep_static_memctlr, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AU1000_MEM_STTIME0, align 4
  %46 = call i32 @alchemy_wrsmem(i32 %44, i32 %45)
  %47 = load i32**, i32*** @sleep_static_memctlr, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AU1000_MEM_STADDR0, align 4
  %53 = call i32 @alchemy_wrsmem(i32 %51, i32 %52)
  %54 = load i32**, i32*** @sleep_static_memctlr, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AU1000_MEM_STCFG1, align 4
  %60 = call i32 @alchemy_wrsmem(i32 %58, i32 %59)
  %61 = load i32**, i32*** @sleep_static_memctlr, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AU1000_MEM_STTIME1, align 4
  %67 = call i32 @alchemy_wrsmem(i32 %65, i32 %66)
  %68 = load i32**, i32*** @sleep_static_memctlr, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AU1000_MEM_STADDR1, align 4
  %74 = call i32 @alchemy_wrsmem(i32 %72, i32 %73)
  %75 = load i32**, i32*** @sleep_static_memctlr, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AU1000_MEM_STCFG2, align 4
  %81 = call i32 @alchemy_wrsmem(i32 %79, i32 %80)
  %82 = load i32**, i32*** @sleep_static_memctlr, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AU1000_MEM_STTIME2, align 4
  %88 = call i32 @alchemy_wrsmem(i32 %86, i32 %87)
  %89 = load i32**, i32*** @sleep_static_memctlr, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @AU1000_MEM_STADDR2, align 4
  %95 = call i32 @alchemy_wrsmem(i32 %93, i32 %94)
  %96 = load i32**, i32*** @sleep_static_memctlr, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AU1000_MEM_STCFG3, align 4
  %102 = call i32 @alchemy_wrsmem(i32 %100, i32 %101)
  %103 = load i32**, i32*** @sleep_static_memctlr, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AU1000_MEM_STTIME3, align 4
  %109 = call i32 @alchemy_wrsmem(i32 %107, i32 %108)
  %110 = load i32**, i32*** @sleep_static_memctlr, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AU1000_MEM_STADDR3, align 4
  %116 = call i32 @alchemy_wrsmem(i32 %114, i32 %115)
  ret void
}

declare dso_local i32 @alchemy_wrsys(i32, i32) #1

declare dso_local i32 @au1xxx_cpu_has_pll_wo(...) #1

declare dso_local i32 @alchemy_wrsmem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
