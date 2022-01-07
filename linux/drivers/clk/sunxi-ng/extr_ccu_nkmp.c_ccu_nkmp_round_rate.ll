; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkmp.c_ccu_nkmp_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkmp.c_ccu_nkmp_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_nkmp = type { i64, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct._ccu_nkmp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @ccu_nkmp_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_nkmp_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ccu_nkmp*, align 8
  %9 = alloca %struct._ccu_nkmp, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.ccu_nkmp* @hw_to_ccu_nkmp(%struct.clk_hw* %10)
  store %struct.ccu_nkmp* %11, %struct.ccu_nkmp** %8, align 8
  %12 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %13 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %21 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = mul i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %27 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %33 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %38 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %41 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %49 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = udiv i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %47, %36
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %4, align 8
  br label %180

55:                                               ; preds = %30, %25
  %56 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %57 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %63

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi i64 [ %59, %61 ], [ 1, %62 ]
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %68 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %80

73:                                               ; preds = %63
  %74 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %75 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = sext i32 %78 to i64
  br label %80

80:                                               ; preds = %73, %72
  %81 = phi i64 [ %70, %72 ], [ %79, %73 ]
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %85 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %89
  %92 = phi i64 [ %87, %89 ], [ 1, %90 ]
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %96 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %108

101:                                              ; preds = %91
  %102 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %103 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %101, %100
  %109 = phi i64 [ %98, %100 ], [ %107, %101 ]
  %110 = trunc i64 %109 to i32
  %111 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 3
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 4
  store i32 1, i32* %112, align 4
  %113 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %114 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %126

119:                                              ; preds = %108
  %120 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %121 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = shl i32 1, %123
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %119, %118
  %127 = phi i64 [ %116, %118 ], [ %125, %119 ]
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 5
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 6
  store i32 1, i32* %130, align 4
  %131 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %132 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %146

137:                                              ; preds = %126
  %138 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %139 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 1, %141
  %143 = sub nsw i32 %142, 1
  %144 = shl i32 1, %143
  %145 = sext i32 %144 to i64
  br label %146

146:                                              ; preds = %137, %136
  %147 = phi i64 [ %134, %136 ], [ %145, %137 ]
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 7
  store i32 %148, i32* %149, align 4
  %150 = load i64*, i64** %7, align 8
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call i32 @ccu_nkmp_find_best(i64 %151, i64 %152, %struct._ccu_nkmp* %9)
  %154 = load i64*, i64** %7, align 8
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 10
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %9, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @ccu_nkmp_calc_rate(i64 %155, i32 %157, i32 %159, i32 %161, i32 %163)
  store i64 %164, i64* %6, align 8
  %165 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %166 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %146
  %173 = load i64, i64* %6, align 8
  %174 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %8, align 8
  %175 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = udiv i64 %173, %176
  store i64 %177, i64* %6, align 8
  br label %178

178:                                              ; preds = %172, %146
  %179 = load i64, i64* %6, align 8
  store i64 %179, i64* %4, align 8
  br label %180

180:                                              ; preds = %178, %53
  %181 = load i64, i64* %4, align 8
  ret i64 %181
}

declare dso_local %struct.ccu_nkmp* @hw_to_ccu_nkmp(%struct.clk_hw*) #1

declare dso_local i32 @ccu_nkmp_find_best(i64, i64, %struct._ccu_nkmp*) #1

declare dso_local i64 @ccu_nkmp_calc_rate(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
