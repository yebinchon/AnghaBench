; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_clk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_clk = type { i64, %struct.ingenic_cgu* }
%struct.ingenic_cgu = type { i32, i64, %struct.ingenic_cgu_clk_info* }
%struct.ingenic_cgu_clk_info = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@CGU_CLK_MUX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @ingenic_clk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_clk_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ingenic_clk*, align 8
  %7 = alloca %struct.ingenic_cgu*, align 8
  %8 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw* %15)
  store %struct.ingenic_clk* %16, %struct.ingenic_clk** %6, align 8
  %17 = load %struct.ingenic_clk*, %struct.ingenic_clk** %6, align 8
  %18 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %17, i32 0, i32 1
  %19 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %18, align 8
  store %struct.ingenic_cgu* %19, %struct.ingenic_cgu** %7, align 8
  %20 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %21 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %20, i32 0, i32 2
  %22 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %21, align 8
  %23 = load %struct.ingenic_clk*, %struct.ingenic_clk** %6, align 8
  %24 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %22, i64 %25
  store %struct.ingenic_cgu_clk_info* %26, %struct.ingenic_cgu_clk_info** %8, align 8
  %27 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %28 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CGU_CLK_MUX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %121

33:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %34 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %35 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %61, %33
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %46 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %61

53:                                               ; preds = %44
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %64

58:                                               ; preds = %53
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %11, align 8
  br label %40

64:                                               ; preds = %57, %40
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %71 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = call i64 @GENMASK(i32 %74, i32 0)
  store i64 %75, i64* %14, align 8
  %76 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %77 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = shl i64 %80, %79
  store i64 %81, i64* %14, align 8
  %82 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %83 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %82, i32 0, i32 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %87 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %90 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %88, %92
  %94 = call i64 @readl(i64 %93)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %14, align 8
  %96 = xor i64 %95, -1
  %97 = load i64, i64* %13, align 8
  %98 = and i64 %97, %96
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %101 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = shl i64 %99, %103
  %105 = load i64, i64* %13, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %13, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %109 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %112 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %110, %114
  %116 = call i32 @writel(i64 %107, i64 %115)
  %117 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %118 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %117, i32 0, i32 0
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  store i32 0, i32* %3, align 4
  br label %130

121:                                              ; preds = %2
  %122 = load i64, i64* %5, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  br label %128

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %124
  %129 = phi i32 [ %126, %124 ], [ 0, %127 ]
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %64
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
