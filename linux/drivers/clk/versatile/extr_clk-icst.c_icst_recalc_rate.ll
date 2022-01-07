; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_icst_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-icst.c_icst_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_icst = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.icst_vco = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ICST: could not get VCO setting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @icst_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @icst_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_icst*, align 8
  %7 = alloca %struct.icst_vco, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_icst* @to_icst(%struct.clk_hw* %9)
  store %struct.clk_icst* %10, %struct.clk_icst** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.clk_icst*, %struct.clk_icst** %6, align 8
  %16 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %14, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.clk_icst*, %struct.clk_icst** %6, align 8
  %21 = call i32 @vco_get(%struct.clk_icst* %20, %struct.icst_vco* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.clk_icst*, %struct.clk_icst** %6, align 8
  %28 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.icst_vco, %struct.icst_vco* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @icst_hz(%struct.TYPE_2__* %29, i32 %31)
  %33 = load %struct.clk_icst*, %struct.clk_icst** %6, align 8
  %34 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.clk_icst*, %struct.clk_icst** %6, align 8
  %36 = getelementptr inbounds %struct.clk_icst, %struct.clk_icst* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %26, %24
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local %struct.clk_icst* @to_icst(%struct.clk_hw*) #1

declare dso_local i32 @vco_get(%struct.clk_icst*, %struct.icst_vco*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @icst_hz(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
