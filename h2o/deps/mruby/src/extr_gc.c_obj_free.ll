; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_obj_free.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_gc.c_obj_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.mrb_context* }
%struct.mrb_context = type { %struct.TYPE_28__*, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { %struct.REnv* }
%struct.REnv = type { i32, i32* }
%struct.RBasic = type { i32 }
%struct.RProc = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32* }
%struct.RData = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_27__*, i32)* }
%struct.RObject = type { i32 }
%struct.RClass = type { i32 }
%struct.RFiber = type { %struct.mrb_context* }
%struct.RArray = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.RHash = type { i32 }
%struct.RString = type { i32 }
%struct.RRange = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"obj_free(%p,tt=%d)\0A\00", align 1
@MRB_FL_CLASS_IS_ORIGIN = common dso_local global i32 0, align 4
@MRB_FIBER_TERMINATED = common dso_local global i32 0, align 4
@MRB_TT_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.RBasic*, i32)* @obj_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obj_free(%struct.TYPE_27__* %0, %struct.RBasic* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.RBasic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.REnv*, align 8
  %8 = alloca %struct.mrb_context*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.REnv*, align 8
  %12 = alloca %struct.RProc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.RData*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.RBasic* %1, %struct.RBasic** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %17 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %18 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.RBasic* %16, i32 %19)
  %21 = call i32 @DEBUG(i32 %20)
  %22 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %23 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %247 [
    i32 128, label %25
    i32 139, label %25
    i32 129, label %25
    i32 138, label %26
    i32 134, label %27
    i32 141, label %32
    i32 144, label %37
    i32 135, label %37
    i32 131, label %37
    i32 136, label %46
    i32 142, label %57
    i32 140, label %74
    i32 145, label %141
    i32 137, label %170
    i32 130, label %179
    i32 133, label %184
    i32 132, label %212
    i32 143, label %217
  ]

25:                                               ; preds = %3, %3, %3
  br label %252

26:                                               ; preds = %3
  br label %252

27:                                               ; preds = %3
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %29 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %30 = bitcast %struct.RBasic* %29 to %struct.RObject*
  %31 = call i32 @mrb_gc_free_iv(%struct.TYPE_27__* %28, %struct.RObject* %30)
  br label %248

32:                                               ; preds = %3
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %34 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %35 = bitcast %struct.RBasic* %34 to %struct.RObject*
  %36 = call i32 @mrb_gc_free_iv(%struct.TYPE_27__* %33, %struct.RObject* %35)
  br label %248

37:                                               ; preds = %3, %3, %3
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %39 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %40 = bitcast %struct.RBasic* %39 to %struct.RClass*
  %41 = call i32 @mrb_gc_free_mt(%struct.TYPE_27__* %38, %struct.RClass* %40)
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %43 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %44 = bitcast %struct.RBasic* %43 to %struct.RObject*
  %45 = call i32 @mrb_gc_free_iv(%struct.TYPE_27__* %42, %struct.RObject* %44)
  br label %248

