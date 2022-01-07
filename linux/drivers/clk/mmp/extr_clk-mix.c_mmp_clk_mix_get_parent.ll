; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_mix_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_mix_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_mix = type { i64, %struct.mmp_clk_mix_reg_info, i64 }
%struct.mmp_clk_mix_reg_info = type { i32, i32, i32, i32 }

@MMP_CLK_MIX_TYPE_V1 = common dso_local global i64 0, align 8
@MMP_CLK_MIX_TYPE_V2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mmp_clk_mix_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_clk_mix_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mmp_clk_mix*, align 8
  %4 = alloca %struct.mmp_clk_mix_reg_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %11 = call %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw* %10)
  store %struct.mmp_clk_mix* %11, %struct.mmp_clk_mix** %3, align 8
  %12 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %13 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %12, i32 0, i32 1
  store %struct.mmp_clk_mix_reg_info* %13, %struct.mmp_clk_mix_reg_info** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %15 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %20 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %26 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MMP_CLK_MIX_TYPE_V1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %32 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MMP_CLK_MIX_TYPE_V2, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30, %24
  %37 = load %struct.mmp_clk_mix_reg_info*, %struct.mmp_clk_mix_reg_info** %4, align 8
  %38 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, %struct.mmp_clk_mix_reg_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @readl(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.mmp_clk_mix_reg_info*, %struct.mmp_clk_mix_reg_info** %4, align 8
  %43 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, %struct.mmp_clk_mix_reg_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @readl(i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %48 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %53 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i64 %54, i64 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %59 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, %struct.mmp_clk_mix_reg_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %63 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.mmp_clk_mix_reg_info, %struct.mmp_clk_mix_reg_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @MMP_CLK_BITS_GET_VAL(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @_get_mux(%struct.mmp_clk_mix* %70, i32 %71)
  ret i32 %72
}

declare dso_local %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @MMP_CLK_BITS_GET_VAL(i32, i32, i32) #1

declare dso_local i32 @_get_mux(%struct.mmp_clk_mix*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
