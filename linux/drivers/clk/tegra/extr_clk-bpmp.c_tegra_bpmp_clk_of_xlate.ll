; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.tegra_bpmp = type { i32, %struct.tegra_bpmp_clk** }
%struct.tegra_bpmp_clk = type { i32, %struct.clk_hw }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.of_phandle_args*, i8*)* @tegra_bpmp_clk_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @tegra_bpmp_clk_of_xlate(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_bpmp*, align 8
  %9 = alloca %struct.tegra_bpmp_clk*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.tegra_bpmp*
  store %struct.tegra_bpmp* %16, %struct.tegra_bpmp** %8, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  %20 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %8, align 8
  %25 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %24, i32 0, i32 1
  %26 = load %struct.tegra_bpmp_clk**, %struct.tegra_bpmp_clk*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %26, i64 %28
  %30 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %29, align 8
  store %struct.tegra_bpmp_clk* %30, %struct.tegra_bpmp_clk** %9, align 8
  %31 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %9, align 8
  %32 = icmp ne %struct.tegra_bpmp_clk* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %44

34:                                               ; preds = %23
  %35 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %9, align 8
  %36 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.tegra_bpmp_clk*, %struct.tegra_bpmp_clk** %9, align 8
  %42 = getelementptr inbounds %struct.tegra_bpmp_clk, %struct.tegra_bpmp_clk* %41, i32 0, i32 1
  store %struct.clk_hw* %42, %struct.clk_hw** %3, align 8
  br label %48

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %17

47:                                               ; preds = %17
  store %struct.clk_hw* null, %struct.clk_hw** %3, align 8
  br label %48

48:                                               ; preds = %47, %40
  %49 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
