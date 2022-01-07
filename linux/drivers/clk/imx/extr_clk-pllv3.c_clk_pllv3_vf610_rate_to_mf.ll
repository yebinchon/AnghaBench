; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_vf610_rate_to_mf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_vf610_rate_to_mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_pllv3_vf610_mf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (i64, i64)* @clk_pllv3_vf610_rate_to_mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @clk_pllv3_vf610_rate_to_mf(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.clk_pllv3_vf610_mf, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = mul i64 22, %9
  %11 = icmp uge i64 %8, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 22, i32 20
  %14 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 1
  store i32 1073741823, i32* %15, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %17, %20
  %22 = icmp ule i64 %16, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 2
  store i32 0, i32* %24, align 4
  br label %59

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %27, %31
  %33 = icmp uge i64 %26, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  br label %58

39:                                               ; preds = %25
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %41, %44
  %46 = sub i64 %40, %45
  store i64 %46, i64* %6, align 8
  %47 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %6, align 8
  %51 = mul i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @do_div(i64 %52, i64 %53)
  %55 = load i64, i64* %6, align 8
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %3, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %39, %34
  br label %59

59:                                               ; preds = %58, %23
  %60 = bitcast { i64, i32 }* %7 to i8*
  %61 = bitcast %struct.clk_pllv3_vf610_mf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 4 %61, i64 12, i1 false)
  %62 = load { i64, i32 }, { i64, i32 }* %7, align 8
  ret { i64, i32 } %62
}

declare dso_local i32 @do_div(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
