; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__get_table_mindiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__get_table_mindiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_div_table*)* @_get_table_mindiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_table_mindiv(%struct.clk_div_table* %0) #0 {
  %2 = alloca %struct.clk_div_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_div_table*, align 8
  store %struct.clk_div_table* %0, %struct.clk_div_table** %2, align 8
  %5 = load i32, i32* @UINT_MAX, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.clk_div_table*, %struct.clk_div_table** %2, align 8
  store %struct.clk_div_table* %6, %struct.clk_div_table** %4, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.clk_div_table*, %struct.clk_div_table** %4, align 8
  %9 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load %struct.clk_div_table*, %struct.clk_div_table** %4, align 8
  %14 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.clk_div_table*, %struct.clk_div_table** %4, align 8
  %20 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %12
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.clk_div_table*, %struct.clk_div_table** %4, align 8
  %25 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %24, i32 1
  store %struct.clk_div_table* %25, %struct.clk_div_table** %4, align 8
  br label %7

26:                                               ; preds = %7
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
