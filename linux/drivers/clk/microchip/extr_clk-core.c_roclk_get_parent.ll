; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_roclk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_roclk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pic32_ref_osc = type { i64*, i32 }

@REFO_SEL_SHIFT = common dso_local global i64 0, align 8
@REFO_SEL_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*)* @roclk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roclk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.pic32_ref_osc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.pic32_ref_osc* @clkhw_to_refosc(%struct.clk_hw* %7)
  store %struct.pic32_ref_osc* %8, %struct.pic32_ref_osc** %4, align 8
  %9 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %4, align 8
  %10 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @readl(i32 %11)
  %13 = load i64, i64* @REFO_SEL_SHIFT, align 8
  %14 = lshr i64 %12, %13
  %15 = load i64, i64* @REFO_SEL_MASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %4, align 8
  %18 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  br label %47

23:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %27 = call i64 @clk_hw_get_num_parents(%struct.clk_hw* %26)
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %4, align 8
  %31 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %2, align 8
  br label %47

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %24

44:                                               ; preds = %24
  %45 = load i64, i64* @EINVAL, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %44, %38, %21
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local %struct.pic32_ref_osc* @clkhw_to_refosc(%struct.clk_hw*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i64 @clk_hw_get_num_parents(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
