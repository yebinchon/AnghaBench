; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scmi.c_scmi_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scmi.c_scmi_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.scmi_clk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @scmi_clk_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scmi_clk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.scmi_clk*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.scmi_clk* @to_scmi_clk(%struct.clk_hw* %12)
  store %struct.scmi_clk* %13, %struct.scmi_clk** %11, align 8
  %14 = load %struct.scmi_clk*, %struct.scmi_clk** %11, align 8
  %15 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %4, align 8
  br label %80

22:                                               ; preds = %3
  %23 = load %struct.scmi_clk*, %struct.scmi_clk** %11, align 8
  %24 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.scmi_clk*, %struct.scmi_clk** %11, align 8
  %30 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %4, align 8
  br label %80

40:                                               ; preds = %22
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %80

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %10, align 8
  %51 = load %struct.scmi_clk*, %struct.scmi_clk** %11, align 8
  %52 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.scmi_clk*, %struct.scmi_clk** %11, align 8
  %63 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @do_div(i64 %61, i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.scmi_clk*, %struct.scmi_clk** %11, align 8
  %71 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 %69, %76
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %77, %78
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %47, %44, %38, %20
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local %struct.scmi_clk* @to_scmi_clk(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
