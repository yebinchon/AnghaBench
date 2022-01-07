; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_clk_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_clk_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_cdce925_output = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CDCE925_REG_Y1SPIPDIVH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_cdce925_output*)* @cdce925_clk_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdce925_clk_activate(%struct.clk_cdce925_output* %0) #0 {
  %2 = alloca %struct.clk_cdce925_output*, align 8
  store %struct.clk_cdce925_output* %0, %struct.clk_cdce925_output** %2, align 8
  %3 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %2, align 8
  %4 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %42 [
    i32 0, label %6
    i32 1, label %14
    i32 2, label %14
    i32 3, label %21
    i32 4, label %21
    i32 5, label %28
    i32 6, label %28
    i32 7, label %35
    i32 8, label %35
  ]

6:                                                ; preds = %1
  %7 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %2, align 8
  %8 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CDCE925_REG_Y1SPIPDIVH, align 4
  %13 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 12, i32 12)
  br label %42

14:                                               ; preds = %1, %1
  %15 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %2, align 8
  %16 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_update_bits(i32 %19, i32 20, i32 3, i32 3)
  br label %42

21:                                               ; preds = %1, %1
  %22 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %2, align 8
  %23 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_update_bits(i32 %26, i32 36, i32 3, i32 3)
  br label %42

28:                                               ; preds = %1, %1
  %29 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %2, align 8
  %30 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regmap_update_bits(i32 %33, i32 52, i32 3, i32 3)
  br label %42

35:                                               ; preds = %1, %1
  %36 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %2, align 8
  %37 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_update_bits(i32 %40, i32 68, i32 3, i32 3)
  br label %42

42:                                               ; preds = %1, %35, %28, %21, %14, %6
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
