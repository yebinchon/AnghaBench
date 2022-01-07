; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-mmp2.c_mmp2_axi_periph_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-mmp2.c_mmp2_axi_periph_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mmp2_clk_unit = type { i64, %struct.mmp_clk_unit }
%struct.mmp_clk_unit = type { i32 }
%struct.clk = type { i32 }

@APMU_SDH0 = common dso_local global i64 0, align 8
@sdh_mix_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"sdh_mix_clk\00", align 1
@sdh_parent_names = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@sdh_lock = common dso_local global i32 0, align 4
@APMU_CCIC0 = common dso_local global i64 0, align 8
@ccic0_mix_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"ccic0_mix_clk\00", align 1
@ccic_parent_names = common dso_local global i32 0, align 4
@ccic0_lock = common dso_local global i32 0, align 4
@MMP2_CLK_CCIC0_MIX = common dso_local global i32 0, align 4
@APMU_CCIC1 = common dso_local global i64 0, align 8
@ccic1_mix_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"ccic1_mix_clk\00", align 1
@ccic1_lock = common dso_local global i32 0, align 4
@MMP2_CLK_CCIC1_MIX = common dso_local global i32 0, align 4
@apmu_mux_clks = common dso_local global i32 0, align 4
@apmu_div_clks = common dso_local global i32 0, align 4
@apmu_gate_clks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp2_clk_unit*)* @mmp2_axi_periph_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp2_axi_periph_clk_init(%struct.mmp2_clk_unit* %0) #0 {
  %2 = alloca %struct.mmp2_clk_unit*, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.mmp_clk_unit*, align 8
  store %struct.mmp2_clk_unit* %0, %struct.mmp2_clk_unit** %2, align 8
  %5 = load %struct.mmp2_clk_unit*, %struct.mmp2_clk_unit** %2, align 8
  %6 = getelementptr inbounds %struct.mmp2_clk_unit, %struct.mmp2_clk_unit* %5, i32 0, i32 1
  store %struct.mmp_clk_unit* %6, %struct.mmp_clk_unit** %4, align 8
  %7 = load %struct.mmp2_clk_unit*, %struct.mmp2_clk_unit** %2, align 8
  %8 = getelementptr inbounds %struct.mmp2_clk_unit, %struct.mmp2_clk_unit* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @APMU_SDH0, align 8
  %11 = add nsw i64 %9, %10
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdh_mix_config, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* @sdh_parent_names, align 4
  %13 = load i32, i32* @sdh_parent_names, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %16 = call %struct.clk* @mmp_clk_register_mix(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, i32 %15, %struct.TYPE_7__* @sdh_mix_config, i32* @sdh_lock)
  store %struct.clk* %16, %struct.clk** %3, align 8
  %17 = load %struct.mmp2_clk_unit*, %struct.mmp2_clk_unit** %2, align 8
  %18 = getelementptr inbounds %struct.mmp2_clk_unit, %struct.mmp2_clk_unit* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @APMU_CCIC0, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ccic0_mix_config, i32 0, i32 0, i32 0), align 8
  %22 = load i32, i32* @ccic_parent_names, align 4
  %23 = load i32, i32* @ccic_parent_names, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %26 = call %struct.clk* @mmp_clk_register_mix(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %24, i32 %25, %struct.TYPE_7__* @ccic0_mix_config, i32* @ccic0_lock)
  store %struct.clk* %26, %struct.clk** %3, align 8
  %27 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %28 = load i32, i32* @MMP2_CLK_CCIC0_MIX, align 4
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = call i32 @mmp_clk_add(%struct.mmp_clk_unit* %27, i32 %28, %struct.clk* %29)
  %31 = load %struct.mmp2_clk_unit*, %struct.mmp2_clk_unit** %2, align 8
  %32 = getelementptr inbounds %struct.mmp2_clk_unit, %struct.mmp2_clk_unit* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @APMU_CCIC1, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ccic1_mix_config, i32 0, i32 0, i32 0), align 8
  %36 = load i32, i32* @ccic_parent_names, align 4
  %37 = load i32, i32* @ccic_parent_names, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %40 = call %struct.clk* @mmp_clk_register_mix(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %38, i32 %39, %struct.TYPE_7__* @ccic1_mix_config, i32* @ccic1_lock)
  store %struct.clk* %40, %struct.clk** %3, align 8
  %41 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %42 = load i32, i32* @MMP2_CLK_CCIC1_MIX, align 4
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  %44 = call i32 @mmp_clk_add(%struct.mmp_clk_unit* %41, i32 %42, %struct.clk* %43)
  %45 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %46 = load i32, i32* @apmu_mux_clks, align 4
  %47 = load %struct.mmp2_clk_unit*, %struct.mmp2_clk_unit** %2, align 8
  %48 = getelementptr inbounds %struct.mmp2_clk_unit, %struct.mmp2_clk_unit* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @apmu_mux_clks, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = call i32 @mmp_register_mux_clks(%struct.mmp_clk_unit* %45, i32 %46, i64 %49, i32 %51)
  %53 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %54 = load i32, i32* @apmu_div_clks, align 4
  %55 = load %struct.mmp2_clk_unit*, %struct.mmp2_clk_unit** %2, align 8
  %56 = getelementptr inbounds %struct.mmp2_clk_unit, %struct.mmp2_clk_unit* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @apmu_div_clks, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @mmp_register_div_clks(%struct.mmp_clk_unit* %53, i32 %54, i64 %57, i32 %59)
  %61 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %4, align 8
  %62 = load i32, i32* @apmu_gate_clks, align 4
  %63 = load %struct.mmp2_clk_unit*, %struct.mmp2_clk_unit** %2, align 8
  %64 = getelementptr inbounds %struct.mmp2_clk_unit, %struct.mmp2_clk_unit* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @apmu_gate_clks, align 4
  %67 = call i32 @ARRAY_SIZE(i32 %66)
  %68 = call i32 @mmp_register_gate_clks(%struct.mmp_clk_unit* %61, i32 %62, i64 %65, i32 %67)
  ret void
}

declare dso_local %struct.clk* @mmp_clk_register_mix(i32*, i8*, i32, i32, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mmp_clk_add(%struct.mmp_clk_unit*, i32, %struct.clk*) #1

declare dso_local i32 @mmp_register_mux_clks(%struct.mmp_clk_unit*, i32, i64, i32) #1

declare dso_local i32 @mmp_register_div_clks(%struct.mmp_clk_unit*, i32, i64, i32) #1

declare dso_local i32 @mmp_register_gate_clks(%struct.mmp_clk_unit*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
