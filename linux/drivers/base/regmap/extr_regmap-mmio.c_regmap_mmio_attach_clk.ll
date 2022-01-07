; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-mmio.c_regmap_mmio_attach_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-mmio.c_regmap_mmio_attach_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { %struct.regmap_mmio_context* }
%struct.regmap_mmio_context = type { i32, %struct.clk* }
%struct.clk = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_mmio_attach_clk(%struct.regmap* %0, %struct.clk* %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.regmap_mmio_context*, align 8
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store %struct.clk* %1, %struct.clk** %4, align 8
  %6 = load %struct.regmap*, %struct.regmap** %3, align 8
  %7 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 0
  %8 = load %struct.regmap_mmio_context*, %struct.regmap_mmio_context** %7, align 8
  store %struct.regmap_mmio_context* %8, %struct.regmap_mmio_context** %5, align 8
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = load %struct.regmap_mmio_context*, %struct.regmap_mmio_context** %5, align 8
  %11 = getelementptr inbounds %struct.regmap_mmio_context, %struct.regmap_mmio_context* %10, i32 0, i32 1
  store %struct.clk* %9, %struct.clk** %11, align 8
  %12 = load %struct.regmap_mmio_context*, %struct.regmap_mmio_context** %5, align 8
  %13 = getelementptr inbounds %struct.regmap_mmio_context, %struct.regmap_mmio_context* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.regmap_mmio_context*, %struct.regmap_mmio_context** %5, align 8
  %15 = getelementptr inbounds %struct.regmap_mmio_context, %struct.regmap_mmio_context* %14, i32 0, i32 1
  %16 = load %struct.clk*, %struct.clk** %15, align 8
  %17 = call i32 @clk_prepare(%struct.clk* %16)
  ret i32 %17
}

declare dso_local i32 @clk_prepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
