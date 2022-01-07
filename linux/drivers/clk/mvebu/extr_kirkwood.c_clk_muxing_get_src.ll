; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_kirkwood.c_clk_muxing_get_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_kirkwood.c_clk_muxing_get_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.clk_muxing_ctrl = type { i32, %struct.clk** }
%struct.clk_mux = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.of_phandle_args*, i8*)* @clk_muxing_get_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_muxing_get_src(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk_muxing_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_mux*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.clk_muxing_ctrl*
  store %struct.clk_muxing_ctrl* %10, %struct.clk_muxing_ctrl** %6, align 8
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.clk* @ERR_PTR(i32 %17)
  store %struct.clk* %18, %struct.clk** %3, align 8
  br label %61

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.clk_muxing_ctrl*, %struct.clk_muxing_ctrl** %6, align 8
  %23 = getelementptr inbounds %struct.clk_muxing_ctrl, %struct.clk_muxing_ctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.clk_muxing_ctrl*, %struct.clk_muxing_ctrl** %6, align 8
  %28 = getelementptr inbounds %struct.clk_muxing_ctrl, %struct.clk_muxing_ctrl* %27, i32 0, i32 1
  %29 = load %struct.clk**, %struct.clk*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.clk*, %struct.clk** %29, i64 %31
  %33 = load %struct.clk*, %struct.clk** %32, align 8
  %34 = call i32 @__clk_get_hw(%struct.clk* %33)
  %35 = call %struct.clk_mux* @to_clk_mux(i32 %34)
  store %struct.clk_mux* %35, %struct.clk_mux** %8, align 8
  %36 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %37 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.clk_mux*, %struct.clk_mux** %8, align 8
  %42 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %26
  %46 = load %struct.clk_muxing_ctrl*, %struct.clk_muxing_ctrl** %6, align 8
  %47 = getelementptr inbounds %struct.clk_muxing_ctrl, %struct.clk_muxing_ctrl* %46, i32 0, i32 1
  %48 = load %struct.clk**, %struct.clk*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.clk*, %struct.clk** %48, i64 %50
  %52 = load %struct.clk*, %struct.clk** %51, align 8
  store %struct.clk* %52, %struct.clk** %3, align 8
  br label %61

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.clk* @ERR_PTR(i32 %59)
  store %struct.clk* %60, %struct.clk** %3, align 8
  br label %61

61:                                               ; preds = %57, %45, %15
  %62 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %62
}

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk_mux* @to_clk_mux(i32) #1

declare dso_local i32 @__clk_get_hw(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
