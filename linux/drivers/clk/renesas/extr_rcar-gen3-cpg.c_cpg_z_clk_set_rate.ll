; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_z_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_z_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cpg_z_clk = type { i64, i32, i32, i32 }

@CPG_FRQCRB_KICK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
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
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.cpg_z_clk* @to_z_clk(%struct.clk_hw* %11)
  store %struct.cpg_z_clk* %12, %struct.cpg_z_clk** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = mul i64 %13, 32
  %15 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %16 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 %14, %17
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @DIV64_U64_ROUND_CLOSEST(i64 %18, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @clamp(i32 %21, i32 1, i32 32)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %24 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @readl(i32 %25)
  %27 = load i32, i32* @CPG_FRQCRB_KICK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %77

33:                                               ; preds = %3
  %34 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %35 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %38 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sub i32 32, %40
  %42 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %43 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @__ffs(i32 %44)
  %46 = shl i32 %41, %45
  %47 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %48 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %46, %49
  %51 = call i32 @cpg_reg_modify(i32 %36, i32 %39, i32 %50)
  %52 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %53 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CPG_FRQCRB_KICK, align 4
  %56 = call i32 @cpg_reg_modify(i32 %54, i32 0, i32 %55)
  store i32 1000, i32* %10, align 4
  br label %57

57:                                               ; preds = %71, %33
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %8, align 8
  %62 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @readl(i32 %63)
  %65 = load i32, i32* @CPG_FRQCRB_KICK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %77

69:                                               ; preds = %60
  %70 = call i32 (...) @cpu_relax()
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %10, align 4
  br label %57

74:                                               ; preds = %57
  %75 = load i32, i32* @ETIMEDOUT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %68, %30
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.cpg_z_clk* @to_z_clk(%struct.clk_hw*) #1

declare dso_local i32 @DIV64_U64_ROUND_CLOSEST(i64, i64) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @cpg_reg_modify(i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
