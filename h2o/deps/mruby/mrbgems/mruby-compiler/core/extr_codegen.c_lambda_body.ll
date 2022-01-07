; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_lambda_body.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_lambda_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32, i64, %struct.TYPE_32__*, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_33__*, %struct.TYPE_33__* }
%struct.loopinfo = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"unexpected scope\00", align 1
@LOOP_BLOCK = common dso_local global i32 0, align 4
@OP_ENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"too many formal arguments\00", align 1
@OP_JMP = common dso_local global i32 0, align 4
@VAL = common dso_local global i32 0, align 4
@NODE_ARGS_TAIL = common dso_local global i64 0, align 8
@NODE_KW_ARG = common dso_local global i64 0, align 8
@OP_KEY_P = common dso_local global i32 0, align 4
@OP_JMPIF = common dso_local global i32 0, align 4
@OP_KARG = common dso_local global i32 0, align 4
@OP_KEYEND = common dso_local global i32 0, align 4
@NODE_MASGN = common dso_local global i64 0, align 8
@NOVAL = common dso_local global i32 0, align 4
@OP_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*, %struct.TYPE_33__*, i32)* @lambda_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lambda_body(%struct.TYPE_34__* %0, %struct.TYPE_33__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.loopinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_33__*, align 8
  %21 = alloca %struct.TYPE_33__*, align 8
  %22 = alloca %struct.TYPE_33__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_33__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_33__*, align 8
  %29 = alloca %struct.TYPE_33__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_33__*, align 8
  %32 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  store i32 %2, i32* %6, align 4
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  store %struct.TYPE_34__* %33, %struct.TYPE_34__** %7, align 8
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %39, align 8
  %41 = call %struct.TYPE_34__* @scope_new(i32 %36, %struct.TYPE_34__* %37, %struct.TYPE_33__* %40)
  store %struct.TYPE_34__* %41, %struct.TYPE_34__** %4, align 8
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %43 = icmp eq %struct.TYPE_34__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %46 = call i32 @raise_error(%struct.TYPE_34__* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %3
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %58 = load i32, i32* @LOOP_BLOCK, align 4
  %59 = call %struct.loopinfo* @loop_push(%struct.TYPE_34__* %57, i32 %58)
  store %struct.loopinfo* %59, %struct.loopinfo** %8, align 8
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %61 = call i8* @new_label(%struct.TYPE_34__* %60)
  %62 = load %struct.loopinfo*, %struct.loopinfo** %8, align 8
  %63 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %56, %47
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %66, align 8
  store %struct.TYPE_33__* %67, %struct.TYPE_33__** %5, align 8
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %69, align 8
  %71 = icmp eq %struct.TYPE_33__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %74 = load i32, i32* @OP_ENTER, align 4
  %75 = call i32 @genop_W(%struct.TYPE_34__* %73, i32 %74, i32 0)
  br label %537

76:                                               ; preds = %64
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %80, align 8
  %82 = call i32 @node_len(%struct.TYPE_33__* %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %86, align 8
  store %struct.TYPE_33__* %87, %struct.TYPE_33__** %20, align 8
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %97, align 8
  store %struct.TYPE_33__* %98, %struct.TYPE_33__** %22, align 8
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %104, align 8
  %106 = call i32 @node_len(%struct.TYPE_33__* %105)
  store i32 %106, i32* %11, align 4
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %114, align 8
  %116 = icmp ne %struct.TYPE_33__* %115, null
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  store i32 %118, i32* %12, align 4
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %128, align 8
  %130 = call i32 @node_len(%struct.TYPE_33__* %129)
  store i32 %130, i32* %13, align 4
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %140, align 8
  store %struct.TYPE_33__* %141, %struct.TYPE_33__** %21, align 8
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %143 = icmp ne %struct.TYPE_33__* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %76
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %148, align 8
  %150 = call i32 @node_len(%struct.TYPE_33__* %149)
  br label %152

151:                                              ; preds = %76
  br label %152

152:                                              ; preds = %151, %144
  %153 = phi i32 [ %150, %144 ], [ 0, %151 ]
  store i32 %153, i32* %14, align 4
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %155 = icmp ne %struct.TYPE_33__* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %162, align 8
  %164 = icmp ne %struct.TYPE_33__* %163, null
  br label %165

165:                                              ; preds = %156, %152
  %166 = phi i1 [ false, %152 ], [ %164, %156 ]
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  store i32 %168, i32* %15, align 4
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %170 = icmp ne %struct.TYPE_33__* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %165
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %179, align 8
  %181 = icmp ne %struct.TYPE_33__* %180, null
  br label %182

182:                                              ; preds = %171, %165
  %183 = phi i1 [ false, %165 ], [ %181, %171 ]
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 1, i32 0
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp sgt i32 %186, 31
  br i1 %187, label %197, label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %11, align 4
  %190 = icmp sgt i32 %189, 31
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %13, align 4
  %193 = icmp sgt i32 %192, 31
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = icmp sgt i32 %195, 31
  br i1 %196, label %197, label %200

197:                                              ; preds = %194, %191, %188, %182
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %199 = call i32 @codegen_error(%struct.TYPE_34__* %198, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @MRB_ARGS_REQ(i32 %201)
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @MRB_ARGS_OPT(i32 %203)
  %205 = or i32 %202, %204
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %200
  %209 = call i32 (...) @MRB_ARGS_REST()
  br label %211

210:                                              ; preds = %200
  br label %211

211:                                              ; preds = %210, %208
  %212 = phi i32 [ %209, %208 ], [ 0, %210 ]
  %213 = or i32 %205, %212
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @MRB_ARGS_POST(i32 %214)
  %216 = or i32 %213, %215
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %15, align 4
  %219 = call i32 @MRB_ARGS_KEY(i32 %217, i32 %218)
  %220 = or i32 %216, %219
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %211
  %224 = call i32 (...) @MRB_ARGS_BLOCK()
  br label %226

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %225, %223
  %227 = phi i32 [ %224, %223 ], [ 0, %225 ]
  %228 = or i32 %220, %227
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %229, %230
  %232 = and i32 %231, 63
  %233 = shl i32 %232, 7
  %234 = load i32, i32* %12, align 4
  %235 = and i32 %234, 1
  %236 = shl i32 %235, 6
  %237 = or i32 %233, %236
  %238 = load i32, i32* %13, align 4
  %239 = and i32 %238, 31
  %240 = shl i32 %239, 1
  %241 = or i32 %237, %240
  %242 = load i32, i32* %15, align 4
  %243 = and i32 %242, 1
  %244 = or i32 %241, %243
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %248 = load i32, i32* @OP_ENTER, align 4
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @genop_W(%struct.TYPE_34__* %247, i32 %248, i32 %249)
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %252 = call i8* @new_label(%struct.TYPE_34__* %251)
  %253 = ptrtoint i8* %252 to i32
  store i32 %253, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %254

254:                                              ; preds = %264, %226
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %267

258:                                              ; preds = %254
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %260 = call i8* @new_label(%struct.TYPE_34__* %259)
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %262 = load i32, i32* @OP_JMP, align 4
  %263 = call i32 @genjmp(%struct.TYPE_34__* %261, i32 %262, i32 0)
  br label %264

264:                                              ; preds = %258
  %265 = load i32, i32* %18, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %18, align 4
  br label %254

267:                                              ; preds = %254
  %268 = load i32, i32* %11, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %267
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %272 = load i32, i32* @OP_JMP, align 4
  %273 = call i32 @genjmp(%struct.TYPE_34__* %271, i32 %272, i32 0)
  br label %274

274:                                              ; preds = %270, %267
  %275 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %280, align 8
  store %struct.TYPE_33__* %281, %struct.TYPE_33__** %19, align 8
  store i32 0, i32* %18, align 4
  br label %282

282:                                              ; preds = %285, %274
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %284 = icmp ne %struct.TYPE_33__* %283, null
  br i1 %284, label %285, label %319

285:                                              ; preds = %282
  %286 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %287 = load i32, i32* %17, align 4
  %288 = load i32, i32* %18, align 4
  %289 = mul nsw i32 %288, 3
  %290 = add nsw i32 %287, %289
  %291 = add nsw i32 %290, 1
  %292 = call i32 @dispatch(%struct.TYPE_34__* %286, i32 %291)
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_33__*, %struct.TYPE_33__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_33__*, %struct.TYPE_33__** %297, align 8
  %299 = load i32, i32* @VAL, align 4
  %300 = call i32 @codegen(%struct.TYPE_34__* %293, %struct.TYPE_33__* %298, i32 %299)
  %301 = call i32 (...) @pop()
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %303 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %306, align 8
  %308 = call i32 @nsym(%struct.TYPE_33__* %307)
  %309 = call i32 @lv_idx(%struct.TYPE_34__* %302, i32 %308)
  store i32 %309, i32* %23, align 4
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %311 = load i32, i32* %23, align 4
  %312 = call i32 (...) @cursp()
  %313 = call i32 @gen_move(%struct.TYPE_34__* %310, i32 %311, i32 %312, i32 0)
  %314 = load i32, i32* %18, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %18, align 4
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %317, align 8
  store %struct.TYPE_33__* %318, %struct.TYPE_33__** %19, align 8
  br label %282

319:                                              ; preds = %282
  %320 = load i32, i32* %11, align 4
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %319
  %323 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* %18, align 4
  %326 = mul nsw i32 %325, 3
  %327 = add nsw i32 %324, %326
  %328 = add nsw i32 %327, 1
  %329 = call i32 @dispatch(%struct.TYPE_34__* %323, i32 %328)
  br label %330

330:                                              ; preds = %322, %319
  %331 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %332 = icmp ne %struct.TYPE_33__* %331, null
  br i1 %332, label %333, label %458

333:                                              ; preds = %330
  %334 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %335 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_33__*, %struct.TYPE_33__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_33__*, %struct.TYPE_33__** %337, align 8
  store %struct.TYPE_33__* %338, %struct.TYPE_33__** %24, align 8
  store i32 0, i32* %25, align 4
  %339 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %340 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %344, align 8
  %346 = icmp ne %struct.TYPE_33__* %345, null
  br i1 %346, label %347, label %348

347:                                              ; preds = %333
  store i32 1, i32* %25, align 4
  br label %348

348:                                              ; preds = %347, %333
  %349 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %350 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %350, align 8
  %352 = call i64 @nint(%struct.TYPE_33__* %351)
  %353 = load i64, i64* @NODE_ARGS_TAIL, align 8
  %354 = icmp eq i64 %352, %353
  %355 = zext i1 %354 to i32
  %356 = call i32 @mrb_assert(i32 %355)
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %358 = call i32 @node_len(%struct.TYPE_33__* %357)
  %359 = icmp eq i32 %358, 4
  %360 = zext i1 %359 to i32
  %361 = call i32 @mrb_assert(i32 %360)
  br label %362

362:                                              ; preds = %437, %348
  %363 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %364 = icmp ne %struct.TYPE_33__* %363, null
  br i1 %364, label %365, label %443

365:                                              ; preds = %362
  store i32 -1, i32* %27, align 4
  %366 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %367 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %367, align 8
  store %struct.TYPE_33__* %368, %struct.TYPE_33__** %28, align 8
  %369 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %370 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_33__*, %struct.TYPE_33__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_33__*, %struct.TYPE_33__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_33__*, %struct.TYPE_33__** %374, align 8
  store %struct.TYPE_33__* %375, %struct.TYPE_33__** %29, align 8
  %376 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %377 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_33__*, %struct.TYPE_33__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_33__*, %struct.TYPE_33__** %379, align 8
  %381 = call i32 @nsym(%struct.TYPE_33__* %380)
  store i32 %381, i32* %30, align 4
  %382 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %383 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_33__*, %struct.TYPE_33__** %383, align 8
  %385 = call i64 @nint(%struct.TYPE_33__* %384)
  %386 = load i64, i64* @NODE_KW_ARG, align 8
  %387 = icmp eq i64 %385, %386
  %388 = zext i1 %387 to i32
  %389 = call i32 @mrb_assert(i32 %388)
  %390 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  %391 = icmp ne %struct.TYPE_33__* %390, null
  br i1 %391, label %392, label %421

392:                                              ; preds = %365
  %393 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %394 = load i32, i32* @OP_KEY_P, align 4
  %395 = call i32 (...) @cursp()
  %396 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %397 = load i32, i32* %30, align 4
  %398 = call i32 @new_sym(%struct.TYPE_34__* %396, i32 %397)
  %399 = call i32 @genop_2(%struct.TYPE_34__* %393, i32 %394, i32 %395, i32 %398)
  %400 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %401 = load i32, i32* @OP_JMPIF, align 4
  %402 = call i32 (...) @cursp()
  %403 = call i32 @genjmp2(%struct.TYPE_34__* %400, i32 %401, i32 %402, i32 0, i32 0)
  store i32 %403, i32* %26, align 4
  %404 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  %406 = load i32, i32* @VAL, align 4
  %407 = call i32 @codegen(%struct.TYPE_34__* %404, %struct.TYPE_33__* %405, i32 %406)
  %408 = call i32 (...) @pop()
  %409 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %410 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %411 = load i32, i32* %30, align 4
  %412 = call i32 @lv_idx(%struct.TYPE_34__* %410, i32 %411)
  %413 = call i32 (...) @cursp()
  %414 = call i32 @gen_move(%struct.TYPE_34__* %409, i32 %412, i32 %413, i32 0)
  %415 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %416 = load i32, i32* @OP_JMP, align 4
  %417 = call i32 @genjmp(%struct.TYPE_34__* %415, i32 %416, i32 0)
  store i32 %417, i32* %27, align 4
  %418 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %419 = load i32, i32* %26, align 4
  %420 = call i32 @dispatch(%struct.TYPE_34__* %418, i32 %419)
  br label %421

421:                                              ; preds = %392, %365
  %422 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %423 = load i32, i32* @OP_KARG, align 4
  %424 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %425 = load i32, i32* %30, align 4
  %426 = call i32 @lv_idx(%struct.TYPE_34__* %424, i32 %425)
  %427 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %428 = load i32, i32* %30, align 4
  %429 = call i32 @new_sym(%struct.TYPE_34__* %427, i32 %428)
  %430 = call i32 @genop_2(%struct.TYPE_34__* %422, i32 %423, i32 %426, i32 %429)
  %431 = load i32, i32* %27, align 4
  %432 = icmp ne i32 %431, -1
  br i1 %432, label %433, label %437

433:                                              ; preds = %421
  %434 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %435 = load i32, i32* %27, align 4
  %436 = call i32 @dispatch(%struct.TYPE_34__* %434, i32 %435)
  br label %437

437:                                              ; preds = %433, %421
  %438 = load i32, i32* %18, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %18, align 4
  %440 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 1
  %442 = load %struct.TYPE_33__*, %struct.TYPE_33__** %441, align 8
  store %struct.TYPE_33__* %442, %struct.TYPE_33__** %24, align 8
  br label %362

443:                                              ; preds = %362
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %445 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_33__*, %struct.TYPE_33__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_33__*, %struct.TYPE_33__** %447, align 8
  %449 = icmp ne %struct.TYPE_33__* %448, null
  br i1 %449, label %450, label %457

450:                                              ; preds = %443
  %451 = load i32, i32* %25, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %450
  %454 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %455 = load i32, i32* @OP_KEYEND, align 4
  %456 = call i32 @genop_0(%struct.TYPE_34__* %454, i32 %455)
  br label %457

457:                                              ; preds = %453, %450, %443
  br label %458

458:                                              ; preds = %457, %330
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %460 = icmp ne %struct.TYPE_33__* %459, null
  br i1 %460, label %461, label %494

461:                                              ; preds = %458
  %462 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  store %struct.TYPE_33__* %462, %struct.TYPE_33__** %31, align 8
  store i32 1, i32* %17, align 4
  br label %463

463:                                              ; preds = %487, %461
  %464 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %465 = icmp ne %struct.TYPE_33__* %464, null
  br i1 %465, label %466, label %493

466:                                              ; preds = %463
  %467 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %468 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_33__*, %struct.TYPE_33__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %469, i32 0, i32 0
  %471 = load %struct.TYPE_33__*, %struct.TYPE_33__** %470, align 8
  %472 = call i64 @nint(%struct.TYPE_33__* %471)
  %473 = load i64, i64* @NODE_MASGN, align 8
  %474 = icmp eq i64 %472, %473
  br i1 %474, label %475, label %487

475:                                              ; preds = %466
  %476 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %477 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %478 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %477, i32 0, i32 0
  %479 = load %struct.TYPE_33__*, %struct.TYPE_33__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_33__*, %struct.TYPE_33__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %481, i32 0, i32 0
  %483 = load %struct.TYPE_33__*, %struct.TYPE_33__** %482, align 8
  %484 = load i32, i32* %17, align 4
  %485 = load i32, i32* @NOVAL, align 4
  %486 = call i32 @gen_vmassignment(%struct.TYPE_34__* %476, %struct.TYPE_33__* %483, i32 %484, i32 %485)
  br label %487

487:                                              ; preds = %475, %466
  %488 = load i32, i32* %17, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %17, align 4
  %490 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %491 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %490, i32 0, i32 1
  %492 = load %struct.TYPE_33__*, %struct.TYPE_33__** %491, align 8
  store %struct.TYPE_33__* %492, %struct.TYPE_33__** %31, align 8
  br label %463

493:                                              ; preds = %463
  br label %494

494:                                              ; preds = %493, %458
  %495 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %496 = icmp ne %struct.TYPE_33__* %495, null
  br i1 %496, label %497, label %536

497:                                              ; preds = %494
  %498 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  store %struct.TYPE_33__* %498, %struct.TYPE_33__** %32, align 8
  %499 = load i32, i32* %10, align 4
  %500 = load i32, i32* %11, align 4
  %501 = add nsw i32 %499, %500
  %502 = load i32, i32* %12, align 4
  %503 = add nsw i32 %501, %502
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %17, align 4
  br label %505

505:                                              ; preds = %529, %497
  %506 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %507 = icmp ne %struct.TYPE_33__* %506, null
  br i1 %507, label %508, label %535

508:                                              ; preds = %505
  %509 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %510 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %509, i32 0, i32 0
  %511 = load %struct.TYPE_33__*, %struct.TYPE_33__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_33__*, %struct.TYPE_33__** %512, align 8
  %514 = call i64 @nint(%struct.TYPE_33__* %513)
  %515 = load i64, i64* @NODE_MASGN, align 8
  %516 = icmp eq i64 %514, %515
  br i1 %516, label %517, label %529

517:                                              ; preds = %508
  %518 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %519 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %520 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %519, i32 0, i32 0
  %521 = load %struct.TYPE_33__*, %struct.TYPE_33__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %521, i32 0, i32 1
  %523 = load %struct.TYPE_33__*, %struct.TYPE_33__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %523, i32 0, i32 0
  %525 = load %struct.TYPE_33__*, %struct.TYPE_33__** %524, align 8
  %526 = load i32, i32* %17, align 4
  %527 = load i32, i32* @NOVAL, align 4
  %528 = call i32 @gen_vmassignment(%struct.TYPE_34__* %518, %struct.TYPE_33__* %525, i32 %526, i32 %527)
  br label %529

529:                                              ; preds = %517, %508
  %530 = load i32, i32* %17, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %17, align 4
  %532 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %533 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %532, i32 0, i32 1
  %534 = load %struct.TYPE_33__*, %struct.TYPE_33__** %533, align 8
  store %struct.TYPE_33__* %534, %struct.TYPE_33__** %32, align 8
  br label %505

535:                                              ; preds = %505
  br label %536

536:                                              ; preds = %535, %494
  br label %537

537:                                              ; preds = %536, %72
  %538 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %539 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %540 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %539, i32 0, i32 1
  %541 = load %struct.TYPE_33__*, %struct.TYPE_33__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %541, i32 0, i32 0
  %543 = load %struct.TYPE_33__*, %struct.TYPE_33__** %542, align 8
  %544 = load i32, i32* @VAL, align 4
  %545 = call i32 @codegen(%struct.TYPE_34__* %538, %struct.TYPE_33__* %543, i32 %544)
  %546 = call i32 (...) @pop()
  %547 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %548 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %547, i32 0, i32 2
  %549 = load i64, i64* %548, align 8
  %550 = icmp sgt i64 %549, 0
  br i1 %550, label %551, label %556

551:                                              ; preds = %537
  %552 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %553 = load i32, i32* @OP_RETURN, align 4
  %554 = call i32 (...) @cursp()
  %555 = call i32 @gen_return(%struct.TYPE_34__* %552, i32 %553, i32 %554)
  br label %556

556:                                              ; preds = %551, %537
  %557 = load i32, i32* %6, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %563

559:                                              ; preds = %556
  %560 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %561 = load i32, i32* @NOVAL, align 4
  %562 = call i32 @loop_pop(%struct.TYPE_34__* %560, i32 %561)
  br label %563

563:                                              ; preds = %559, %556
  %564 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %565 = call i32 @scope_finish(%struct.TYPE_34__* %564)
  %566 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %567 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %566, i32 0, i32 3
  %568 = load %struct.TYPE_32__*, %struct.TYPE_32__** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = sub nsw i32 %570, 1
  ret i32 %571
}

declare dso_local %struct.TYPE_34__* @scope_new(i32, %struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @raise_error(%struct.TYPE_34__*, i8*) #1

declare dso_local %struct.loopinfo* @loop_push(%struct.TYPE_34__*, i32) #1

declare dso_local i8* @new_label(%struct.TYPE_34__*) #1

declare dso_local i32 @genop_W(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @node_len(%struct.TYPE_33__*) #1

declare dso_local i32 @codegen_error(%struct.TYPE_34__*, i8*) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_OPT(i32) #1

declare dso_local i32 @MRB_ARGS_REST(...) #1

declare dso_local i32 @MRB_ARGS_POST(i32) #1

declare dso_local i32 @MRB_ARGS_KEY(i32, i32) #1

declare dso_local i32 @MRB_ARGS_BLOCK(...) #1

declare dso_local i32 @genjmp(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @dispatch(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @codegen(%struct.TYPE_34__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @lv_idx(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @nsym(%struct.TYPE_33__*) #1

declare dso_local i32 @gen_move(%struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i64 @nint(%struct.TYPE_33__*) #1

declare dso_local i32 @genop_2(%struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @new_sym(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @genjmp2(%struct.TYPE_34__*, i32, i32, i32, i32) #1

declare dso_local i32 @genop_0(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @gen_vmassignment(%struct.TYPE_34__*, %struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @gen_return(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @loop_pop(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @scope_finish(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
