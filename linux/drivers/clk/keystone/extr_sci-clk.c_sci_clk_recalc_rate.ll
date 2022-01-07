; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sci_clk = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i64*)* }

@.str = private unnamed_addr constant [47 x i8] c"recalc-rate failed for dev=%d, clk=%d, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @sci_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sci_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sci_clk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.sci_clk* @to_sci_clk(%struct.clk_hw* %9)
  store %struct.sci_clk* %10, %struct.sci_clk** %6, align 8
  %11 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %12 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32, i32, i64*)*, i32 (i32, i32, i32, i64*)** %16, align 8
  %18 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %19 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %24 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %27 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %17(i32 %22, i32 %25, i32 %28, i64* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %34 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %39 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sci_clk*, %struct.sci_clk** %6, align 8
  %42 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %44)
  store i64 0, i64* %3, align 8
  br label %48

46:                                               ; preds = %2
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %32
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local %struct.sci_clk* @to_sci_clk(%struct.clk_hw*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
