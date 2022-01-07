; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_power.c_save_core_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_power.c_save_core_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AU1000_SYS_FREQCTRL0 = common dso_local global i32 0, align 4
@sleep_sys_clocks = common dso_local global i8** null, align 8
@AU1000_SYS_FREQCTRL1 = common dso_local global i32 0, align 4
@AU1000_SYS_CLKSRC = common dso_local global i32 0, align 4
@AU1000_SYS_CPUPLL = common dso_local global i32 0, align 4
@AU1000_SYS_AUXPLL = common dso_local global i32 0, align 4
@AU1000_SYS_PINFUNC = common dso_local global i32 0, align 4
@sleep_sys_pinfunc = common dso_local global i8* null, align 8
@AU1000_MEM_STCFG0 = common dso_local global i32 0, align 4
@sleep_static_memctlr = common dso_local global i32** null, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @save_core_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_core_regs() #0 {
  %1 = load i32, i32* @AU1000_SYS_FREQCTRL0, align 4
  %2 = call i8* @alchemy_rdsys(i32 %1)
  %3 = load i8**, i8*** @sleep_sys_clocks, align 8
  %4 = getelementptr inbounds i8*, i8** %3, i64 0
  store i8* %2, i8** %4, align 8
  %5 = load i32, i32* @AU1000_SYS_FREQCTRL1, align 4
  %6 = call i8* @alchemy_rdsys(i32 %5)
  %7 = load i8**, i8*** @sleep_sys_clocks, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* @AU1000_SYS_CLKSRC, align 4
  %10 = call i8* @alchemy_rdsys(i32 %9)
  %11 = load i8**, i8*** @sleep_sys_clocks, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 2
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @AU1000_SYS_CPUPLL, align 4
  %14 = call i8* @alchemy_rdsys(i32 %13)
  %15 = load i8**, i8*** @sleep_sys_clocks, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 3
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @AU1000_SYS_AUXPLL, align 4
  %18 = call i8* @alchemy_rdsys(i32 %17)
  %19 = load i8**, i8*** @sleep_sys_clocks, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 4
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @AU1000_SYS_PINFUNC, align 4
  %22 = call i8* @alchemy_rdsys(i32 %21)
  store i8* %22, i8** @sleep_sys_pinfunc, align 8
  %23 = load i32, i32* @AU1000_MEM_STCFG0, align 4
  %24 = call i32 @alchemy_rdsmem(i32 %23)
  %25 = load i32**, i32*** @sleep_static_memctlr, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @AU1000_MEM_STTIME0, align 4
  %30 = call i32 @alchemy_rdsmem(i32 %29)
  %31 = load i32**, i32*** @sleep_static_memctlr, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @AU1000_MEM_STADDR0, align 4
  %36 = call i32 @alchemy_rdsmem(i32 %35)
  %37 = load i32**, i32*** @sleep_static_memctlr, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @AU1000_MEM_STCFG1, align 4
  %42 = call i32 @alchemy_rdsmem(i32 %41)
  %43 = load i32**, i32*** @sleep_static_memctlr, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @AU1000_MEM_STTIME1, align 4
  %48 = call i32 @alchemy_rdsmem(i32 %47)
  %49 = load i32**, i32*** @sleep_static_memctlr, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @AU1000_MEM_STADDR1, align 4
  %54 = call i32 @alchemy_rdsmem(i32 %53)
  %55 = load i32**, i32*** @sleep_static_memctlr, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @AU1000_MEM_STCFG2, align 4
  %60 = call i32 @alchemy_rdsmem(i32 %59)
  %61 = load i32**, i32*** @sleep_static_memctlr, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @AU1000_MEM_STTIME2, align 4
  %66 = call i32 @alchemy_rdsmem(i32 %65)
  %67 = load i32**, i32*** @sleep_static_memctlr, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @AU1000_MEM_STADDR2, align 4
  %72 = call i32 @alchemy_rdsmem(i32 %71)
  %73 = load i32**, i32*** @sleep_static_memctlr, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @AU1000_MEM_STCFG3, align 4
  %78 = call i32 @alchemy_rdsmem(i32 %77)
  %79 = load i32**, i32*** @sleep_static_memctlr, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @AU1000_MEM_STTIME3, align 4
  %84 = call i32 @alchemy_rdsmem(i32 %83)
  %85 = load i32**, i32*** @sleep_static_memctlr, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @AU1000_MEM_STADDR3, align 4
  %90 = call i32 @alchemy_rdsmem(i32 %89)
  %91 = load i32**, i32*** @sleep_static_memctlr, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 3
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %90, i32* %94, align 4
  ret void
}

declare dso_local i8* @alchemy_rdsys(i32) #1

declare dso_local i32 @alchemy_rdsmem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
