; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_mix_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_mix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_mix = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @mmp_clk_mix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_clk_mix_init(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mmp_clk_mix*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw* %4)
  store %struct.mmp_clk_mix* %5, %struct.mmp_clk_mix** %3, align 8
  %6 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %7 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %12 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %13 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %16 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @_filter_clk_table(%struct.mmp_clk_mix* %11, i64 %14, i32 %17)
  br label %19

19:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw*) #1

declare dso_local i32 @_filter_clk_table(%struct.mmp_clk_mix*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
