; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nk.c_ccu_nk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nk.c_ccu_nk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_nk = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct._ccu_nk = type { i32, i32, i32, i32, i64, i64 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @ccu_nk_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_nk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ccu_nk*, align 8
  %8 = alloca %struct._ccu_nk, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.ccu_nk* @hw_to_ccu_nk(%struct.clk_hw* %9)
  store %struct.ccu_nk* %10, %struct.ccu_nk** %7, align 8
  %11 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %12 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %20 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = mul i64 %22, %21
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %26 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i64 [ %28, %30 ], [ 1, %31 ]
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %37 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %49

42:                                               ; preds = %32
  %43 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %44 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %42, %41
  %50 = phi i64 [ %39, %41 ], [ %48, %42 ]
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %54 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %58
  %61 = phi i64 [ %56, %58 ], [ 1, %59 ]
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %8, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %65 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %77

70:                                               ; preds = %60
  %71 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %72 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 1, %74
  %76 = sext i32 %75 to i64
  br label %77

77:                                               ; preds = %70, %69
  %78 = phi i64 [ %67, %69 ], [ %76, %70 ]
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %8, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @ccu_nk_find_best(i64 %82, i64 %83, %struct._ccu_nk* %8)
  %85 = load i64*, i64** %6, align 8
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %8, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = mul i64 %86, %88
  %90 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %8, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = mul i64 %89, %91
  store i64 %92, i64* %5, align 8
  %93 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %94 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %77
  %101 = load i64, i64* %5, align 8
  %102 = load %struct.ccu_nk*, %struct.ccu_nk** %7, align 8
  %103 = getelementptr inbounds %struct.ccu_nk, %struct.ccu_nk* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = udiv i64 %101, %104
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %100, %77
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local %struct.ccu_nk* @hw_to_ccu_nk(%struct.clk_hw*) #1

declare dso_local i32 @ccu_nk_find_best(i64, i64, %struct._ccu_nk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
