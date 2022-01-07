; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_clock.c_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_clock.c_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@clk_vga_clk = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@vga_clk_table = common dso_local global %struct.TYPE_5__* null, align 8
@PM_PLLVGACFG = common dso_local global i32 0, align 4
@PM_PMCR_CFBVGA = common dso_local global i32 0, align 4
@PM_PMCR = common dso_local global i32 0, align 4
@PM_PLLDFCDONE = common dso_local global i32 0, align 4
@PM_PLLDFCDONE_VGADFC = common dso_local global i32 0, align 4
@PM_PCGR = common dso_local global i32 0, align 4
@PM_PCGR_VGACLK = common dso_local global i32 0, align 4
@PM_DIVCFG = common dso_local global i32 0, align 4
@PM_DIVCFG_VGACLK_MASK = common dso_local global i32 0, align 4
@PM_SWRESET = common dso_local global i32 0, align 4
@PM_SWRESET_VGADIV = common dso_local global i32 0, align 4
@PM_DIVSTATUS = common dso_local global i32 0, align 4
@PM_PLLDFCDONE_SYSDFC = common dso_local global i32 0, align 4
@PM_PLLSYSCFG = common dso_local global i32 0, align 4
@PM_PMCR_CFBSYS = common dso_local global i32 0, align 4
@clk_bclk32_clk = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@clk_mclk_clk = common dso_local global %struct.clk zeroinitializer, align 8
@mclk_clk_table = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = icmp eq %struct.clk* %10, @clk_vga_clk
  br i1 %11, label %12, label %115

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %43, %12
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vga_clk_table, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vga_clk_table, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vga_clk_table, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vga_clk_table, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %46

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %15

46:                                               ; preds = %29, %15
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %116

51:                                               ; preds = %46
  %52 = load i32, i32* @PM_PLLVGACFG, align 4
  %53 = call i32 @readl(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %116

58:                                               ; preds = %51
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @PM_PLLVGACFG, align 4
  %62 = call i32 @writel(i32 %60, i32 %61)
  %63 = load i32, i32* @PM_PMCR_CFBVGA, align 4
  %64 = load i32, i32* @PM_PMCR, align 4
  %65 = call i32 @writel(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %73, %58
  %67 = load i32, i32* @PM_PLLDFCDONE, align 4
  %68 = call i32 @readl(i32 %67)
  %69 = load i32, i32* @PM_PLLDFCDONE_VGADFC, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @PM_PLLDFCDONE_VGADFC, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 @udelay(i32 100)
  br label %66

75:                                               ; preds = %66
  %76 = load i32, i32* @PM_PCGR, align 4
  %77 = call i32 @readl(i32 %76)
  %78 = load i32, i32* @PM_PCGR_VGACLK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PM_PCGR, align 4
  %81 = call i32 @writel(i32 %79, i32 %80)
  %82 = load i32, i32* @PM_DIVCFG, align 4
  %83 = call i32 @readl(i32 %82)
  %84 = load i32, i32* @PM_DIVCFG_VGACLK_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @PM_DIVCFG_VGACLK(i64 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* @PM_DIVCFG, align 4
  %91 = call i32 @writel(i32 %89, i32 %90)
  %92 = load i32, i32* @PM_SWRESET, align 4
  %93 = call i32 @readl(i32 %92)
  %94 = load i32, i32* @PM_SWRESET_VGADIV, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @PM_SWRESET, align 4
  %97 = call i32 @writel(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %105, %75
  %99 = load i32, i32* @PM_SWRESET, align 4
  %100 = call i32 @readl(i32 %99)
  %101 = load i32, i32* @PM_SWRESET_VGADIV, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @PM_SWRESET_VGADIV, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 @udelay(i32 100)
  br label %98

107:                                              ; preds = %98
  %108 = load i32, i32* @PM_PCGR, align 4
  %109 = call i32 @readl(i32 %108)
  %110 = load i32, i32* @PM_PCGR_VGACLK, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = load i32, i32* @PM_PCGR, align 4
  %114 = call i32 @writel(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %107, %2
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %57, %49
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @PM_DIVCFG_VGACLK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
