; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_clk_sel_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_clk_sel_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_clk_sel = type { i64, i32* }
%struct.clk_init_data = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_clk_sel*, %struct.clk_init_data*)* @clk_sel_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_sel_teardown(%struct.bcm_clk_sel* %0, %struct.clk_init_data* %1) #0 {
  %3 = alloca %struct.bcm_clk_sel*, align 8
  %4 = alloca %struct.clk_init_data*, align 8
  store %struct.bcm_clk_sel* %0, %struct.bcm_clk_sel** %3, align 8
  store %struct.clk_init_data* %1, %struct.clk_init_data** %4, align 8
  %5 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %3, align 8
  %6 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kfree(i32* %7)
  %9 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %3, align 8
  %12 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.clk_init_data*, %struct.clk_init_data** %4, align 8
  %14 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.clk_init_data*, %struct.clk_init_data** %4, align 8
  %16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kfree(i32* %17)
  %19 = load %struct.clk_init_data*, %struct.clk_init_data** %4, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
