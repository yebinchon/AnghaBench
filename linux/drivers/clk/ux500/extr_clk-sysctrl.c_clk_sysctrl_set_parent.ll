; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_clk-sysctrl.c_clk_sysctrl_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_clk-sysctrl.c_clk_sysctrl_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_sysctrl = type { i64, i32*, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @clk_sysctrl_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sysctrl_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_sysctrl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_sysctrl* @to_clk_sysctrl(%struct.clk_hw* %9)
  store %struct.clk_sysctrl* %10, %struct.clk_sysctrl** %6, align 8
  %11 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %12 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %15 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %23 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %22, i32 0, i32 3
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %29 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ab8500_sysctrl_clear(i64 %27, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %106

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %42 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %41, i32 0, i32 3
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %40
  %49 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %50 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %56 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %62 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ab8500_sysctrl_write(i64 %54, i32 %60, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %48
  %71 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %72 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %70
  %79 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %80 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %86 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %92 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ab8500_sysctrl_write(i64 %84, i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %78, %70
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %106

100:                                              ; preds = %48
  br label %101

101:                                              ; preds = %100, %40
  %102 = load i64, i64* %5, align 8
  %103 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %6, align 8
  %104 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %98, %37
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.clk_sysctrl* @to_clk_sysctrl(%struct.clk_hw*) #1

declare dso_local i32 @ab8500_sysctrl_clear(i64, i32) #1

declare dso_local i32 @ab8500_sysctrl_write(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
