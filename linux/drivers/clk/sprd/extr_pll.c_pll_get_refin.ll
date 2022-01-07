; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_pll.c_pll_get_refin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_pll.c_pll_get_refin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pll = type { i32 }

@__const.pll_get_refin.refin = private unnamed_addr constant [4 x i64] [i64 2, i64 4, i64 13, i64 26], align 16
@PLL_REFIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sprd_pll*)* @pll_get_refin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_get_refin(%struct.sprd_pll* %0) #0 {
  %2 = alloca %struct.sprd_pll*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i64], align 16
  store %struct.sprd_pll* %0, %struct.sprd_pll** %2, align 8
  store i32 3, i32* %6, align 4
  %8 = bitcast [4 x i64]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i64]* @__const.pll_get_refin.refin to i8*), i64 32, i1 false)
  %9 = load %struct.sprd_pll*, %struct.sprd_pll** %2, align 8
  %10 = load i32, i32* @PLL_REFIN, align 4
  %11 = call i64 @pwidth(%struct.sprd_pll* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.sprd_pll*, %struct.sprd_pll** %2, align 8
  %15 = load i32, i32* @PLL_REFIN, align 4
  %16 = call i32 @pindex(%struct.sprd_pll* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sprd_pll*, %struct.sprd_pll** %2, align 8
  %18 = load i32, i32* @PLL_REFIN, align 4
  %19 = call i32 @pshift(%struct.sprd_pll* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.sprd_pll*, %struct.sprd_pll** %2, align 8
  %21 = load i32, i32* @PLL_REFIN, align 4
  %22 = call i32 @pmask(%struct.sprd_pll* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.sprd_pll*, %struct.sprd_pll** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sprd_pll_read(%struct.sprd_pll* %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  store i32 3, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %13
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %36
  %38 = load i64, i64* %37, align 8
  ret i64 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pwidth(%struct.sprd_pll*, i32) #2

declare dso_local i32 @pindex(%struct.sprd_pll*, i32) #2

declare dso_local i32 @pshift(%struct.sprd_pll*, i32) #2

declare dso_local i32 @pmask(%struct.sprd_pll*, i32) #2

declare dso_local i32 @sprd_pll_read(%struct.sprd_pll*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
