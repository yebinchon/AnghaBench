; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_compile.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytecode = type { i32, i32, i32*, i32, i8*, %struct.bytecode**, i8*, i64, %struct.bytecode*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i8*, i32 }
%struct.TYPE_18__ = type { i64, i32, i8*, %struct.TYPE_17__, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_15__, %struct.TYPE_19__, %struct.bytecode* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i8*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.locfile = type { i32 }
%struct.opcode_description = type { i32, i32 }

@RET = common dso_local global i32 0, align 4
@CALL_JQ = common dso_local global i64 0, align 8
@CLOSURE_REF = common dso_local global i64 0, align 8
@CLOSURE_PARAM = common dso_local global i64 0, align 8
@OP_HAS_VARIABLE = common dso_local global i32 0, align 4
@CLOSURE_CREATE = common dso_local global i64 0, align 8
@CLOSURE_CREATE_C = common dso_local global i64 0, align 8
@UNKNOWN_LOCATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"function compiled to %d bytes which is too long\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"locals\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@CALL_BUILTIN = common dso_local global i64 0, align 8
@ARG_NEWCLOSURE = common dso_local global i32 0, align 4
@OP_HAS_CONSTANT = common dso_local global i32 0, align 4
@OP_HAS_BRANCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bytecode*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.locfile*, i8*, i8**)* @compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile(%struct.bytecode* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, %struct.locfile* %3, i8* %4, i8** %5) #0 {
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.bytecode*, align 8
  %9 = alloca %struct.locfile*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca %struct.bytecode*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca %struct.TYPE_19__, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_18__*, align 8
  %30 = alloca %struct.opcode_description*, align 8
  %31 = alloca %struct.TYPE_18__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = bitcast %struct.TYPE_19__* %7 to { %struct.TYPE_18__*, %struct.TYPE_18__* }*
  %35 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %34, i32 0, i32 0
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %35, align 8
  %36 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %34, i32 0, i32 1
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %36, align 8
  store %struct.bytecode* %0, %struct.bytecode** %8, align 8
  store %struct.locfile* %3, %struct.locfile** %9, align 8
  store i8* %4, i8** %10, align 8
  store i8** %5, i8*** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %37 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %38 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8**, i8*** %11, align 8
  %41 = call i64 @expand_call_arglist(%struct.TYPE_19__* %7, i8* %39, i8** %40)
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @RET, align 4
  %47 = call i32 @gen_op_simple(i32 %46)
  %48 = bitcast %struct.TYPE_19__* %7 to { %struct.TYPE_18__*, %struct.TYPE_18__* }*
  %49 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %48, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = call { %struct.TYPE_18__*, %struct.TYPE_18__* } @BLOCK(%struct.TYPE_18__* %50, %struct.TYPE_18__* %52, i32 %47)
  %54 = bitcast %struct.TYPE_19__* %15 to { %struct.TYPE_18__*, %struct.TYPE_18__* }*
  %55 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %54, i32 0, i32 0
  %56 = extractvalue { %struct.TYPE_18__*, %struct.TYPE_18__* } %53, 0
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %54, i32 0, i32 1
  %58 = extractvalue { %struct.TYPE_18__*, %struct.TYPE_18__* } %53, 1
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %57, align 8
  %59 = bitcast %struct.TYPE_19__* %7 to i8*
  %60 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = call i8* (...) @jv_array()
  store i8* %61, i8** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %17, align 8
  br label %64

64:                                               ; preds = %232, %6
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %66 = icmp ne %struct.TYPE_18__* %65, null
  br i1 %66, label %67, label %236

67:                                               ; preds = %64
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = icmp ne %struct.TYPE_18__* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = icmp eq %struct.TYPE_18__* %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.opcode_description* @opcode_describe(i64 %82)
  %84 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %18, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CALL_JQ, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %79
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %19, align 8
  br label %96

96:                                               ; preds = %102, %91
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %98 = icmp ne %struct.TYPE_18__* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %19, align 8
  br label %96

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %79
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 8
  store %struct.bytecode* %114, %struct.bytecode** %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CLOSURE_REF, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %107
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CLOSURE_PARAM, align 8
  %127 = icmp ne i64 %125, %126
  br label %128

