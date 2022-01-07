; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_clk_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.tegra_bpmp_clk_message = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mrq_clk_request = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.tegra_bpmp_message* }
%struct.tegra_bpmp_message = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }

@MRQ_CLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, %struct.tegra_bpmp_clk_message*)* @tegra_bpmp_clk_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_clk_transfer(%struct.tegra_bpmp* %0, %struct.tegra_bpmp_clk_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca %struct.tegra_bpmp_clk_message*, align 8
  %6 = alloca %struct.mrq_clk_request, align 8
  %7 = alloca %struct.tegra_bpmp_message, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store %struct.tegra_bpmp_clk_message* %1, %struct.tegra_bpmp_clk_message** %5, align 8
  %10 = bitcast %struct.mrq_clk_request* %6 to i8*
  store i8* %10, i8** %8, align 8
  %11 = bitcast %struct.mrq_clk_request* %6 to %struct.tegra_bpmp_message*
  %12 = call i32 @memset(%struct.tegra_bpmp_message* %11, i32 0, i32 48)
  %13 = load %struct.tegra_bpmp_clk_message*, %struct.tegra_bpmp_clk_message** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 24
  %17 = load %struct.tegra_bpmp_clk_message*, %struct.tegra_bpmp_clk_message** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = getelementptr inbounds %struct.mrq_clk_request, %struct.mrq_clk_request* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr i8, i8* %22, i64 4
  %24 = load %struct.tegra_bpmp_clk_message*, %struct.tegra_bpmp_clk_message** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tegra_bpmp_clk_message*, %struct.tegra_bpmp_clk_message** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i8* %23, i32 %27, i32 %31)
  %33 = call i32 @memset(%struct.tegra_bpmp_message* %7, i32 0, i32 48)
  %34 = load i32, i32* @MRQ_CLK, align 4
  %35 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = bitcast %struct.mrq_clk_request* %6 to %struct.tegra_bpmp_message*
  %37 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store %struct.tegra_bpmp_message* %36, %struct.tegra_bpmp_message** %38, align 8
  %39 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 48, i32* %40, align 8
  %41 = load %struct.tegra_bpmp_clk_message*, %struct.tegra_bpmp_clk_message** %5, align 8
  %42 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tegra_bpmp_clk_message*, %struct.tegra_bpmp_clk_message** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_bpmp_clk_message, %struct.tegra_bpmp_clk_message* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %54 = call i32 @tegra_bpmp_transfer(%struct.tegra_bpmp* %53, %struct.tegra_bpmp_message* %7)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %2
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %69

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %7, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %64, %57
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @memset(%struct.tegra_bpmp_message*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @tegra_bpmp_transfer(%struct.tegra_bpmp*, %struct.tegra_bpmp_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
