; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_lbr_read_64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_lbr_read_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cpu_hw_events = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@x86_pmu = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@LBR_NO_INFO = common dso_local global i32 0, align 4
@LBR_CALL_STACK = common dso_local global i32 0, align 4
@lbr_desc = common dso_local global i32* null, align 8
@LBR_FORMAT_INFO = common dso_local global i32 0, align 4
@MSR_LBR_INFO_0 = common dso_local global i64 0, align 8
@LBR_INFO_MISPRED = common dso_local global i32 0, align 4
@LBR_INFO_IN_TX = common dso_local global i32 0, align 4
@LBR_INFO_ABORT = common dso_local global i32 0, align 4
@LBR_INFO_CYCLES = common dso_local global i32 0, align 4
@LBR_FORMAT_TIME = common dso_local global i32 0, align 4
@LBR_FROM_FLAG_MISPRED = common dso_local global i32 0, align 4
@LBR_EIP_FLAGS = common dso_local global i32 0, align 4
@LBR_TSX = common dso_local global i32 0, align 4
@LBR_FROM_FLAG_IN_TX = common dso_local global i32 0, align 4
@LBR_FROM_FLAG_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @intel_pmu_lbr_read_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_lbr_read_64(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 0), align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 2, i32 0), align 8
  store i32 %25, i32* %6, align 4
  %26 = call i32 (...) @intel_pmu_lbr_tos()
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 0), align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %1
  %33 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %34 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LBR_NO_INFO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  %43 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %44 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LBR_CALL_STACK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %1
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %271, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %274

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %5, align 8
  %64 = and i64 %62, %63
  store i64 %64, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %65 = load i32*, i32** @lbr_desc, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %20, align 4
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @rdlbr_from(i64 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @rdlbr_to(i64 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %58
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %274

80:                                               ; preds = %76, %58
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @LBR_FORMAT_INFO, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %84
  %88 = load i64, i64* @MSR_LBR_INFO_0, align 8
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %88, %89
  %91 = load i32, i32* %21, align 4
  %92 = call i32 @rdmsrl(i64 %90, i32 %91)
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* @LBR_INFO_MISPRED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* @LBR_INFO_IN_TX, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* @LBR_INFO_ABORT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* @LBR_INFO_CYCLES, align 4
  %120 = and i32 %118, %119
  store i32 %120, i32* %19, align 4
  br label %121

121:                                              ; preds = %87, %84, %80
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @LBR_FORMAT_TIME, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @LBR_FROM_FLAG_MISPRED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %15, align 4
  store i32 1, i32* %18, align 4
  %137 = load i32, i32* %13, align 4
  %138 = ashr i32 %137, 48
  %139 = load i32, i32* @LBR_INFO_CYCLES, align 4
  %140 = and i32 %138, %139
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %13, align 4
  %142 = shl i32 %141, 16
  %143 = ashr i32 %142, 16
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %125, %121
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* @LBR_EIP_FLAGS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @LBR_FROM_FLAG_MISPRED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %15, align 4
  store i32 1, i32* %18, align 4
  br label %161

161:                                              ; preds = %149, %144
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* @LBR_TSX, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @LBR_FROM_FLAG_IN_TX, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @LBR_FROM_FLAG_ABORT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %17, align 4
  store i32 3, i32* %18, align 4
  br label %181

181:                                              ; preds = %166, %161
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %18, align 4
  %184 = shl i32 %182, %183
  %185 = load i32, i32* %18, align 4
  %186 = ashr i32 %184, %185
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %181
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 1), align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32, i32* %9, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %195, %192, %189, %181
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %201 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %200, i32 0, i32 1
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  store i32 %199, i32* %206, align 8
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %209 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %208, i32 0, i32 1
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  store i32 %207, i32* %214, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %217 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %216, i32 0, i32 1
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  store i32 %215, i32* %222, align 8
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %225 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %224, i32 0, i32 1
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  store i32 %223, i32* %230, align 4
  %231 = load i32, i32* %16, align 4
  %232 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %233 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %232, i32 0, i32 1
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 4
  store i32 %231, i32* %238, align 8
  %239 = load i32, i32* %17, align 4
  %240 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %241 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %240, i32 0, i32 1
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 5
  store i32 %239, i32* %246, align 4
  %247 = load i32, i32* %19, align 4
  %248 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %249 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %248, i32 0, i32 1
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 6
  store i32 %247, i32* %254, align 8
  %255 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %256 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %255, i32 0, i32 1
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 8
  store i64 0, i64* %261, align 8
  %262 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %263 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %262, i32 0, i32 1
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 7
  store i64 0, i64* %268, align 8
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %271

271:                                              ; preds = %198
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  br label %54

274:                                              ; preds = %79, %54
  %275 = load i32, i32* %9, align 4
  %276 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %277 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  store i32 %275, i32* %278, align 8
  ret void
}

declare dso_local i32 @intel_pmu_lbr_tos(...) #1

declare dso_local i32 @rdlbr_from(i64) #1

declare dso_local i32 @rdlbr_to(i64) #1

declare dso_local i32 @rdmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
