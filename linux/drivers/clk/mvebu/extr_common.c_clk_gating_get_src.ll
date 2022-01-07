; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_common.c_clk_gating_get_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_common.c_clk_gating_get_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.clk** }
%struct.clk = type { i32 }
%struct.of_phandle_args = type { i32, i64* }
%struct.clk_gate = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.of_phandle_args*, i8*)* @clk_gating_get_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_gating_get_src(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_gate*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.clk* @ERR_PTR(i32 %14)
  store %struct.clk* %15, %struct.clk** %3, align 8
  br label %58

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %17
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.clk**, %struct.clk*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.clk*, %struct.clk** %26, i64 %28
  %30 = load %struct.clk*, %struct.clk** %29, align 8
  %31 = call i32 @__clk_get_hw(%struct.clk* %30)
  %32 = call %struct.clk_gate* @to_clk_gate(i32 %31)
  store %struct.clk_gate* %32, %struct.clk_gate** %7, align 8
  %33 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %34 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.clk_gate*, %struct.clk_gate** %7, align 8
  %39 = getelementptr inbounds %struct.clk_gate, %struct.clk_gate* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %23
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.clk**, %struct.clk*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.clk*, %struct.clk** %45, i64 %47
  %49 = load %struct.clk*, %struct.clk** %48, align 8
  store %struct.clk* %49, %struct.clk** %3, align 8
  br label %58

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %17

54:                                               ; preds = %17
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.clk* @ERR_PTR(i32 %56)
  store %struct.clk* %57, %struct.clk** %3, align 8
  br label %58

58:                                               ; preds = %54, %42, %12
  %59 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %59
}

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk_gate* @to_clk_gate(i32) #1

declare dso_local i32 @__clk_get_hw(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
