; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_update_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rcg2 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.clk_hw }
%struct.clk_hw = type { i32 }

@CMD_REG = common dso_local global i64 0, align 8
@CMD_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: rcg didn't update its configuration.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rcg2*)* @update_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_config(%struct.clk_rcg2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_rcg2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i8*, align 8
  store %struct.clk_rcg2* %0, %struct.clk_rcg2** %3, align 8
  %9 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %10 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.clk_hw* %11, %struct.clk_hw** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %13 = call i8* @clk_hw_get_name(%struct.clk_hw* %12)
  store i8* %13, i8** %8, align 8
  %14 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %15 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %19 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CMD_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @CMD_UPDATE, align 4
  %24 = load i32, i32* @CMD_UPDATE, align 4
  %25 = call i32 @regmap_update_bits(i32 %17, i64 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %65

30:                                               ; preds = %1
  store i32 500, i32* %4, align 4
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %36 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %40 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CMD_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @regmap_read(i32 %38, i64 %43, i32* %6)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %34
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CMD_UPDATE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %65

55:                                               ; preds = %49
  %56 = call i32 @udelay(i32 1)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %54, %47, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
