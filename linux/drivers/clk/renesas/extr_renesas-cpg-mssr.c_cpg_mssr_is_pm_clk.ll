; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mssr_is_pm_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mssr_is_pm_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_phandle_args = type { i64, i32, i32* }
%struct.cpg_mssr_clk_domain = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_phandle_args*, %struct.cpg_mssr_clk_domain*)* @cpg_mssr_is_pm_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpg_mssr_is_pm_clk(%struct.of_phandle_args* %0, %struct.cpg_mssr_clk_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.cpg_mssr_clk_domain*, align 8
  %6 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.cpg_mssr_clk_domain* %1, %struct.cpg_mssr_clk_domain** %5, align 8
  %7 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %8 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.cpg_mssr_clk_domain*, %struct.cpg_mssr_clk_domain** %5, align 8
  %11 = getelementptr inbounds %struct.cpg_mssr_clk_domain, %struct.cpg_mssr_clk_domain* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %18 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %57

22:                                               ; preds = %16
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %56 [
    i32 129, label %28
    i32 128, label %55
  ]

28:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.cpg_mssr_clk_domain*, %struct.cpg_mssr_clk_domain** %5, align 8
  %32 = getelementptr inbounds %struct.cpg_mssr_clk_domain, %struct.cpg_mssr_clk_domain* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %37 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cpg_mssr_clk_domain*, %struct.cpg_mssr_clk_domain** %5, align 8
  %42 = getelementptr inbounds %struct.cpg_mssr_clk_domain, %struct.cpg_mssr_clk_domain* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %57

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %29

54:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %57

55:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %54, %49, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