46:                                               ; preds = %3
  %47 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %48 = load i32, i32* @MRB_FL_CLASS_IS_ORIGIN, align 4
  %49 = call i32 @MRB_FLAG_TEST(%struct.RBasic* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %53 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %54 = bitcast %struct.RBasic* %53 to %struct.RClass*
  %55 = call i32 @mrb_gc_free_mt(%struct.TYPE_27__* %52, %struct.RClass* %54)
  br label %56

56:                                               ; preds = %51, %46
  br label %248

57:                                               ; preds = %3
  %58 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %59 = bitcast %struct.RBasic* %58 to %struct.REnv*
  store %struct.REnv* %59, %struct.REnv** %7, align 8
  %60 = load %struct.REnv*, %struct.REnv** %7, align 8
  %61 = call i32 @MRB_ENV_STACK_SHARED_P(%struct.REnv* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.REnv*, %struct.REnv** %7, align 8
  %65 = getelementptr inbounds %struct.REnv, %struct.REnv* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %248

66:                                               ; preds = %57
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %68 = load %struct.REnv*, %struct.REnv** %7, align 8
  %69 = getelementptr inbounds %struct.REnv, %struct.REnv* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @mrb_free(%struct.TYPE_27__* %67, i32* %70)
  %72 = load %struct.REnv*, %struct.REnv** %7, align 8
  %73 = getelementptr inbounds %struct.REnv, %struct.REnv* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  br label %248

74:                                               ; preds = %3
  %75 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %76 = bitcast %struct.RBasic* %75 to %struct.RFiber*
  %77 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %76, i32 0, i32 0
  %78 = load %struct.mrb_context*, %struct.mrb_context** %77, align 8
  store %struct.mrb_context* %78, %struct.mrb_context** %8, align 8
  %79 = load %struct.mrb_context*, %struct.mrb_context** %8, align 8
  %80 = icmp ne %struct.mrb_context* %79, null
  br i1 %80, label %81, label %140

81:                                               ; preds = %74
  %82 = load %struct.mrb_context*, %struct.mrb_context** %8, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = load %struct.mrb_context*, %struct.mrb_context** %84, align 8
  %86 = icmp ne %struct.mrb_context* %82, %85
  br i1 %86, label %87, label %140

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %136, label %90

90:                                               ; preds = %87
  %91 = load %struct.mrb_context*, %struct.mrb_context** %8, align 8
  %92 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MRB_FIBER_TERMINATED, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %136

96:                                               ; preds = %90
  %97 = load %struct.mrb_context*, %struct.mrb_context** %8, align 8
  %98 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %97, i32 0, i32 1
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %98, align 8
  store %struct.TYPE_28__* %99, %struct.TYPE_28__** %9, align 8
  %100 = load %struct.mrb_context*, %struct.mrb_context** %8, align 8
  %101 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %100, i32 0, i32 0
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %101, align 8
  store %struct.TYPE_28__* %102, %struct.TYPE_28__** %10, align 8
  br label %103

103:                                              ; preds = %132, %96
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %106 = icmp ule %struct.TYPE_28__* %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 0
  %110 = load %struct.REnv*, %struct.REnv** %109, align 8
  store %struct.REnv* %110, %struct.REnv** %11, align 8
  %111 = load %struct.REnv*, %struct.REnv** %11, align 8
  %112 = icmp ne %struct.REnv* %111, null
  br i1 %112, label %113, label %132

113:                                              ; preds = %107
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %115 = load %struct.REnv*, %struct.REnv** %11, align 8
  %116 = bitcast %struct.REnv* %115 to %struct.RBasic*
  %117 = call i32 @mrb_object_dead_p(%struct.TYPE_27__* %114, %struct.RBasic* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %113
  %120 = load %struct.REnv*, %struct.REnv** %11, align 8
  %121 = getelementptr inbounds %struct.REnv, %struct.REnv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 142
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.REnv*, %struct.REnv** %11, align 8
  %126 = call i32 @MRB_ENV_STACK_SHARED_P(%struct.REnv* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %130 = load %struct.REnv*, %struct.REnv** %11, align 8
  %131 = call i32 @mrb_env_unshare(%struct.TYPE_27__* %129, %struct.REnv* %130)
  br label %132

132:                                              ; preds = %128, %124, %119, %113, %107
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 -1
  store %struct.TYPE_28__* %134, %struct.TYPE_28__** %9, align 8
  br label %103

135:                                              ; preds = %103
  br label %136

136:                                              ; preds = %135, %90, %87
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %138 = load %struct.mrb_context*, %struct.mrb_context** %8, align 8
  %139 = call i32 @mrb_free_context(%struct.TYPE_27__* %137, %struct.mrb_context* %138)
  br label %140

140:                                              ; preds = %136, %81, %74
  br label %248

141:                                              ; preds = %3
  %142 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %143 = call i32 @ARY_SHARED_P(%struct.RBasic* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %147 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %148 = bitcast %struct.RBasic* %147 to %struct.RArray*
  %149 = getelementptr inbounds %struct.RArray, %struct.RArray* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @mrb_ary_decref(%struct.TYPE_27__* %146, i32 %153)
  br label %169

155:                                              ; preds = %141
  %156 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %157 = call i32 @ARY_EMBED_P(%struct.RBasic* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %155
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %161 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %162 = bitcast %struct.RBasic* %161 to %struct.RArray*
  %163 = getelementptr inbounds %struct.RArray, %struct.RArray* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @mrb_free(%struct.TYPE_27__* %160, i32* %166)
  br label %168

168:                                              ; preds = %159, %155
  br label %169

169:                                              ; preds = %168, %145
  br label %248

170:                                              ; preds = %3
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %172 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %173 = bitcast %struct.RBasic* %172 to %struct.RObject*
  %174 = call i32 @mrb_gc_free_iv(%struct.TYPE_27__* %171, %struct.RObject* %173)
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %176 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %177 = bitcast %struct.RBasic* %176 to %struct.RHash*
  %178 = call i32 @mrb_gc_free_hash(%struct.TYPE_27__* %175, %struct.RHash* %177)
  br label %248

179:                                              ; preds = %3
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %181 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %182 = bitcast %struct.RBasic* %181 to %struct.RString*
  %183 = call i32 @mrb_gc_free_str(%struct.TYPE_27__* %180, %struct.RString* %182)
  br label %248

184:                                              ; preds = %3
  %185 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %186 = bitcast %struct.RBasic* %185 to %struct.RProc*
  store %struct.RProc* %186, %struct.RProc** %12, align 8
  %187 = load %struct.RProc*, %struct.RProc** %12, align 8
  %188 = call i32 @MRB_PROC_CFUNC_P(%struct.RProc* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %211, label %190

190:                                              ; preds = %184
  %191 = load %struct.RProc*, %struct.RProc** %12, align 8
  %192 = getelementptr inbounds %struct.RProc, %struct.RProc* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %211

196:                                              ; preds = %190
  %197 = load %struct.RProc*, %struct.RProc** %12, align 8
  %198 = getelementptr inbounds %struct.RProc, %struct.RProc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %13, align 8
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %205 = load i32*, i32** %13, align 8
  %206 = call i32 @mrb_irep_cutref(%struct.TYPE_27__* %204, i32* %205)
  br label %207

207:                                              ; preds = %203, %196
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %209 = load i32*, i32** %13, align 8
  %210 = call i32 @mrb_irep_decref(%struct.TYPE_27__* %208, i32* %209)
  br label %211

211:                                              ; preds = %207, %190, %184
  br label %248

212:                                              ; preds = %3
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %214 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %215 = bitcast %struct.RBasic* %214 to %struct.RRange*
  %216 = call i32 @mrb_gc_free_range(%struct.TYPE_27__* %213, %struct.RRange* %215)
  br label %248

217:                                              ; preds = %3
  %218 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %219 = bitcast %struct.RBasic* %218 to %struct.RData*
  store %struct.RData* %219, %struct.RData** %14, align 8
  %220 = load %struct.RData*, %struct.RData** %14, align 8
  %221 = getelementptr inbounds %struct.RData, %struct.RData* %220, i32 0, i32 1
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %221, align 8
  %223 = icmp ne %struct.TYPE_26__* %222, null
  br i1 %223, label %224, label %242

224:                                              ; preds = %217
  %225 = load %struct.RData*, %struct.RData** %14, align 8
  %226 = getelementptr inbounds %struct.RData, %struct.RData* %225, i32 0, i32 1
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  %229 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %228, align 8
  %230 = icmp ne i32 (%struct.TYPE_27__*, i32)* %229, null
  br i1 %230, label %231, label %242

231:                                              ; preds = %224
  %232 = load %struct.RData*, %struct.RData** %14, align 8
  %233 = getelementptr inbounds %struct.RData, %struct.RData* %232, i32 0, i32 1
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 0
  %236 = load i32 (%struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_27__*, i32)** %235, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %238 = load %struct.RData*, %struct.RData** %14, align 8
  %239 = getelementptr inbounds %struct.RData, %struct.RData* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 %236(%struct.TYPE_27__* %237, i32 %240)
  br label %242

242:                                              ; preds = %231, %224, %217
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %244 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %245 = bitcast %struct.RBasic* %244 to %struct.RObject*
  %246 = call i32 @mrb_gc_free_iv(%struct.TYPE_27__* %243, %struct.RObject* %245)
  br label %248

247:                                              ; preds = %3
  br label %248

248:                                              ; preds = %247, %242, %212, %211, %179, %170, %169, %140, %66, %63, %56, %37, %32, %27
  %249 = load i32, i32* @MRB_TT_FREE, align 4
  %250 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %251 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %248, %26, %25
  ret void
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.RBasic*, i32) #1

declare dso_local i32 @mrb_gc_free_iv(%struct.TYPE_27__*, %struct.RObject*) #1

declare dso_local i32 @mrb_gc_free_mt(%struct.TYPE_27__*, %struct.RClass*) #1

declare dso_local i32 @MRB_FLAG_TEST(%struct.RBasic*, i32) #1

declare dso_local i32 @MRB_ENV_STACK_SHARED_P(%struct.REnv*) #1

declare dso_local i32 @mrb_free(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @mrb_object_dead_p(%struct.TYPE_27__*, %struct.RBasic*) #1

declare dso_local i32 @mrb_env_unshare(%struct.TYPE_27__*, %struct.REnv*) #1

declare dso_local i32 @mrb_free_context(%struct.TYPE_27__*, %struct.mrb_context*) #1

declare dso_local i32 @ARY_SHARED_P(%struct.RBasic*) #1

declare dso_local i32 @mrb_ary_decref(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ARY_EMBED_P(%struct.RBasic*) #1

declare dso_local i32 @mrb_gc_free_hash(%struct.TYPE_27__*, %struct.RHash*) #1

declare dso_local i32 @mrb_gc_free_str(%struct.TYPE_27__*, %struct.RString*) #1

declare dso_local i32 @MRB_PROC_CFUNC_P(%struct.RProc*) #1

declare dso_local i32 @mrb_irep_cutref(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @mrb_irep_decref(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @mrb_gc_free_range(%struct.TYPE_27__*, %struct.RRange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