128:                                              ; preds = %122, %107
  %129 = phi i1 [ false, %107 ], [ %127, %122 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call %struct.opcode_description* @opcode_describe(i64 %134)
  %136 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @OP_HAS_VARIABLE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %128
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %146 = icmp eq %struct.TYPE_18__* %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %14, align 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @jv_string(i8* %156)
  %158 = call i8* @jv_array_append(i8* %153, i8* %157)
  store i8* %158, i8** %16, align 8
  br label %159

159:                                              ; preds = %147, %141, %128
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @CLOSURE_CREATE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %159
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %170 = icmp eq %struct.TYPE_18__* %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %174 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  br label %180

180:                                              ; preds = %165, %159
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @CLOSURE_CREATE_C, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %231

186:                                              ; preds = %180
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %188, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %191 = icmp eq %struct.TYPE_18__* %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %195 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %194, i32 0, i32 9
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  store i32 %198, i32* %20, align 4
  %200 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %201 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %200, i32 0, i32 9
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = call i8* @jv_string(i8* %207)
  %209 = call i8* @jv_array_append(i8* %204, i8* %208)
  %210 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %211 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %210, i32 0, i32 9
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  store i8* %209, i8** %213, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %220 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %219, i32 0, i32 9
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %218, i32* %226, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  store i32 %227, i32* %230, align 8
  br label %231

231:                                              ; preds = %186, %180
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %234, align 8
  store %struct.TYPE_18__* %235, %struct.TYPE_18__** %17, align 8
  br label %64

236:                                              ; preds = %64
  %237 = load i32, i32* %13, align 4
  %238 = icmp sgt i32 %237, 65535
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load %struct.locfile*, %struct.locfile** %9, align 8
  %241 = load i32, i32* @UNKNOWN_LOCATION, align 4
  %242 = load i32, i32* %13, align 4
  %243 = call i32 @locfile_locate(%struct.locfile* %240, i32 %241, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  br label %246

246:                                              ; preds = %239, %236
  %247 = load i32, i32* %13, align 4
  %248 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %249 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %251 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %250, i32 0, i32 6
  %252 = load i8*, i8** %251, align 8
  %253 = call i8* @jv_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %254 = load i8*, i8** %16, align 8
  %255 = call i8* @jv_object_set(i8* %252, i8* %253, i8* %254)
  %256 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %257 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %256, i32 0, i32 6
  store i8* %255, i8** %257, align 8
  %258 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %259 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %395

262:                                              ; preds = %246
  %263 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %264 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i8* @jv_mem_calloc(i32 8, i32 %265)
  %267 = bitcast i8* %266 to %struct.bytecode**
  %268 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %269 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %268, i32 0, i32 5
  store %struct.bytecode** %267, %struct.bytecode*** %269, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %270, align 8
  store %struct.TYPE_18__* %271, %struct.TYPE_18__** %21, align 8
  br label %272

272:                                              ; preds = %390, %262
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %274 = icmp ne %struct.TYPE_18__* %273, null
  br i1 %274, label %275, label %394

275:                                              ; preds = %272
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @CLOSURE_CREATE, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %389

281:                                              ; preds = %275
  %282 = call %struct.bytecode* @jv_mem_alloc(i32 72)
  store %struct.bytecode* %282, %struct.bytecode** %22, align 8
  %283 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %284 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %285 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %284, i32 0, i32 5
  %286 = load %struct.bytecode**, %struct.bytecode*** %285, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.bytecode*, %struct.bytecode** %286, i64 %291
  store %struct.bytecode* %283, %struct.bytecode** %292, align 8
  %293 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %294 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %293, i32 0, i32 9
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %294, align 8
  %296 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %297 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %296, i32 0, i32 9
  store %struct.TYPE_14__* %295, %struct.TYPE_14__** %297, align 8
  %298 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %299 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %300 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %299, i32 0, i32 8
  store %struct.bytecode* %298, %struct.bytecode** %300, align 8
  %301 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %302 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %301, i32 0, i32 7
  store i64 0, i64* %302, align 8
  %303 = call i8* (...) @jv_object()
  %304 = call i8* @jv_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = call i8* @jv_string(i8* %307)
  %309 = call i8* @jv_object_set(i8* %303, i8* %304, i8* %308)
  %310 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %311 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %310, i32 0, i32 6
  store i8* %309, i8** %311, align 8
  %312 = call i8* (...) @jv_array()
  store i8* %312, i8** %23, align 8
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 6
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %315, align 8
  store %struct.TYPE_18__* %316, %struct.TYPE_18__** %24, align 8
  br label %317

317:                                              ; preds = %352, %281
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %319 = icmp ne %struct.TYPE_18__* %318, null
  br i1 %319, label %320, label %356

320:                                              ; preds = %317
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @CLOSURE_PARAM, align 8
  %325 = icmp eq i64 %323, %324
  %326 = zext i1 %325 to i32
  %327 = call i32 @assert(i32 %326)
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 4
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %329, align 8
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %332 = icmp eq %struct.TYPE_18__* %330, %331
  %333 = zext i1 %332 to i32
  %334 = call i32 @assert(i32 %333)
  %335 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %336 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %335, i32 0, i32 7
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, 1
  store i64 %338, i64* %336, align 8
  %339 = trunc i64 %337 to i32
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 0
  store i32 %339, i32* %342, align 8
  %343 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 8
  store %struct.bytecode* %343, %struct.bytecode** %345, align 8
  %346 = load i8*, i8** %23, align 8
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 2
  %349 = load i8*, i8** %348, align 8
  %350 = call i8* @jv_string(i8* %349)
  %351 = call i8* @jv_array_append(i8* %346, i8* %350)
  store i8* %351, i8** %23, align 8
  br label %352

352:                                              ; preds = %320
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 5
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %354, align 8
  store %struct.TYPE_18__* %355, %struct.TYPE_18__** %24, align 8
  br label %317

356:                                              ; preds = %317
  %357 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %358 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %357, i32 0, i32 6
  %359 = load i8*, i8** %358, align 8
  %360 = call i8* @jv_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %361 = load i8*, i8** %23, align 8
  %362 = call i8* @jv_object_set(i8* %359, i8* %360, i8* %361)
  %363 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %364 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %363, i32 0, i32 6
  store i8* %362, i8** %364, align 8
  %365 = load %struct.bytecode*, %struct.bytecode** %22, align 8
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 7
  %368 = load %struct.locfile*, %struct.locfile** %9, align 8
  %369 = load i8*, i8** %10, align 8
  %370 = load i8**, i8*** %11, align 8
  %371 = bitcast %struct.TYPE_19__* %367 to { %struct.TYPE_18__*, %struct.TYPE_18__* }*
  %372 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %371, i32 0, i32 0
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %372, align 8
  %374 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %371, i32 0, i32 1
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %374, align 8
  %376 = call i32 @compile(%struct.bytecode* %365, %struct.TYPE_18__* %373, %struct.TYPE_18__* %375, %struct.locfile* %368, i8* %369, i8** %370)
  %377 = load i32, i32* %12, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* %12, align 4
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 7
  %381 = call { %struct.TYPE_18__*, %struct.TYPE_18__* } (...) @gen_noop()
  %382 = bitcast %struct.TYPE_19__* %25 to { %struct.TYPE_18__*, %struct.TYPE_18__* }*
  %383 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %382, i32 0, i32 0
  %384 = extractvalue { %struct.TYPE_18__*, %struct.TYPE_18__* } %381, 0
  store %struct.TYPE_18__* %384, %struct.TYPE_18__** %383, align 8
  %385 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %382, i32 0, i32 1
  %386 = extractvalue { %struct.TYPE_18__*, %struct.TYPE_18__* } %381, 1
  store %struct.TYPE_18__* %386, %struct.TYPE_18__** %385, align 8
  %387 = bitcast %struct.TYPE_19__* %380 to i8*
  %388 = bitcast %struct.TYPE_19__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %387, i8* align 8 %388, i64 16, i1 false)
  br label %389

389:                                              ; preds = %356, %275
  br label %390

390:                                              ; preds = %389
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 5
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %392, align 8
  store %struct.TYPE_18__* %393, %struct.TYPE_18__** %21, align 8
  br label %272

394:                                              ; preds = %272
  br label %398

395:                                              ; preds = %246
  %396 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %397 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %396, i32 0, i32 5
  store %struct.bytecode** null, %struct.bytecode*** %397, align 8
  br label %398

398:                                              ; preds = %395, %394
  %399 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %400 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = call i8* @jv_mem_calloc(i32 4, i32 %401)
  %403 = bitcast i8* %402 to i32*
  store i32* %403, i32** %26, align 8
  %404 = load i32*, i32** %26, align 8
  %405 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %406 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %405, i32 0, i32 2
  store i32* %404, i32** %406, align 8
  store i32 0, i32* %13, align 4
  %407 = call i8* (...) @jv_array()
  store i8* %407, i8** %27, align 8
  store i32 -1, i32* %28, align 4
  %408 = load i32, i32* %12, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %788, label %410

410:                                              ; preds = %398
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %411, align 8
  store %struct.TYPE_18__* %412, %struct.TYPE_18__** %29, align 8
  br label %413

413:                                              ; preds = %783, %410
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %415 = icmp ne %struct.TYPE_18__* %414, null
  br i1 %415, label %416, label %787

416:                                              ; preds = %413
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = call %struct.opcode_description* @opcode_describe(i64 %419)
  store %struct.opcode_description* %420, %struct.opcode_description** %30, align 8
  %421 = load %struct.opcode_description*, %struct.opcode_description** %30, align 8
  %422 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %416
  br label %783

426:                                              ; preds = %416
  %427 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = trunc i64 %429 to i32
  %431 = load i32*, i32** %26, align 8
  %432 = load i32, i32* %13, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %13, align 4
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i32, i32* %431, i64 %434
  store i32 %430, i32* %435, align 4
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @CLOSURE_REF, align 8
  %440 = icmp ne i64 %438, %439
  br i1 %440, label %441, label %447

441:                                              ; preds = %426
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @CLOSURE_PARAM, align 8
  %446 = icmp ne i64 %444, %445
  br label %447

447:                                              ; preds = %441, %426
  %448 = phi i1 [ false, %426 ], [ %446, %441 ]
  %449 = zext i1 %448 to i32
  %450 = call i32 @assert(i32 %449)
  %451 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %452 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @CALL_BUILTIN, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %494

456:                                              ; preds = %447
  %457 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 4
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @CLOSURE_CREATE_C, align 8
  %463 = icmp eq i64 %461, %462
  %464 = zext i1 %463 to i32
  %465 = call i32 @assert(i32 %464)
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 6
  %468 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_18__*, %struct.TYPE_18__** %468, align 8
  %470 = icmp ne %struct.TYPE_18__* %469, null
  %471 = xor i1 %470, true
  %472 = zext i1 %471 to i32
  %473 = call i32 @assert(i32 %472)
  %474 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %475 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load i32*, i32** %26, align 8
  %479 = load i32, i32* %13, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %13, align 4
  %481 = sext i32 %479 to i64
  %482 = getelementptr inbounds i32, i32* %478, i64 %481
  store i32 %477, i32* %482, align 4
  %483 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 4
  %485 = load %struct.TYPE_18__*, %struct.TYPE_18__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %485, i32 0, i32 3
  %487 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load i32*, i32** %26, align 8
  %490 = load i32, i32* %13, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %13, align 4
  %492 = sext i32 %490 to i64
  %493 = getelementptr inbounds i32, i32* %489, i64 %492
  store i32 %488, i32* %493, align 4
  br label %782

494:                                              ; preds = %447
  %495 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %496 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @CALL_JQ, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %500, label %616

500:                                              ; preds = %494
  %501 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %502 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %501, i32 0, i32 4
  %503 = load %struct.TYPE_18__*, %struct.TYPE_18__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = load i64, i64* @CLOSURE_CREATE, align 8
  %507 = icmp eq i64 %505, %506
  br i1 %507, label %516, label %508

508:                                              ; preds = %500
  %509 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 4
  %511 = load %struct.TYPE_18__*, %struct.TYPE_18__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* @CLOSURE_PARAM, align 8
  %515 = icmp eq i64 %513, %514
  br label %516

516:                                              ; preds = %508, %500
  %517 = phi i1 [ true, %500 ], [ %515, %508 ]
  %518 = zext i1 %517 to i32
  %519 = call i32 @assert(i32 %518)
  %520 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %521 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %520, i32 0, i32 3
  %522 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = load i32*, i32** %26, align 8
  %525 = load i32, i32* %13, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %13, align 4
  %527 = sext i32 %525 to i64
  %528 = getelementptr inbounds i32, i32* %524, i64 %527
  store i32 %523, i32* %528, align 4
  %529 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %530 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %531 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %530, i32 0, i32 4
  %532 = load %struct.TYPE_18__*, %struct.TYPE_18__** %531, align 8
  %533 = call i32 @nesting_level(%struct.bytecode* %529, %struct.TYPE_18__* %532)
  %534 = load i32*, i32** %26, align 8
  %535 = load i32, i32* %13, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %13, align 4
  %537 = sext i32 %535 to i64
  %538 = getelementptr inbounds i32, i32* %534, i64 %537
  store i32 %533, i32* %538, align 4
  %539 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %540 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %539, i32 0, i32 4
  %541 = load %struct.TYPE_18__*, %struct.TYPE_18__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %541, i32 0, i32 3
  %543 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %546 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %545, i32 0, i32 4
  %547 = load %struct.TYPE_18__*, %struct.TYPE_18__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = load i64, i64* @CLOSURE_CREATE, align 8
  %551 = icmp eq i64 %549, %550
  br i1 %551, label %552, label %554

552:                                              ; preds = %516
  %553 = load i32, i32* @ARG_NEWCLOSURE, align 4
  br label %555

554:                                              ; preds = %516
  br label %555

555:                                              ; preds = %554, %552
  %556 = phi i32 [ %553, %552 ], [ 0, %554 ]
  %557 = or i32 %544, %556
  %558 = load i32*, i32** %26, align 8
  %559 = load i32, i32* %13, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %13, align 4
  %561 = sext i32 %559 to i64
  %562 = getelementptr inbounds i32, i32* %558, i64 %561
  store i32 %557, i32* %562, align 4
  %563 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %564 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %563, i32 0, i32 6
  %565 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %564, i32 0, i32 0
  %566 = load %struct.TYPE_18__*, %struct.TYPE_18__** %565, align 8
  store %struct.TYPE_18__* %566, %struct.TYPE_18__** %31, align 8
  br label %567

567:                                              ; preds = %611, %555
  %568 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %569 = icmp ne %struct.TYPE_18__* %568, null
  br i1 %569, label %570, label %615

570:                                              ; preds = %567
  %571 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %572 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = load i64, i64* @CLOSURE_REF, align 8
  %575 = icmp eq i64 %573, %574
  br i1 %575, label %576, label %584

576:                                              ; preds = %570
  %577 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %578 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %577, i32 0, i32 4
  %579 = load %struct.TYPE_18__*, %struct.TYPE_18__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = load i64, i64* @CLOSURE_CREATE, align 8
  %583 = icmp eq i64 %581, %582
  br label %584

584:                                              ; preds = %576, %570
  %585 = phi i1 [ false, %570 ], [ %583, %576 ]
  %586 = zext i1 %585 to i32
  %587 = call i32 @assert(i32 %586)
  %588 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %589 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %590 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %589, i32 0, i32 4
  %591 = load %struct.TYPE_18__*, %struct.TYPE_18__** %590, align 8
  %592 = call i32 @nesting_level(%struct.bytecode* %588, %struct.TYPE_18__* %591)
  %593 = load i32*, i32** %26, align 8
  %594 = load i32, i32* %13, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %13, align 4
  %596 = sext i32 %594 to i64
  %597 = getelementptr inbounds i32, i32* %593, i64 %596
  store i32 %592, i32* %597, align 4
  %598 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %599 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %598, i32 0, i32 4
  %600 = load %struct.TYPE_18__*, %struct.TYPE_18__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %600, i32 0, i32 3
  %602 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 8
  %604 = load i32, i32* @ARG_NEWCLOSURE, align 4
  %605 = or i32 %603, %604
  %606 = load i32*, i32** %26, align 8
  %607 = load i32, i32* %13, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %13, align 4
  %609 = sext i32 %607 to i64
  %610 = getelementptr inbounds i32, i32* %606, i64 %609
  store i32 %605, i32* %610, align 4
  br label %611

611:                                              ; preds = %584
  %612 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %613 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %612, i32 0, i32 5
  %614 = load %struct.TYPE_18__*, %struct.TYPE_18__** %613, align 8
  store %struct.TYPE_18__* %614, %struct.TYPE_18__** %31, align 8
  br label %567

615:                                              ; preds = %567
  br label %781

616:                                              ; preds = %494
  %617 = load %struct.opcode_description*, %struct.opcode_description** %30, align 8
  %618 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %617, i32 0, i32 1
  %619 = load i32, i32* %618, align 4
  %620 = load i32, i32* @OP_HAS_CONSTANT, align 4
  %621 = and i32 %619, %620
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %668

623:                                              ; preds = %616
  %624 = load %struct.opcode_description*, %struct.opcode_description** %30, align 8
  %625 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* @OP_HAS_VARIABLE, align 4
  %628 = and i32 %626, %627
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %668

630:                                              ; preds = %623
  %631 = load i8*, i8** %27, align 8
  %632 = call i8* @jv_copy(i8* %631)
  %633 = call i32 @jv_array_length(i8* %632)
  %634 = load i32*, i32** %26, align 8
  %635 = load i32, i32* %13, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %13, align 4
  %637 = sext i32 %635 to i64
  %638 = getelementptr inbounds i32, i32* %634, i64 %637
  store i32 %633, i32* %638, align 4
  %639 = load i8*, i8** %27, align 8
  %640 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %641 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %640, i32 0, i32 3
  %642 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %641, i32 0, i32 2
  %643 = load i8*, i8** %642, align 8
  %644 = call i8* @jv_copy(i8* %643)
  %645 = call i8* @jv_array_append(i8* %639, i8* %644)
  store i8* %645, i8** %27, align 8
  %646 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %647 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %648 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %647, i32 0, i32 4
  %649 = load %struct.TYPE_18__*, %struct.TYPE_18__** %648, align 8
  %650 = call i32 @nesting_level(%struct.bytecode* %646, %struct.TYPE_18__* %649)
  %651 = load i32*, i32** %26, align 8
  %652 = load i32, i32* %13, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %13, align 4
  %654 = sext i32 %652 to i64
  %655 = getelementptr inbounds i32, i32* %651, i64 %654
  store i32 %650, i32* %655, align 4
  %656 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %657 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %656, i32 0, i32 4
  %658 = load %struct.TYPE_18__*, %struct.TYPE_18__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %658, i32 0, i32 3
  %660 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 8
  store i32 %661, i32* %32, align 4
  %662 = load i32, i32* %32, align 4
  %663 = load i32*, i32** %26, align 8
  %664 = load i32, i32* %13, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %13, align 4
  %666 = sext i32 %664 to i64
  %667 = getelementptr inbounds i32, i32* %663, i64 %666
  store i32 %662, i32* %667, align 4
  br label %780

668:                                              ; preds = %623, %616
  %669 = load %struct.opcode_description*, %struct.opcode_description** %30, align 8
  %670 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 4
  %672 = load i32, i32* @OP_HAS_CONSTANT, align 4
  %673 = and i32 %671, %672
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %691

675:                                              ; preds = %668
  %676 = load i8*, i8** %27, align 8
  %677 = call i8* @jv_copy(i8* %676)
  %678 = call i32 @jv_array_length(i8* %677)
  %679 = load i32*, i32** %26, align 8
  %680 = load i32, i32* %13, align 4
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %13, align 4
  %682 = sext i32 %680 to i64
  %683 = getelementptr inbounds i32, i32* %679, i64 %682
  store i32 %678, i32* %683, align 4
  %684 = load i8*, i8** %27, align 8
  %685 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %686 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %685, i32 0, i32 3
  %687 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %686, i32 0, i32 2
  %688 = load i8*, i8** %687, align 8
  %689 = call i8* @jv_copy(i8* %688)
  %690 = call i8* @jv_array_append(i8* %684, i8* %689)
  store i8* %690, i8** %27, align 8
  br label %779

691:                                              ; preds = %668
  %692 = load %struct.opcode_description*, %struct.opcode_description** %30, align 8
  %693 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %692, i32 0, i32 1
  %694 = load i32, i32* %693, align 4
  %695 = load i32, i32* @OP_HAS_VARIABLE, align 4
  %696 = and i32 %694, %695
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %727

698:                                              ; preds = %691
  %699 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %700 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %701 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %700, i32 0, i32 4
  %702 = load %struct.TYPE_18__*, %struct.TYPE_18__** %701, align 8
  %703 = call i32 @nesting_level(%struct.bytecode* %699, %struct.TYPE_18__* %702)
  %704 = load i32*, i32** %26, align 8
  %705 = load i32, i32* %13, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %13, align 4
  %707 = sext i32 %705 to i64
  %708 = getelementptr inbounds i32, i32* %704, i64 %707
  store i32 %703, i32* %708, align 4
  %709 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %710 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %709, i32 0, i32 4
  %711 = load %struct.TYPE_18__*, %struct.TYPE_18__** %710, align 8
  %712 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %711, i32 0, i32 3
  %713 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 8
  store i32 %714, i32* %33, align 4
  %715 = load i32, i32* %33, align 4
  %716 = load i32*, i32** %26, align 8
  %717 = load i32, i32* %13, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %13, align 4
  %719 = sext i32 %717 to i64
  %720 = getelementptr inbounds i32, i32* %716, i64 %719
  store i32 %715, i32* %720, align 4
  %721 = load i32, i32* %33, align 4
  %722 = load i32, i32* %28, align 4
  %723 = icmp sgt i32 %721, %722
  br i1 %723, label %724, label %726

724:                                              ; preds = %698
  %725 = load i32, i32* %33, align 4
  store i32 %725, i32* %28, align 4
  br label %726

726:                                              ; preds = %724, %698
  br label %778

727:                                              ; preds = %691
  %728 = load %struct.opcode_description*, %struct.opcode_description** %30, align 8
  %729 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = load i32, i32* @OP_HAS_BRANCH, align 4
  %732 = and i32 %730, %731
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %769

734:                                              ; preds = %727
  %735 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %736 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %735, i32 0, i32 3
  %737 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %736, i32 0, i32 1
  %738 = load %struct.TYPE_16__*, %struct.TYPE_16__** %737, align 8
  %739 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %738, i32 0, i32 0
  %740 = load i32, i32* %739, align 4
  %741 = icmp ne i32 %740, -1
  %742 = zext i1 %741 to i32
  %743 = call i32 @assert(i32 %742)
  %744 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %745 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %744, i32 0, i32 3
  %746 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %745, i32 0, i32 1
  %747 = load %struct.TYPE_16__*, %struct.TYPE_16__** %746, align 8
  %748 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %747, i32 0, i32 0
  %749 = load i32, i32* %748, align 4
  %750 = load i32, i32* %13, align 4
  %751 = icmp sgt i32 %749, %750
  %752 = zext i1 %751 to i32
  %753 = call i32 @assert(i32 %752)
  %754 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %755 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %754, i32 0, i32 3
  %756 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %755, i32 0, i32 1
  %757 = load %struct.TYPE_16__*, %struct.TYPE_16__** %756, align 8
  %758 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %757, i32 0, i32 0
  %759 = load i32, i32* %758, align 4
  %760 = load i32, i32* %13, align 4
  %761 = add nsw i32 %760, 1
  %762 = sub nsw i32 %759, %761
  %763 = load i32*, i32** %26, align 8
  %764 = load i32, i32* %13, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i32, i32* %763, i64 %765
  store i32 %762, i32* %766, align 4
  %767 = load i32, i32* %13, align 4
  %768 = add nsw i32 %767, 1
  store i32 %768, i32* %13, align 4
  br label %777

769:                                              ; preds = %727
  %770 = load %struct.opcode_description*, %struct.opcode_description** %30, align 8
  %771 = getelementptr inbounds %struct.opcode_description, %struct.opcode_description* %770, i32 0, i32 0
  %772 = load i32, i32* %771, align 4
  %773 = icmp sgt i32 %772, 1
  br i1 %773, label %774, label %776

774:                                              ; preds = %769
  %775 = call i32 @assert(i32 0)
  br label %776

776:                                              ; preds = %774, %769
  br label %777

777:                                              ; preds = %776, %734
  br label %778

778:                                              ; preds = %777, %726
  br label %779

779:                                              ; preds = %778, %675
  br label %780

780:                                              ; preds = %779, %630
  br label %781

781:                                              ; preds = %780, %615
  br label %782

782:                                              ; preds = %781, %456
  br label %783

783:                                              ; preds = %782, %425
  %784 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %785 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %784, i32 0, i32 5
  %786 = load %struct.TYPE_18__*, %struct.TYPE_18__** %785, align 8
  store %struct.TYPE_18__* %786, %struct.TYPE_18__** %29, align 8
  br label %413

787:                                              ; preds = %413
  br label %788

788:                                              ; preds = %787, %398
  %789 = load i8*, i8** %27, align 8
  %790 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %791 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %790, i32 0, i32 4
  store i8* %789, i8** %791, align 8
  %792 = load i32, i32* %28, align 4
  %793 = add nsw i32 %792, 2
  %794 = load %struct.bytecode*, %struct.bytecode** %8, align 8
  %795 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %794, i32 0, i32 3
  store i32 %793, i32* %795, align 8
  %796 = bitcast %struct.TYPE_19__* %7 to { %struct.TYPE_18__*, %struct.TYPE_18__* }*
  %797 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %796, i32 0, i32 0
  %798 = load %struct.TYPE_18__*, %struct.TYPE_18__** %797, align 8
  %799 = getelementptr inbounds { %struct.TYPE_18__*, %struct.TYPE_18__* }, { %struct.TYPE_18__*, %struct.TYPE_18__* }* %796, i32 0, i32 1
  %800 = load %struct.TYPE_18__*, %struct.TYPE_18__** %799, align 8
  %801 = call i32 @block_free(%struct.TYPE_18__* %798, %struct.TYPE_18__* %800)
  %802 = load i32, i32* %12, align 4
  ret i32 %802
}

declare dso_local i64 @expand_call_arglist(%struct.TYPE_19__*, i8*, i8**) #1

declare dso_local { %struct.TYPE_18__*, %struct.TYPE_18__* } @BLOCK(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @gen_op_simple(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @jv_array(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.opcode_description* @opcode_describe(i64) #1

declare dso_local i8* @jv_array_append(i8*, i8*) #1

declare dso_local i8* @jv_string(i8*) #1

declare dso_local i32 @locfile_locate(%struct.locfile*, i32, i8*, i32) #1

declare dso_local i8* @jv_object_set(i8*, i8*, i8*) #1

declare dso_local i8* @jv_mem_calloc(i32, i32) #1

declare dso_local %struct.bytecode* @jv_mem_alloc(i32) #1

declare dso_local i8* @jv_object(...) #1

declare dso_local { %struct.TYPE_18__*, %struct.TYPE_18__* } @gen_noop(...) #1

declare dso_local i32 @nesting_level(%struct.bytecode*, %struct.TYPE_18__*) #1

declare dso_local i32 @jv_array_length(i8*) #1

declare dso_local i8* @jv_copy(i8*) #1

declare dso_local i32 @block_free(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
