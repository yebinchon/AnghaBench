; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_sdm.c_ccu_sdm_helper_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_sdm.c_ccu_sdm_helper_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i32, i64, i64 }
%struct.ccu_sdm_internal = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@CCU_FEATURE_SIGMA_DELTA_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccu_sdm_helper_enable(%struct.ccu_common* %0, %struct.ccu_sdm_internal* %1, i64 %2) #0 {
  %4 = alloca %struct.ccu_common*, align 8
  %5 = alloca %struct.ccu_sdm_internal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %4, align 8
  store %struct.ccu_sdm_internal* %1, %struct.ccu_sdm_internal** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %11 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CCU_FEATURE_SIGMA_DELTA_MOD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %119

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %53, %17
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %21 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %18
  %25 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %26 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %24
  %36 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %37 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %45 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %48 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @writel(i32 %43, i64 %50)
  br label %52

52:                                               ; preds = %35, %24
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %58 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_lock_irqsave(i32 %59, i64 %60)
  %62 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %63 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %66 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i32 @readl(i64 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %72 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %70, %73
  %75 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %76 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %79 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = call i32 @writel(i32 %74, i64 %81)
  %83 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %84 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32 %85, i64 %86)
  %88 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %89 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @spin_lock_irqsave(i32 %90, i64 %91)
  %93 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %94 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %97 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = call i32 @readl(i64 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %103 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %101, %104
  %106 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %107 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %110 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = call i32 @writel(i32 %105, i64 %112)
  %114 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %115 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32 %116, i64 %117)
  br label %119

119:                                              ; preds = %56, %16
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
