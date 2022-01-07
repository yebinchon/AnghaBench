; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-super.c_clk_super_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-super.c_clk_super_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_super_mux = type { i32, i64, i64, i64, i32 }

@SUPER_STATE_MASK = common dso_local global i64 0, align 8
@SUPER_STATE_RUN = common dso_local global i32 0, align 4
@SUPER_STATE_IDLE = common dso_local global i32 0, align 4
@TEGRA_DIVIDER_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUPER_LP_DIV2_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @clk_super_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_super_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tegra_clk_super_mux*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.tegra_clk_super_mux* @to_clk_super_mux(%struct.clk_hw* %12)
  store %struct.tegra_clk_super_mux* %13, %struct.tegra_clk_super_mux** %5, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %14 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %20 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @readl_relaxed(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @SUPER_STATE_MASK, align 8
  %31 = and i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @SUPER_STATE_RUN, align 4
  %34 = call i64 @super_state(i32 %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @SUPER_STATE_IDLE, align 4
  %39 = call i64 @super_state(i32 %38)
  %40 = icmp ne i64 %37, %39
  br label %41

41:                                               ; preds = %36, %24
  %42 = phi i1 [ false, %24 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @SUPER_STATE_IDLE, align 4
  %47 = call i64 @super_state(i32 %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %51 = load i32, i32* @SUPER_STATE_IDLE, align 4
  %52 = call i64 @super_state_to_src_shift(%struct.tegra_clk_super_mux* %50, i32 %51)
  br label %57

53:                                               ; preds = %41
  %54 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %55 = load i32, i32* @SUPER_STATE_RUN, align 4
  %56 = call i64 @super_state_to_src_shift(%struct.tegra_clk_super_mux* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i64 [ %52, %49 ], [ %56, %53 ]
  store i64 %58, i64* %10, align 8
  %59 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %60 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TEGRA_DIVIDER_2, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %57
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %68 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %4, align 8
  %73 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %71, %65
  %78 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %79 = call i64 @clk_super_get_parent(%struct.clk_hw* %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %88 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %77
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %136

94:                                               ; preds = %85
  %95 = load i64, i64* @SUPER_LP_DIV2_BYPASS, align 8
  %96 = load i64, i64* %6, align 8
  %97 = xor i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %100 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @writel_relaxed(i64 %98, i32 %101)
  %103 = call i32 @udelay(i32 2)
  %104 = load i64, i64* %4, align 8
  %105 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %106 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %94
  %110 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %111 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %109, %94
  br label %114

114:                                              ; preds = %113, %71, %57
  %115 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %116 = call i64 @super_state_to_src_mask(%struct.tegra_clk_super_mux* %115)
  %117 = load i64, i64* %10, align 8
  %118 = shl i64 %116, %117
  %119 = xor i64 %118, -1
  %120 = load i64, i64* %6, align 8
  %121 = and i64 %120, %119
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %124 = call i64 @super_state_to_src_mask(%struct.tegra_clk_super_mux* %123)
  %125 = and i64 %122, %124
  %126 = load i64, i64* %10, align 8
  %127 = shl i64 %125, %126
  %128 = load i64, i64* %6, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %132 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @writel_relaxed(i64 %130, i32 %133)
  %135 = call i32 @udelay(i32 2)
  br label %136

136:                                              ; preds = %114, %91
  %137 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %138 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %5, align 8
  %143 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @spin_unlock_irqrestore(i64 %144, i64 %145)
  br label %147

147:                                              ; preds = %141, %136
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local %struct.tegra_clk_super_mux* @to_clk_super_mux(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @super_state(i32) #1

declare dso_local i64 @super_state_to_src_shift(%struct.tegra_clk_super_mux*, i32) #1

declare dso_local i64 @clk_super_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @super_state_to_src_mask(%struct.tegra_clk_super_mux*) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
