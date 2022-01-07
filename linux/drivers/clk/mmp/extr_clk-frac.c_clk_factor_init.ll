; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-frac.c_clk_factor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-frac.c_clk_factor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_factor = type { i32, i64, i32, %struct.TYPE_2__*, %struct.mmp_clk_factor_masks* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_factor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_factor_init(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mmp_clk_factor*, align 8
  %4 = alloca %struct.mmp_clk_factor_masks*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %11 = call %struct.mmp_clk_factor* @to_clk_factor(%struct.clk_hw* %10)
  store %struct.mmp_clk_factor* %11, %struct.mmp_clk_factor** %3, align 8
  %12 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %13 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %12, i32 0, i32 4
  %14 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %13, align 8
  store %struct.mmp_clk_factor_masks* %14, %struct.mmp_clk_factor_masks** %4, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %16 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %21 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @spin_lock_irqsave(i64 %22, i64 %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %27 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @readl(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %32 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %30, %33
  %35 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %36 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %41 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %39, %42
  %44 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %45 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  store i32 %47, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %78, %25
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %51 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %57 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %55, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %68 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %66, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %81

77:                                               ; preds = %65, %54
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %48

81:                                               ; preds = %76, %48
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %84 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sge i32 %82, %85
  br i1 %86, label %87, label %145

87:                                               ; preds = %81
  %88 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %89 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %92 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %90, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %99 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %98, i32 0, i32 3
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %105 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %103, %106
  %108 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %109 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %107, %110
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %115 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %118 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %116, %119
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %125 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %131 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %129, %132
  %134 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %4, align 8
  %135 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %133, %136
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %142 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @writel(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %87, %81
  %146 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %147 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %3, align 8
  %152 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @spin_unlock_irqrestore(i64 %153, i64 %154)
  br label %156

156:                                              ; preds = %150, %145
  ret void
}

declare dso_local %struct.mmp_clk_factor* @to_clk_factor(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
