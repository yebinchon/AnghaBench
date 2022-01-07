; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_clk_set_pdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_clk_set_pdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_cdce925_output = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CDCE925_REG_Y1SPIPDIVH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_cdce925_output*, i32)* @cdce925_clk_set_pdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdce925_clk_set_pdiv(%struct.clk_cdce925_output* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_cdce925_output*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_cdce925_output* %0, %struct.clk_cdce925_output** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %6 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %91 [
    i32 0, label %8
    i32 1, label %27
    i32 2, label %35
    i32 3, label %43
    i32 4, label %51
    i32 5, label %59
    i32 6, label %67
    i32 7, label %75
    i32 8, label %83
  ]

8:                                                ; preds = %2
  %9 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %10 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CDCE925_REG_Y1SPIPDIVH, align 4
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 3
  %18 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 3, i32 %17)
  %19 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %20 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 255
  %26 = call i32 @regmap_write(i32 %23, i32 3, i32 %25)
  br label %91

27:                                               ; preds = %2
  %28 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %29 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @regmap_update_bits(i32 %32, i32 22, i32 127, i32 %33)
  br label %91

35:                                               ; preds = %2
  %36 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %37 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @regmap_update_bits(i32 %40, i32 23, i32 127, i32 %41)
  br label %91

43:                                               ; preds = %2
  %44 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %45 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @regmap_update_bits(i32 %48, i32 38, i32 127, i32 %49)
  br label %91

51:                                               ; preds = %2
  %52 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %53 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @regmap_update_bits(i32 %56, i32 39, i32 127, i32 %57)
  br label %91

59:                                               ; preds = %2
  %60 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %61 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @regmap_update_bits(i32 %64, i32 54, i32 127, i32 %65)
  br label %91

67:                                               ; preds = %2
  %68 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %69 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @regmap_update_bits(i32 %72, i32 55, i32 127, i32 %73)
  br label %91

75:                                               ; preds = %2
  %76 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %77 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @regmap_update_bits(i32 %80, i32 70, i32 127, i32 %81)
  br label %91

83:                                               ; preds = %2
  %84 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %85 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @regmap_update_bits(i32 %88, i32 71, i32 127, i32 %89)
  br label %91

91:                                               ; preds = %2, %83, %75, %67, %59, %51, %43, %35, %27, %8
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
