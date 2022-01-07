; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-aux-synth.c_clk_aux_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-aux-synth.c_clk_aux_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_aux = type { i64, i32, %struct.TYPE_2__*, i32, %struct.aux_rate_tbl* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }
%struct.aux_rate_tbl = type { i64, i64, i64 }

@aux_calc_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_aux_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_aux_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_aux*, align 8
  %8 = alloca %struct.aux_rate_tbl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_aux* @to_clk_aux(%struct.clk_hw* %12)
  store %struct.clk_aux* %13, %struct.clk_aux** %7, align 8
  %14 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %15 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %14, i32 0, i32 4
  %16 = load %struct.aux_rate_tbl*, %struct.aux_rate_tbl** %15, align 8
  store %struct.aux_rate_tbl* %16, %struct.aux_rate_tbl** %8, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @aux_calc_rate, align 4
  %21 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %22 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_round_rate_index(%struct.clk_hw* %17, i64 %18, i64 %19, i32 %20, i32 %23, i32* %11)
  %25 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %26 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %31 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %37 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @readl_relaxed(i32 %38)
  %40 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %41 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %46 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = shl i64 %44, %49
  %51 = xor i64 %50, -1
  %52 = and i64 %39, %51
  store i64 %52, i64* %9, align 8
  %53 = load %struct.aux_rate_tbl*, %struct.aux_rate_tbl** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %53, i64 %55
  %57 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %60 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %58, %63
  %65 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %66 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = shl i64 %64, %69
  %71 = load i64, i64* %9, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %74 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %79 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = shl i64 %77, %82
  %84 = xor i64 %83, -1
  %85 = load i64, i64* %9, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %9, align 8
  %87 = load %struct.aux_rate_tbl*, %struct.aux_rate_tbl** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %87, i64 %89
  %91 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %94 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = and i64 %92, %97
  %99 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %100 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = shl i64 %98, %103
  %105 = load i64, i64* %9, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %9, align 8
  %107 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %108 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %113 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = shl i64 %111, %116
  %118 = xor i64 %117, -1
  %119 = load i64, i64* %9, align 8
  %120 = and i64 %119, %118
  store i64 %120, i64* %9, align 8
  %121 = load %struct.aux_rate_tbl*, %struct.aux_rate_tbl** %8, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %121, i64 %123
  %125 = getelementptr inbounds %struct.aux_rate_tbl, %struct.aux_rate_tbl* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %128 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = and i64 %126, %131
  %133 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %134 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = shl i64 %132, %137
  %139 = load i64, i64* %9, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %9, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %143 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @writel_relaxed(i64 %141, i32 %144)
  %146 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %147 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %35
  %151 = load %struct.clk_aux*, %struct.clk_aux** %7, align 8
  %152 = getelementptr inbounds %struct.clk_aux, %struct.clk_aux* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @spin_unlock_irqrestore(i64 %153, i64 %154)
  br label %156

156:                                              ; preds = %150, %35
  ret i32 0
}

declare dso_local %struct.clk_aux* @to_clk_aux(%struct.clk_hw*) #1

declare dso_local i32 @clk_round_rate_index(%struct.clk_hw*, i64, i64, i32, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
