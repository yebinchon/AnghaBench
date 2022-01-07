; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_mmcc-msm8960.c_pix_rdi_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_mmcc-msm8960.c_pix_rdi_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pix_rdi = type { i64, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @pix_rdi_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_rdi_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pix_rdi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.clk_pix_rdi* @to_clk_pix_rdi(%struct.clk_hw* %12)
  store %struct.clk_pix_rdi* %13, %struct.clk_pix_rdi** %8, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %32, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %21, i32 %22)
  store %struct.clk_hw* %23, %struct.clk_hw** %10, align 8
  %24 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %25 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %78

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %8, align 8
  %40 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  br label %43

42:                                               ; preds = %35
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %8, align 8
  %45 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %8, align 8
  %49 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %8, align 8
  %52 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @regmap_update_bits(i32 %47, i32 %50, i64 %53, i64 %54)
  %56 = call i32 @udelay(i32 1)
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %8, align 8
  %61 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  br label %64

63:                                               ; preds = %43
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %63, %59
  %65 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %8, align 8
  %66 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %8, align 8
  %70 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %8, align 8
  %73 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @regmap_update_bits(i32 %68, i32 %71, i64 %74, i64 %75)
  %77 = call i32 @udelay(i32 1)
  br label %78

78:                                               ; preds = %64, %30
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %92, %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %85, i32 %86)
  store %struct.clk_hw* %87, %struct.clk_hw** %11, align 8
  %88 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %89 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @clk_disable_unprepare(i32 %90)
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %5, align 4
  br label %81

95:                                               ; preds = %81
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.clk_pix_rdi* @to_clk_pix_rdi(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
