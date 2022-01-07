; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-common.c_owl_clk_set_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-common.c_owl_clk_set_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_clk_desc = type { i32, %struct.owl_clk_common** }
%struct.owl_clk_common = type { %struct.regmap* }
%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.owl_clk_desc*, %struct.regmap*)* @owl_clk_set_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_clk_set_regmap(%struct.owl_clk_desc* %0, %struct.regmap* %1) #0 {
  %3 = alloca %struct.owl_clk_desc*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.owl_clk_common*, align 8
  store %struct.owl_clk_desc* %0, %struct.owl_clk_desc** %3, align 8
  store %struct.regmap* %1, %struct.regmap** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.owl_clk_desc*, %struct.owl_clk_desc** %3, align 8
  %10 = getelementptr inbounds %struct.owl_clk_desc, %struct.owl_clk_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.owl_clk_desc*, %struct.owl_clk_desc** %3, align 8
  %15 = getelementptr inbounds %struct.owl_clk_desc, %struct.owl_clk_desc* %14, i32 0, i32 1
  %16 = load %struct.owl_clk_common**, %struct.owl_clk_common*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.owl_clk_common*, %struct.owl_clk_common** %16, i64 %18
  %20 = load %struct.owl_clk_common*, %struct.owl_clk_common** %19, align 8
  store %struct.owl_clk_common* %20, %struct.owl_clk_common** %6, align 8
  %21 = load %struct.owl_clk_common*, %struct.owl_clk_common** %6, align 8
  %22 = icmp ne %struct.owl_clk_common* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %28

24:                                               ; preds = %13
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = load %struct.owl_clk_common*, %struct.owl_clk_common** %6, align 8
  %27 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %26, i32 0, i32 0
  store %struct.regmap* %25, %struct.regmap** %27, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
