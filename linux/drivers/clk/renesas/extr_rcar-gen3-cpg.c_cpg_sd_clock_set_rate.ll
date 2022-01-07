; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_sd_clock_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_sd_clock_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sd_clock = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPG_SD_STP_MASK = common dso_local global i32 0, align 4
@CPG_SD_FC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @cpg_sd_clock_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpg_sd_clock_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sd_clock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.sd_clock* @to_sd_clock(%struct.clk_hw* %11)
  store %struct.sd_clock* %12, %struct.sd_clock** %8, align 8
  %13 = load %struct.sd_clock*, %struct.sd_clock** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @cpg_sd_clock_calc_div(%struct.sd_clock* %13, i64 %14, i64 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %36, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.sd_clock*, %struct.sd_clock** %8, align 8
  %20 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.sd_clock*, %struct.sd_clock** %8, align 8
  %26 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %24, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %17

39:                                               ; preds = %34, %17
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.sd_clock*, %struct.sd_clock** %8, align 8
  %42 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %72

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.sd_clock*, %struct.sd_clock** %8, align 8
  %51 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sd_clock*, %struct.sd_clock** %8, align 8
  %53 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CPG_SD_STP_MASK, align 4
  %57 = load i32, i32* @CPG_SD_FC_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.sd_clock*, %struct.sd_clock** %8, align 8
  %60 = getelementptr inbounds %struct.sd_clock, %struct.sd_clock* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CPG_SD_STP_MASK, align 4
  %68 = load i32, i32* @CPG_SD_FC_MASK, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = call i32 @cpg_reg_modify(i32 %55, i32 %58, i32 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %48, %45
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.sd_clock* @to_sd_clock(%struct.clk_hw*) #1

declare dso_local i32 @cpg_sd_clock_calc_div(%struct.sd_clock*, i64, i64) #1

declare dso_local i32 @cpg_reg_modify(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
