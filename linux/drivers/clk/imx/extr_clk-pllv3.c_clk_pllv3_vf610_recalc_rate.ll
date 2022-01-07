; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_vf610_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_vf610_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv3 = type { i32, i64, i64, i64 }
%struct.clk_pllv3_vf610_mf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pllv3_vf610_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pllv3_vf610_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pllv3*, align 8
  %6 = alloca %struct.clk_pllv3_vf610_mf, align 4
  %7 = alloca { i64, i32 }, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw* %8)
  store %struct.clk_pllv3* %9, %struct.clk_pllv3** %5, align 8
  %10 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %11 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %14 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  %18 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %20 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %23 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  %27 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %29 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @readl_relaxed(i64 %30)
  %32 = load %struct.clk_pllv3*, %struct.clk_pllv3** %5, align 8
  %33 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 22, i32 20
  %39 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %6, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* %4, align 8
  %41 = bitcast { i64, i32 }* %7 to i8*
  %42 = bitcast %struct.clk_pllv3_vf610_mf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @clk_pllv3_vf610_mf_to_rate(i64 %40, i64 %44, i32 %46)
  ret i64 %47
}

declare dso_local %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @clk_pllv3_vf610_mf_to_rate(i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
