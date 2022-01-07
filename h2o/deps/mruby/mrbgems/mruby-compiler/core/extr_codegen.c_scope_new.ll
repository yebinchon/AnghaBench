; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_scope_new.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_scope_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_15__*, i64, i64, i32, i32*, i32, %struct.TYPE_13__*, i32*, i64, %struct.TYPE_14__*, i32*, i32*, i32 }
%struct.TYPE_15__ = type { i32*, %struct.mrb_locals*, i64, i32*, i64, i32*, i32*, i32** }
%struct.mrb_locals = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }

@scope_new.codegen_scope_zero = internal constant %struct.TYPE_14__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*)* @scope_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @scope_new(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @mrb_pool_open(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @mrb_pool_alloc(i32* %14, i32 152)
  %16 = inttoptr i64 %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %279

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = bitcast %struct.TYPE_14__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_14__* @scope_new.codegen_scope_zero to i8*), i64 152, i1 false)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 21
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 20
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %4, align 8
  br label %279

33:                                               ; preds = %20
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 19
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 18
  store i64 0, i64* %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call %struct.TYPE_15__* @mrb_add_irep(i32* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 10
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 10
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = call i32 @scope_add_irep(%struct.TYPE_14__* %45, %struct.TYPE_15__* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  store i32 8, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = call i64 @mrb_malloc(i32* %52, i32 %58)
  %60 = inttoptr i64 %59 to i32**
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 10
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 7
  store i32** %60, i32*** %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  store i32 1024, i32* %66, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = call i64 @mrb_malloc(i32* %67, i32 %73)
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 17
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 10
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 6
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  store i32 32, i32* %83, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = trunc i64 %89 to i32
  %91 = call i64 @mrb_malloc(i32* %84, i32 %90)
  %92 = inttoptr i64 %91 to i32*
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 10
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 5
  store i32* %92, i32** %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 10
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  store i32 256, i32* %102, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = call i64 @mrb_malloc(i32* %103, i32 %109)
  %111 = inttoptr i64 %110 to i32*
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 10
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  store i32* %111, i32** %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 10
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 16
  store %struct.TYPE_13__* %120, %struct.TYPE_13__** %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %124 = call i64 @node_len(%struct.TYPE_13__* %123)
  %125 = add nsw i64 %124, 1
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = icmp ne %struct.TYPE_13__* %137, null
  br i1 %138, label %139, label %212

139:                                              ; preds = %33
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %10, align 8
  store i64 0, i64* %11, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = mul i64 16, %146
  %148 = trunc i64 %147 to i32
  %149 = call i64 @mrb_malloc(i32* %141, i32 %148)
  %150 = inttoptr i64 %149 to %struct.mrb_locals*
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 10
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  store %struct.mrb_locals* %150, %struct.mrb_locals** %154, align 8
  store i64 0, i64* %11, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %10, align 8
  br label %156

156:                                              ; preds = %196, %139
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %158 = icmp ne %struct.TYPE_13__* %157, null
  br i1 %158, label %159, label %202

159:                                              ; preds = %156
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = call i64 @lv_name(%struct.TYPE_13__* %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 10
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load %struct.mrb_locals*, %struct.mrb_locals** %165, align 8
  %167 = load i64, i64* %11, align 8
  %168 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %166, i64 %167
  %169 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %168, i32 0, i32 1
  store i64 %161, i64* %169, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = call i64 @lv_name(%struct.TYPE_13__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %159
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %176 = call i64 @lv_name(%struct.TYPE_13__* %175)
  %177 = call i64 @lv_idx(%struct.TYPE_14__* %174, i64 %176)
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 10
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.mrb_locals*, %struct.mrb_locals** %181, align 8
  %183 = load i64, i64* %11, align 8
  %184 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %182, i64 %183
  %185 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %184, i32 0, i32 0
  store i64 %177, i64* %185, align 8
  br label %195

186:                                              ; preds = %159
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 10
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load %struct.mrb_locals*, %struct.mrb_locals** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %191, i64 %192
  %194 = getelementptr inbounds %struct.mrb_locals, %struct.mrb_locals* %193, i32 0, i32 0
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %186, %173
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %11, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %11, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  store %struct.TYPE_13__* %201, %struct.TYPE_13__** %10, align 8
  br label %156

202:                                              ; preds = %156
  %203 = load i64, i64* %11, align 8
  %204 = add i64 %203, 1
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = icmp eq i64 %204, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @mrb_assert(i32 %210)
  br label %212

212:                                              ; preds = %202, %33
  %213 = load i32*, i32** %5, align 8
  %214 = call i32 @mrb_gc_arena_save(i32* %213)
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 15
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 11
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 11
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 11
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %212
  %227 = load i32*, i32** %5, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = mul i64 2, %231
  %233 = trunc i64 %232 to i32
  %234 = call i64 @mrb_malloc(i32* %227, i32 %233)
  %235 = inttoptr i64 %234 to i32*
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 14
  store i32* %235, i32** %237, align 8
  br label %238

238:                                              ; preds = %226, %212
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 13
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 13
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 12
  store i64 0, i64* %245, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 11
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %238
  %251 = load i32*, i32** %5, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 10
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = call i32 @mrb_debug_info_alloc(i32* %251, %struct.TYPE_15__* %254)
  br label %261

256:                                              ; preds = %238
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 10
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  store i32* null, i32** %260, align 8
  br label %261

261:                                              ; preds = %256, %250
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 9
  store i32 %264, i32* %266, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 8
  store i32 %269, i32* %271, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 7
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 1
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 7
  store i64 %275, i64* %277, align 8
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %278, %struct.TYPE_14__** %4, align 8
  br label %279

279:                                              ; preds = %261, %31, %19
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %280
}

declare dso_local i32* @mrb_pool_open(i32*) #1

declare dso_local i64 @mrb_pool_alloc(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_15__* @mrb_add_irep(i32*) #1

declare dso_local i32 @scope_add_irep(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i64 @node_len(%struct.TYPE_13__*) #1

declare dso_local i64 @lv_name(%struct.TYPE_13__*) #1

declare dso_local i64 @lv_idx(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_debug_info_alloc(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
