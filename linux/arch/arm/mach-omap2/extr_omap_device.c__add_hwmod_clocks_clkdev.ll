; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c__add_hwmod_clocks_clkdev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c__add_hwmod_clocks_clkdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { i32 }
%struct.omap_hwmod = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_device*, %struct.omap_hwmod*)* @_add_hwmod_clocks_clkdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_add_hwmod_clocks_clkdev(%struct.omap_device* %0, %struct.omap_hwmod* %1) #0 {
  %3 = alloca %struct.omap_device*, align 8
  %4 = alloca %struct.omap_hwmod*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_device* %0, %struct.omap_device** %3, align 8
  store %struct.omap_hwmod* %1, %struct.omap_hwmod** %4, align 8
  %6 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %7 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %8 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @_add_clkdev(%struct.omap_device* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %14 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %19 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %20 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %28 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @_add_clkdev(%struct.omap_device* %18, i8* %26, i32 %34)
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %11

39:                                               ; preds = %11
  ret void
}

declare dso_local i32 @_add_clkdev(%struct.omap_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
