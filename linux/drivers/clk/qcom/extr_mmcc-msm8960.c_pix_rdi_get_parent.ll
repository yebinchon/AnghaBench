; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_mmcc-msm8960.c_pix_rdi_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_mmcc-msm8960.c_pix_rdi_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pix_rdi = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @pix_rdi_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_rdi_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_pix_rdi*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.clk_pix_rdi* @to_clk_pix_rdi(%struct.clk_hw* %6)
  store %struct.clk_pix_rdi* %7, %struct.clk_pix_rdi** %5, align 8
  %8 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %5, align 8
  %9 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %5, align 8
  %13 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_read(i32 %11, i32 %14, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %5, align 8
  %18 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %5, align 8
  %25 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %5, align 8
  %29 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_read(i32 %27, i32 %30, i32* %4)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.clk_pix_rdi*, %struct.clk_pix_rdi** %5, align 8
  %34 = getelementptr inbounds %struct.clk_pix_rdi, %struct.clk_pix_rdi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %22
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.clk_pix_rdi* @to_clk_pix_rdi(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
