; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_clk = type { i64, %struct.ingenic_cgu* }
%struct.ingenic_cgu = type { i64, %struct.ingenic_cgu_clk_info* }
%struct.ingenic_cgu_clk_info = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@CGU_CLK_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*)* @ingenic_clk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ingenic_clk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ingenic_clk*, align 8
  %4 = alloca %struct.ingenic_cgu*, align 8
  %5 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %11 = call %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw* %10)
  store %struct.ingenic_clk* %11, %struct.ingenic_clk** %3, align 8
  %12 = load %struct.ingenic_clk*, %struct.ingenic_clk** %3, align 8
  %13 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %12, i32 0, i32 1
  %14 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %13, align 8
  store %struct.ingenic_cgu* %14, %struct.ingenic_cgu** %4, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %16 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %15, i32 0, i32 1
  %17 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %16, align 8
  %18 = load %struct.ingenic_clk*, %struct.ingenic_clk** %3, align 8
  %19 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %17, i64 %20
  store %struct.ingenic_cgu_clk_info* %21, %struct.ingenic_cgu_clk_info** %5, align 8
  %22 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %23 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CGU_CLK_MUX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %1
  %29 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %30 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %33 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  %37 = call i64 @readl(i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %40 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = lshr i64 %38, %42
  %44 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %45 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 1
  %49 = call i64 @GENMASK(i64 %48, i32 0)
  %50 = and i64 %43, %49
  store i64 %50, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %67, %28
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %57 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %63, %55
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %51

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %1
  %72 = load i64, i64* %9, align 8
  ret i64 %72
}

declare dso_local %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
