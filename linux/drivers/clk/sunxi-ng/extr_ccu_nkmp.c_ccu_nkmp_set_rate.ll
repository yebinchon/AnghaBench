; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkmp.c_ccu_nkmp_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkmp.c_ccu_nkmp_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_nkmp = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }
%struct._ccu_nkmp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @ccu_nkmp_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_nkmp_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ccu_nkmp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._ccu_nkmp, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call %struct.ccu_nkmp* @hw_to_ccu_nkmp(%struct.clk_hw* %15)
  store %struct.ccu_nkmp* %16, %struct.ccu_nkmp** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %18 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %27 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %25, %28
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %24, %3
  %31 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %32 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %36
  %39 = phi i64 [ %34, %36 ], [ 1, %37 ]
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %43 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %55

48:                                               ; preds = %38
  %49 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %50 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 1, %52
  %54 = sext i32 %53 to i64
  br label %55

55:                                               ; preds = %48, %47
  %56 = phi i64 [ %45, %47 ], [ %54, %48 ]
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %60 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %66

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %64
  %67 = phi i64 [ %62, %64 ], [ 1, %65 ]
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %71 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %83

76:                                               ; preds = %66
  %77 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %78 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 1, %80
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %76, %75
  %84 = phi i64 [ %73, %75 ], [ %82, %76 ]
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 4
  store i32 1, i32* %87, align 4
  %88 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %89 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %101

94:                                               ; preds = %83
  %95 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %96 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 1, %98
  %100 = sext i32 %99 to i64
  br label %101

101:                                              ; preds = %94, %93
  %102 = phi i64 [ %91, %93 ], [ %100, %94 ]
  %103 = trunc i64 %102 to i32
  %104 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 5
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 6
  store i32 1, i32* %105, align 4
  %106 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %107 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %121

112:                                              ; preds = %101
  %113 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %114 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 1, %116
  %118 = sub nsw i32 %117, 1
  %119 = shl i32 1, %118
  %120 = sext i32 %119 to i64
  br label %121

121:                                              ; preds = %112, %111
  %122 = phi i64 [ %109, %111 ], [ %120, %112 ]
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 7
  store i32 %123, i32* %124, align 4
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @ccu_nkmp_find_best(i64 %125, i64 %126, %struct._ccu_nkmp* %12)
  %128 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %129 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %121
  %134 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %135 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %139 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %137, %141
  %143 = sub nsw i32 %142, 1
  %144 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %145 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @GENMASK(i32 %143, i32 %147)
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %133, %121
  %150 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %151 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %149
  %156 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %157 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %161 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %159, %163
  %165 = sub nsw i32 %164, 1
  %166 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %167 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @GENMASK(i32 %165, i32 %169)
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %155, %149
  %172 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %173 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %171
  %178 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %179 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %183 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %181, %185
  %187 = sub nsw i32 %186, 1
  %188 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %189 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @GENMASK(i32 %187, i32 %191)
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %177, %171
  %194 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %195 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %193
  %200 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %201 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %205 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %203, %207
  %209 = sub nsw i32 %208, 1
  %210 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %211 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @GENMASK(i32 %209, i32 %213)
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %199, %193
  %216 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %217 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i64, i64* %13, align 8
  %221 = call i32 @spin_lock_irqsave(i32 %219, i64 %220)
  %222 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %223 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %227 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %225, %229
  %231 = call i32 @readl(i64 %230)
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %9, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* %10, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* %11, align 4
  %238 = or i32 %236, %237
  %239 = xor i32 %238, -1
  %240 = load i32, i32* %14, align 4
  %241 = and i32 %240, %239
  store i32 %241, i32* %14, align 4
  %242 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 8
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %245 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %243, %247
  %249 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %250 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %248, %252
  %254 = load i32, i32* %8, align 4
  %255 = and i32 %253, %254
  %256 = load i32, i32* %14, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %14, align 4
  %258 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 9
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %261 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = sub nsw i32 %259, %263
  %265 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %266 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %264, %268
  %270 = load i32, i32* %9, align 4
  %271 = and i32 %269, %270
  %272 = load i32, i32* %14, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %14, align 4
  %274 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 10
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %277 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %275, %279
  %281 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %282 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = shl i32 %280, %284
  %286 = load i32, i32* %10, align 4
  %287 = and i32 %285, %286
  %288 = load i32, i32* %14, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %14, align 4
  %290 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %12, i32 0, i32 11
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @ilog2(i32 %291)
  %293 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %294 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = shl i32 %292, %296
  %298 = load i32, i32* %11, align 4
  %299 = and i32 %297, %298
  %300 = load i32, i32* %14, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %14, align 4
  %302 = load i32, i32* %14, align 4
  %303 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %304 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %308 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %306, %310
  %312 = call i32 @writel(i32 %302, i64 %311)
  %313 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %314 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load i64, i64* %13, align 8
  %318 = call i32 @spin_unlock_irqrestore(i32 %316, i64 %317)
  %319 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %320 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %319, i32 0, i32 2
  %321 = load %struct.ccu_nkmp*, %struct.ccu_nkmp** %7, align 8
  %322 = getelementptr inbounds %struct.ccu_nkmp, %struct.ccu_nkmp* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @ccu_helper_wait_for_lock(%struct.TYPE_10__* %320, i32 %323)
  ret i32 0
}

declare dso_local %struct.ccu_nkmp* @hw_to_ccu_nkmp(%struct.clk_hw*) #1

declare dso_local i32 @ccu_nkmp_find_best(i64, i64, %struct._ccu_nkmp*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ccu_helper_wait_for_lock(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
