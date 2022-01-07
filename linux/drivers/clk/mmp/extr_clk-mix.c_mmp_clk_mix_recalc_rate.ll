; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_mix_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_mix_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_mix = type { i64, %struct.mmp_clk_mix_reg_info, i64 }
%struct.mmp_clk_mix_reg_info = type { i32, i32, i32, i32 }

@MMP_CLK_MIX_TYPE_V1 = common dso_local global i64 0, align 8
@MMP_CLK_MIX_TYPE_V2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @mmp_clk_mix_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmp_clk_mix_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmp_clk_mix*, align 8
  %6 = alloca %struct.mmp_clk_mix_reg_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw* %12)
  store %struct.mmp_clk_mix* %13, %struct.mmp_clk_mix** %5, align 8
  %14 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %15 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %14, i32 0, i32 1
  store %struct.mmp_clk_mix_reg_info* %15, %struct.mmp_clk_mix_reg_info** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %17 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %22 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %28 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MMP_CLK_MIX_TYPE_V1, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %34 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MMP_CLK_MIX_TYPE_V2, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %26
  %39 = load %struct.mmp_clk_mix_reg_info*, %struct.mmp_clk_mix_reg_info** %6, align 8
  %40 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, %struct.mmp_clk_mix_reg_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @readl(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %48

43:                                               ; preds = %32
  %44 = load %struct.mmp_clk_mix_reg_info*, %struct.mmp_clk_mix_reg_info** %6, align 8
  %45 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, %struct.mmp_clk_mix_reg_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @readl(i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %50 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %55 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %61 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, %struct.mmp_clk_mix_reg_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %65 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, %struct.mmp_clk_mix_reg_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  %68 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @MMP_CLK_BITS_GET_VAL(i32 %69, i32 %70, i32 %71)
  %73 = call i32 @_get_div(%struct.mmp_clk_mix* %68, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = udiv i64 %74, %76
  ret i64 %77
}

declare dso_local %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @_get_div(%struct.mmp_clk_mix*, i32) #1

declare dso_local i32 @MMP_CLK_BITS_GET_VAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
