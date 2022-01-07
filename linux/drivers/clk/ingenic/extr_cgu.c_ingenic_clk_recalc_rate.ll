; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_clk = type { i64, %struct.ingenic_cgu* }
%struct.ingenic_cgu = type { i64, %struct.ingenic_cgu_clk_info* }
%struct.ingenic_cgu_clk_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64*, i64, i64, i64 }

@CGU_CLK_DIV = common dso_local global i32 0, align 4
@CGU_CLK_FIXDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ingenic_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ingenic_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ingenic_clk*, align 8
  %6 = alloca %struct.ingenic_cgu*, align 8
  %7 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw* %11)
  store %struct.ingenic_clk* %12, %struct.ingenic_clk** %5, align 8
  %13 = load %struct.ingenic_clk*, %struct.ingenic_clk** %5, align 8
  %14 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %13, i32 0, i32 1
  %15 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %14, align 8
  store %struct.ingenic_cgu* %15, %struct.ingenic_cgu** %6, align 8
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %6, align 8
  %18 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %17, i32 0, i32 1
  %19 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %18, align 8
  %20 = load %struct.ingenic_clk*, %struct.ingenic_clk** %5, align 8
  %21 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %19, i64 %22
  store %struct.ingenic_cgu_clk_info* %23, %struct.ingenic_cgu_clk_info** %7, align 8
  %24 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %25 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CGU_CLK_DIV, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %2
  %31 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %6, align 8
  %32 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %35 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %33, %37
  %39 = call i64 @readl(i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %42 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = lshr i64 %40, %44
  %46 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %47 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = call i64 @GENMASK(i64 %50, i32 0)
  %52 = and i64 %45, %51
  store i64 %52, i64* %10, align 8
  %53 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %54 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %30
  %59 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %60 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  br label %74

66:                                               ; preds = %30
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  %69 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %70 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = mul i64 %68, %72
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %66, %58
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = udiv i64 %76, %75
  store i64 %77, i64* %8, align 8
  br label %93

78:                                               ; preds = %2
  %79 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %80 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CGU_CLK_FIXDIV, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %7, align 8
  %87 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = udiv i64 %90, %89
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %74
  %94 = load i64, i64* %8, align 8
  ret i64 %94
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
