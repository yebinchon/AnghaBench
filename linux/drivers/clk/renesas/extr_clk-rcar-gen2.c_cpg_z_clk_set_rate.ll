; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_clk-rcar-gen2.c_cpg_z_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_clk-rcar-gen2.c_cpg_z_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cpg_z_clk = type { i32, i32 }

@CPG_FRQCRB_KICK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CPG_FRQCRC_ZFC_MASK = common dso_local global i32 0, align 4
@CPG_FRQCRC_ZFC_SHIFT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @cpg_z_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpg_z_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cpg_z_clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.cpg_z_clk* @to_z_clk(%struct.clk_hw* %13)
  store %struct.cpg_z_clk* %14, %struct.cpg_z_clk** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = mul nsw i32 %16, 32
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @div_u64(i32 %17, i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @clamp(i32 %20, i32 1, i32 32)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %23 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @readl(i32 %24)
  %26 = load i32, i32* @CPG_FRQCRB_KICK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %84

32:                                               ; preds = %3
  %33 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %34 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @readl(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @CPG_FRQCRC_ZFC_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub i32 32, %41
  %43 = load i32, i32* @CPG_FRQCRC_ZFC_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %49 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @writel(i32 %47, i32 %50)
  %52 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %53 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @readl(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @CPG_FRQCRB_KICK, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %61 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @writel(i32 %59, i32 %62)
  store i32 1000, i32* %12, align 4
  br label %64

64:                                               ; preds = %78, %32
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %69 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @readl(i32 %70)
  %72 = load i32, i32* @CPG_FRQCRB_KICK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %84

76:                                               ; preds = %67
  %77 = call i32 (...) @cpu_relax()
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %12, align 4
  br label %64

81:                                               ; preds = %64
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %75, %29
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.cpg_z_clk* @to_z_clk(%struct.clk_hw*) #1

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
