; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod_7xx_data.c_dra7xx_pciess_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod_7xx_data.c_dra7xx_pciess_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dra7xx_pciess_reset(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %7 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %12 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %13 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @omap_hwmod_assert_hardreset(%struct.omap_hwmod* %11, i32 %19)
  %21 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %22 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %23 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @omap_hwmod_deassert_hardreset(%struct.omap_hwmod* %21, i32 %29)
  br label %31

31:                                               ; preds = %10
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %4

34:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @omap_hwmod_assert_hardreset(%struct.omap_hwmod*, i32) #1

declare dso_local i32 @omap_hwmod_deassert_hardreset(%struct.omap_hwmod*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
