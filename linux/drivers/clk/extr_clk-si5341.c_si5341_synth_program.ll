; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_synth_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_synth_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si5341_synth = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SI5341_SYNTH_N_PIBYP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si5341_synth*, i32, i32, i32)* @si5341_synth_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_synth_program(%struct.clk_si5341_synth* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_si5341_synth*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_si5341_synth* %0, %struct.clk_si5341_synth** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %6, align 8
  %13 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %6, align 8
  %16 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @SI5341_SYNTH_N_NUM(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @si5341_encode_44_32(i32 %19, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %6, align 8
  %26 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SI5341_SYNTH_N_PIBYP, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @BIT(i32 %36)
  br label %39

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  %41 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %32, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %55

46:                                               ; preds = %39
  %47 = load %struct.clk_si5341_synth*, %struct.clk_si5341_synth** %6, align 8
  %48 = getelementptr inbounds %struct.clk_si5341_synth, %struct.clk_si5341_synth* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @SI5341_SYNTH_N_UPD(i32 %52)
  %54 = call i32 @regmap_write(i32 %51, i32 %53, i32 1)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %46, %44
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @si5341_encode_44_32(i32, i32, i32, i32) #1

declare dso_local i32 @SI5341_SYNTH_N_NUM(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SI5341_SYNTH_N_UPD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
