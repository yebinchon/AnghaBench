; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_calc_hw_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_calc_hw_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_cgu_clk_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_cgu_clk_info*, i32)* @ingenic_clk_calc_hw_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_clk_calc_hw_div(%struct.ingenic_cgu_clk_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ingenic_cgu_clk_info* %0, %struct.ingenic_cgu_clk_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %4, align 8
  %10 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 1, %12
  %14 = icmp ult i32 %8, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %7
  %16 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %4, align 8
  %17 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %15, %7
  %26 = phi i1 [ false, %7 ], [ %24, %15 ]
  br i1 %26, label %27, label %44

27:                                               ; preds = %25
  %28 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %4, align 8
  %29 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %47

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %7

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
