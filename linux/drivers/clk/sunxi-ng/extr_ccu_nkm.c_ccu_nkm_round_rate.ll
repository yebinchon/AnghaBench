; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkm.c_ccu_nkm_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkm.c_ccu_nkm_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_mux_internal = type { i32 }
%struct.clk_hw = type { i32 }
%struct.ccu_nkm = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct._ccu_nkm = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ccu_mux_internal*, %struct.clk_hw*, i64*, i64, i8*)* @ccu_nkm_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_nkm_round_rate(%struct.ccu_mux_internal* %0, %struct.clk_hw* %1, i64* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.ccu_mux_internal*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ccu_nkm*, align 8
  %12 = alloca %struct._ccu_nkm, align 8
  store %struct.ccu_mux_internal* %0, %struct.ccu_mux_internal** %6, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.ccu_nkm*
  store %struct.ccu_nkm* %14, %struct.ccu_nkm** %11, align 8
  %15 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %16 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i64 [ %18, %20 ], [ 1, %21 ]
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %27 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %39

32:                                               ; preds = %22
  %33 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %34 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %32, %31
  %40 = phi i64 [ %29, %31 ], [ %38, %32 ]
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %44 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i64 [ %46, %48 ], [ 1, %49 ]
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %55 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %62 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  br label %67

67:                                               ; preds = %60, %59
  %68 = phi i64 [ %57, %59 ], [ %66, %60 ]
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 4
  store i32 1, i32* %71, align 8
  %72 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %73 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %85

78:                                               ; preds = %67
  %79 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %80 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 1, %82
  %84 = sext i32 %83 to i64
  br label %85

85:                                               ; preds = %78, %77
  %86 = phi i64 [ %75, %77 ], [ %84, %78 ]
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 5
  store i32 %87, i32* %88, align 4
  %89 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %90 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %98 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = mul i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %102

102:                                              ; preds = %96, %85
  %103 = load i64*, i64** %8, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @ccu_nkm_find_best(i64 %104, i64 %105, %struct._ccu_nkm* %12)
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = mul i64 %108, %110
  %112 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = mul i64 %111, %113
  %115 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %12, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = udiv i64 %114, %116
  store i64 %117, i64* %9, align 8
  %118 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %119 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %102
  %126 = load %struct.ccu_nkm*, %struct.ccu_nkm** %11, align 8
  %127 = getelementptr inbounds %struct.ccu_nkm, %struct.ccu_nkm* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = udiv i64 %129, %128
  store i64 %130, i64* %9, align 8
  br label %131

131:                                              ; preds = %125, %102
  %132 = load i64, i64* %9, align 8
  ret i64 %132
}

declare dso_local i32 @ccu_nkm_find_best(i64, i64, %struct._ccu_nkm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
