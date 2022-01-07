; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_parent_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona.c_parent_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_clk_sel = type { i64, i64* }

@U8_MAX = common dso_local global i64 0, align 8
@BAD_CLK_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bcm_clk_sel*, i64)* @parent_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parent_index(%struct.bcm_clk_sel* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bcm_clk_sel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bcm_clk_sel* %0, %struct.bcm_clk_sel** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @U8_MAX, align 8
  %11 = icmp sgt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %32, %2
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %4, align 8
  %17 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.bcm_clk_sel*, %struct.bcm_clk_sel** %4, align 8
  %22 = getelementptr inbounds %struct.bcm_clk_sel, %struct.bcm_clk_sel* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %37

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %6, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load i64, i64* @BAD_CLK_INDEX, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
