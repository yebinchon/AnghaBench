; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-binary-operations-arithmetics.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-binary-operations-arithmetics.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"o={x:1};o\00", align 1
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4
@JERRY_ERROR_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@JERRY_BIN_OP_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@JERRY_BIN_OP_DIV = common dso_local global i32 0, align 4
@JERRY_BIN_OP_REM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"fooundefined\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"foonull\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"foo5\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"[object Object][object Object]\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"[object Object]null\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"[object Object]undefined\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"[object Object]true\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"[object Object]false\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"[object Object]5\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"[object Object]foo\00", align 1
@JERRY_BIN_OP_SUB = common dso_local global i32 0, align 4
@JERRY_BIN_OP_MUL = common dso_local global i32 0, align 4
@JERRY_BIN_OP_STRICT_EQUAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"o={valueOf:function(){throw 5}};o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [30 x %struct.TYPE_8__], align 16
  %6 = alloca { i64, i32 }, align 8
  %7 = alloca { i64, i32 }, align 8
  %8 = alloca { i64, i32 }, align 8
  %9 = alloca { i64, i32 }, align 8
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  %19 = alloca { i64, i32 }, align 8
  %20 = alloca { i64, i32 }, align 8
  %21 = alloca { i64, i32 }, align 8
  %22 = alloca { i64, i32 }, align 8
  %23 = alloca { i64, i32 }, align 8
  %24 = alloca { i64, i32 }, align 8
  %25 = alloca { i64, i32 }, align 8
  %26 = alloca { i64, i32 }, align 8
  %27 = alloca { i64, i32 }, align 8
  %28 = alloca { i64, i32 }, align 8
  %29 = alloca { i64, i32 }, align 8
  %30 = alloca { i64, i32 }, align 8
  %31 = alloca { i64, i32 }, align 8
  %32 = alloca { i64, i32 }, align 8
  %33 = alloca { i64, i32 }, align 8
  %34 = alloca { i64, i32 }, align 8
  %35 = alloca { i64, i32 }, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca double, align 8
  %39 = alloca [49 x %struct.TYPE_9__], align 16
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca [18 x %struct.TYPE_8__], align 16
  %45 = alloca { i64, i32 }, align 8
  %46 = alloca { i64, i32 }, align 8
  %47 = alloca { i64, i32 }, align 8
  %48 = alloca { i64, i32 }, align 8
  %49 = alloca { i64, i32 }, align 8
  %50 = alloca { i64, i32 }, align 8
  %51 = alloca { i64, i32 }, align 8
  %52 = alloca { i64, i32 }, align 8
  %53 = alloca { i64, i32 }, align 8
  %54 = alloca { i64, i32 }, align 8
  %55 = alloca { i64, i32 }, align 8
  %56 = alloca { i64, i32 }, align 8
  %57 = alloca { i64, i32 }, align 8
  %58 = alloca { i64, i32 }, align 8
  %59 = alloca { i64, i32 }, align 8
  %60 = alloca { i64, i32 }, align 8
  %61 = alloca { i64, i32 }, align 8
  %62 = alloca { i64, i32 }, align 8
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %65 = call i32 (...) @TEST_INIT()
  %66 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %67 = call i32 @jerry_init(i32 %66)
  %68 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %69 = call i32 @jerry_eval(i32* bitcast ([10 x i8]* @.str to i32*), i32 9, i32 %68)
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %71 = call i32 @jerry_eval(i32* bitcast ([10 x i8]* @.str to i32*), i32 9, i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @JERRY_ERROR_SYNTAX, align 4
  %73 = call i32 @jerry_create_error(i32 %72, i32* bitcast ([6 x i8]* @.str.1 to i32*))
  store i32 %73, i32* %4, align 4
  %74 = getelementptr inbounds [30 x %struct.TYPE_8__], [30 x %struct.TYPE_8__]* %5, i64 0, i64 0
  %75 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %76 = call i32 @jerry_create_number(double 3.100000e+00)
  %77 = call i32 (...) @jerry_create_undefined()
  %78 = call { i64, i32 } @T_NAN(i32 %75, i32 %76, i32 %77)
  store { i64, i32 } %78, { i64, i32 }* %6, align 8
  %79 = bitcast { i64, i32 }* %6 to i8*
  %80 = bitcast %struct.TYPE_8__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 8 %79, i64 12, i1 false)
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 1
  %82 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %83 = call i32 (...) @jerry_create_undefined()
  %84 = call i32 (...) @jerry_create_undefined()
  %85 = call { i64, i32 } @T_NAN(i32 %82, i32 %83, i32 %84)
  store { i64, i32 } %85, { i64, i32 }* %7, align 8
  %86 = bitcast { i64, i32 }* %7 to i8*
  %87 = bitcast %struct.TYPE_8__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 8 %86, i64 12, i1 false)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 1
  %89 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %90 = call i32 (...) @jerry_create_undefined()
  %91 = call i32 (...) @jerry_create_null()
  %92 = call { i64, i32 } @T_NAN(i32 %89, i32 %90, i32 %91)
  store { i64, i32 } %92, { i64, i32 }* %8, align 8
  %93 = bitcast { i64, i32 }* %8 to i8*
  %94 = bitcast %struct.TYPE_8__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 8 %93, i64 12, i1 false)
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 1
  %96 = call i32 @jerry_create_number(double 3.100000e+00)
  %97 = call i32 (...) @jerry_create_undefined()
  %98 = call { i64, i32 } @T_ARI(i32 %96, i32 %97)
  store { i64, i32 } %98, { i64, i32 }* %9, align 8
  %99 = bitcast { i64, i32 }* %9 to i8*
  %100 = bitcast %struct.TYPE_8__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 8 %99, i64 12, i1 false)
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 1
  %102 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %103 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.3 to i32*))
  %104 = call { i64, i32 } @T_ARI(i32 %102, i32 %103)
  store { i64, i32 } %104, { i64, i32 }* %10, align 8
  %105 = bitcast { i64, i32 }* %10 to i8*
  %106 = bitcast %struct.TYPE_8__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 8 %105, i64 12, i1 false)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 1
  %108 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %109 = call i32 (...) @jerry_create_undefined()
  %110 = call { i64, i32 } @T_ARI(i32 %108, i32 %109)
  store { i64, i32 } %110, { i64, i32 }* %11, align 8
  %111 = bitcast { i64, i32 }* %11 to i8*
  %112 = bitcast %struct.TYPE_8__* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 8 %111, i64 12, i1 false)
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 1
  %114 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %115 = call i32 (...) @jerry_create_null()
  %116 = call { i64, i32 } @T_ARI(i32 %114, i32 %115)
  store { i64, i32 } %116, { i64, i32 }* %12, align 8
  %117 = bitcast { i64, i32 }* %12 to i8*
  %118 = bitcast %struct.TYPE_8__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 8 %117, i64 12, i1 false)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 1
  %120 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %121 = call i32 @jerry_create_number(double 5.000000e+00)
  %122 = call { i64, i32 } @T_ARI(i32 %120, i32 %121)
  store { i64, i32 } %122, { i64, i32 }* %13, align 8
  %123 = bitcast { i64, i32 }* %13 to i8*
  %124 = bitcast %struct.TYPE_8__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 8 %123, i64 12, i1 false)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 1
  %126 = call i32 (...) @jerry_create_undefined()
  %127 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %128 = call { i64, i32 } @T_ARI(i32 %126, i32 %127)
  store { i64, i32 } %128, { i64, i32 }* %14, align 8
  %129 = bitcast { i64, i32 }* %14 to i8*
  %130 = bitcast %struct.TYPE_8__* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 8 %129, i64 12, i1 false)
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 1
  %132 = call i32 (...) @jerry_create_null()
  %133 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %134 = call { i64, i32 } @T_ARI(i32 %132, i32 %133)
  store { i64, i32 } %134, { i64, i32 }* %15, align 8
  %135 = bitcast { i64, i32 }* %15 to i8*
  %136 = bitcast %struct.TYPE_8__* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 8 %135, i64 12, i1 false)
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 1
  %138 = call i32 @jerry_create_number(double 5.000000e+00)
  %139 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %140 = call { i64, i32 } @T_ARI(i32 %138, i32 %139)
  store { i64, i32 } %140, { i64, i32 }* %16, align 8
  %141 = bitcast { i64, i32 }* %16 to i8*
  %142 = bitcast %struct.TYPE_8__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 8 %141, i64 12, i1 false)
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 1
  %144 = call i32 (...) @jerry_create_undefined()
  %145 = call i32 (...) @jerry_create_undefined()
  %146 = call { i64, i32 } @T_ARI(i32 %144, i32 %145)
  store { i64, i32 } %146, { i64, i32 }* %17, align 8
  %147 = bitcast { i64, i32 }* %17 to i8*
  %148 = bitcast %struct.TYPE_8__* %143 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %148, i8* align 8 %147, i64 12, i1 false)
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 1
  %150 = call i32 (...) @jerry_create_undefined()
  %151 = call i32 (...) @jerry_create_null()
  %152 = call { i64, i32 } @T_ARI(i32 %150, i32 %151)
  store { i64, i32 } %152, { i64, i32 }* %18, align 8
  %153 = bitcast { i64, i32 }* %18 to i8*
  %154 = bitcast %struct.TYPE_8__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %154, i8* align 8 %153, i64 12, i1 false)
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 1
  %156 = call i32 (...) @jerry_create_null()
  %157 = call i32 (...) @jerry_create_undefined()
  %158 = call { i64, i32 } @T_ARI(i32 %156, i32 %157)
  store { i64, i32 } %158, { i64, i32 }* %19, align 8
  %159 = bitcast { i64, i32 }* %19 to i8*
  %160 = bitcast %struct.TYPE_8__* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 8 %159, i64 12, i1 false)
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 1
  %162 = load i32, i32* %2, align 4
  %163 = call i32 @jerry_acquire_value(i32 %162)
  %164 = load i32, i32* %2, align 4
  %165 = call i32 @jerry_acquire_value(i32 %164)
  %166 = call { i64, i32 } @T_ARI(i32 %163, i32 %165)
  store { i64, i32 } %166, { i64, i32 }* %20, align 8
  %167 = bitcast { i64, i32 }* %20 to i8*
  %168 = bitcast %struct.TYPE_8__* %161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 8 %167, i64 12, i1 false)
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 1
  %170 = load i32, i32* %2, align 4
  %171 = call i32 @jerry_acquire_value(i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @jerry_acquire_value(i32 %172)
  %174 = call { i64, i32 } @T_ARI(i32 %171, i32 %173)
  store { i64, i32 } %174, { i64, i32 }* %21, align 8
  %175 = bitcast { i64, i32 }* %21 to i8*
  %176 = bitcast %struct.TYPE_8__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 8 %175, i64 12, i1 false)
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 1
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @jerry_acquire_value(i32 %178)
  %180 = load i32, i32* %2, align 4
  %181 = call i32 @jerry_acquire_value(i32 %180)
  %182 = call { i64, i32 } @T_ARI(i32 %179, i32 %181)
  store { i64, i32 } %182, { i64, i32 }* %22, align 8
  %183 = bitcast { i64, i32 }* %22 to i8*
  %184 = bitcast %struct.TYPE_8__* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 8 %183, i64 12, i1 false)
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 1
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @jerry_acquire_value(i32 %186)
  %188 = call i32 (...) @jerry_create_undefined()
  %189 = call { i64, i32 } @T_ARI(i32 %187, i32 %188)
  store { i64, i32 } %189, { i64, i32 }* %23, align 8
  %190 = bitcast { i64, i32 }* %23 to i8*
  %191 = bitcast %struct.TYPE_8__* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %191, i8* align 8 %190, i64 12, i1 false)
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i64 1
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @jerry_acquire_value(i32 %193)
  %195 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %196 = call { i64, i32 } @T_ARI(i32 %194, i32 %195)
  store { i64, i32 } %196, { i64, i32 }* %24, align 8
  %197 = bitcast { i64, i32 }* %24 to i8*
  %198 = bitcast %struct.TYPE_8__* %192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %198, i8* align 8 %197, i64 12, i1 false)
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i64 1
  %200 = load i32, i32* %2, align 4
  %201 = call i32 @jerry_acquire_value(i32 %200)
  %202 = call i32 (...) @jerry_create_null()
  %203 = call { i64, i32 } @T_ARI(i32 %201, i32 %202)
  store { i64, i32 } %203, { i64, i32 }* %25, align 8
  %204 = bitcast { i64, i32 }* %25 to i8*
  %205 = bitcast %struct.TYPE_8__* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %205, i8* align 8 %204, i64 12, i1 false)
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i64 1
  %207 = load i32, i32* %2, align 4
  %208 = call i32 @jerry_acquire_value(i32 %207)
  %209 = call i32 @jerry_create_boolean(i32 1)
  %210 = call { i64, i32 } @T_ARI(i32 %208, i32 %209)
  store { i64, i32 } %210, { i64, i32 }* %26, align 8
  %211 = bitcast { i64, i32 }* %26 to i8*
  %212 = bitcast %struct.TYPE_8__* %206 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %212, i8* align 8 %211, i64 12, i1 false)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 1
  %214 = load i32, i32* %2, align 4
  %215 = call i32 @jerry_acquire_value(i32 %214)
  %216 = call i32 @jerry_create_boolean(i32 0)
  %217 = call { i64, i32 } @T_ARI(i32 %215, i32 %216)
  store { i64, i32 } %217, { i64, i32 }* %27, align 8
  %218 = bitcast { i64, i32 }* %27 to i8*
  %219 = bitcast %struct.TYPE_8__* %213 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %219, i8* align 8 %218, i64 12, i1 false)
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i64 1
  %221 = load i32, i32* %2, align 4
  %222 = call i32 @jerry_acquire_value(i32 %221)
  %223 = call i32 @jerry_create_number(double 5.000000e+00)
  %224 = call { i64, i32 } @T_ARI(i32 %222, i32 %223)
  store { i64, i32 } %224, { i64, i32 }* %28, align 8
  %225 = bitcast { i64, i32 }* %28 to i8*
  %226 = bitcast %struct.TYPE_8__* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %226, i8* align 8 %225, i64 12, i1 false)
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i64 1
  %228 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %229 = call i32 @jerry_create_boolean(i32 0)
  %230 = call i32 @jerry_create_boolean(i32 0)
  %231 = call { i64, i32 } @T_NAN(i32 %228, i32 %229, i32 %230)
  store { i64, i32 } %231, { i64, i32 }* %29, align 8
  %232 = bitcast { i64, i32 }* %29 to i8*
  %233 = bitcast %struct.TYPE_8__* %227 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %233, i8* align 8 %232, i64 12, i1 false)
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i64 1
  %235 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %236 = call i32 @jerry_create_number(double 0.000000e+00)
  %237 = call i32 @jerry_create_number(double 0.000000e+00)
  %238 = call { i64, i32 } @T_NAN(i32 %235, i32 %236, i32 %237)
  store { i64, i32 } %238, { i64, i32 }* %30, align 8
  %239 = bitcast { i64, i32 }* %30 to i8*
  %240 = bitcast %struct.TYPE_8__* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %240, i8* align 8 %239, i64 12, i1 false)
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 1
  %242 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %243 = call i32 (...) @jerry_create_null()
  %244 = call i32 (...) @jerry_create_null()
  %245 = call { i64, i32 } @T_NAN(i32 %242, i32 %243, i32 %244)
  store { i64, i32 } %245, { i64, i32 }* %31, align 8
  %246 = bitcast { i64, i32 }* %31 to i8*
  %247 = bitcast %struct.TYPE_8__* %241 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %247, i8* align 8 %246, i64 12, i1 false)
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i64 1
  %249 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %250 = call i32 @jerry_create_boolean(i32 1)
  %251 = call i32 @jerry_create_boolean(i32 0)
  %252 = call { i64, i32 } @T_NAN(i32 %249, i32 %250, i32 %251)
  store { i64, i32 } %252, { i64, i32 }* %32, align 8
  %253 = bitcast { i64, i32 }* %32 to i8*
  %254 = bitcast %struct.TYPE_8__* %248 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %254, i8* align 8 %253, i64 12, i1 false)
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i64 1
  %256 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %257 = call i32 @jerry_create_boolean(i32 0)
  %258 = call i32 @jerry_create_boolean(i32 0)
  %259 = call { i64, i32 } @T_NAN(i32 %256, i32 %257, i32 %258)
  store { i64, i32 } %259, { i64, i32 }* %33, align 8
  %260 = bitcast { i64, i32 }* %33 to i8*
  %261 = bitcast %struct.TYPE_8__* %255 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %261, i8* align 8 %260, i64 12, i1 false)
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i64 1
  %263 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %264 = call i32 @jerry_create_number(double 0.000000e+00)
  %265 = call i32 @jerry_create_number(double 0.000000e+00)
  %266 = call { i64, i32 } @T_NAN(i32 %263, i32 %264, i32 %265)
  store { i64, i32 } %266, { i64, i32 }* %34, align 8
  %267 = bitcast { i64, i32 }* %34 to i8*
  %268 = bitcast %struct.TYPE_8__* %262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %268, i8* align 8 %267, i64 12, i1 false)
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i64 1
  %270 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %271 = call i32 (...) @jerry_create_null()
  %272 = call i32 (...) @jerry_create_null()
  %273 = call { i64, i32 } @T_NAN(i32 %270, i32 %271, i32 %272)
  store { i64, i32 } %273, { i64, i32 }* %35, align 8
  %274 = bitcast { i64, i32 }* %35 to i8*
  %275 = bitcast %struct.TYPE_8__* %269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %275, i8* align 8 %274, i64 12, i1 false)
  store i32 0, i32* %36, align 4
  br label %276

276:                                              ; preds = %321, %0
  %277 = load i32, i32* %36, align 4
  %278 = sext i32 %277 to i64
  %279 = icmp ult i64 %278, 30
  br i1 %279, label %280, label %324

280:                                              ; preds = %276
  %281 = load i32, i32* %36, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [30 x %struct.TYPE_8__], [30 x %struct.TYPE_8__]* %5, i64 0, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %36, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [30 x %struct.TYPE_8__], [30 x %struct.TYPE_8__]* %5, i64 0, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %36, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [30 x %struct.TYPE_8__], [30 x %struct.TYPE_8__]* %5, i64 0, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @jerry_binary_operation(i32 %285, i32 %290, i32 %295)
  store i32 %296, i32* %37, align 4
  %297 = load i32, i32* %37, align 4
  %298 = call i32 @jerry_value_is_number(i32 %297)
  %299 = call i32 @TEST_ASSERT(i32 %298)
  %300 = load i32, i32* %37, align 4
  %301 = call double @jerry_get_number_value(i32 %300)
  store double %301, double* %38, align 8
  %302 = load double, double* %38, align 8
  %303 = load double, double* %38, align 8
  %304 = fcmp une double %302, %303
  %305 = zext i1 %304 to i32
  %306 = call i32 @TEST_ASSERT(i32 %305)
  %307 = load i32, i32* %36, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [30 x %struct.TYPE_8__], [30 x %struct.TYPE_8__]* %5, i64 0, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @jerry_release_value(i32 %311)
  %313 = load i32, i32* %36, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [30 x %struct.TYPE_8__], [30 x %struct.TYPE_8__]* %5, i64 0, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @jerry_release_value(i32 %317)
  %319 = load i32, i32* %37, align 4
  %320 = call i32 @jerry_release_value(i32 %319)
  br label %321

321:                                              ; preds = %280
  %322 = load i32, i32* %36, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %36, align 4
  br label %276

324:                                              ; preds = %276
  %325 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 0
  %326 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %327 = call i32 @jerry_create_number(double 5.000000e+00)
  %328 = call i32 @jerry_create_number(double 5.000000e+00)
  %329 = call i32 @jerry_create_number(double 1.000000e+01)
  %330 = call { i64, i64 } @T(i32 %326, i32 %327, i32 %328, i32 %329)
  %331 = bitcast %struct.TYPE_9__* %325 to { i64, i64 }*
  %332 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %331, i32 0, i32 0
  %333 = extractvalue { i64, i64 } %330, 0
  store i64 %333, i64* %332, align 16
  %334 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %331, i32 0, i32 1
  %335 = extractvalue { i64, i64 } %330, 1
  store i64 %335, i64* %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i64 1
  %337 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %338 = call i32 @jerry_create_number(double 3.100000e+00)
  %339 = call i32 @jerry_create_number(double 1.000000e+01)
  %340 = call i32 @jerry_create_number(double 1.310000e+01)
  %341 = call { i64, i64 } @T(i32 %337, i32 %338, i32 %339, i32 %340)
  %342 = bitcast %struct.TYPE_9__* %336 to { i64, i64 }*
  %343 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %342, i32 0, i32 0
  %344 = extractvalue { i64, i64 } %341, 0
  store i64 %344, i64* %343, align 16
  %345 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %342, i32 0, i32 1
  %346 = extractvalue { i64, i64 } %341, 1
  store i64 %346, i64* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i64 1
  %348 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %349 = call i32 @jerry_create_number(double 3.100000e+00)
  %350 = call i32 @jerry_create_boolean(i32 1)
  %351 = call i32 @jerry_create_number(double 4.100000e+00)
  %352 = call { i64, i64 } @T(i32 %348, i32 %349, i32 %350, i32 %351)
  %353 = bitcast %struct.TYPE_9__* %347 to { i64, i64 }*
  %354 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %353, i32 0, i32 0
  %355 = extractvalue { i64, i64 } %352, 0
  store i64 %355, i64* %354, align 16
  %356 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %353, i32 0, i32 1
  %357 = extractvalue { i64, i64 } %352, 1
  store i64 %357, i64* %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i64 1
  %359 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %360 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %361 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.3 to i32*))
  %362 = call i32 @jerry_create_string(i32* bitcast ([7 x i8]* @.str.4 to i32*))
  %363 = call { i64, i64 } @T(i32 %359, i32 %360, i32 %361, i32 %362)
  %364 = bitcast %struct.TYPE_9__* %358 to { i64, i64 }*
  %365 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %364, i32 0, i32 0
  %366 = extractvalue { i64, i64 } %363, 0
  store i64 %366, i64* %365, align 16
  %367 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %364, i32 0, i32 1
  %368 = extractvalue { i64, i64 } %363, 1
  store i64 %368, i64* %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i64 1
  %370 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %371 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %372 = call i32 (...) @jerry_create_undefined()
  %373 = call i32 @jerry_create_string(i32* bitcast ([13 x i8]* @.str.5 to i32*))
  %374 = call { i64, i64 } @T(i32 %370, i32 %371, i32 %372, i32 %373)
  %375 = bitcast %struct.TYPE_9__* %369 to { i64, i64 }*
  %376 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %375, i32 0, i32 0
  %377 = extractvalue { i64, i64 } %374, 0
  store i64 %377, i64* %376, align 16
  %378 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %375, i32 0, i32 1
  %379 = extractvalue { i64, i64 } %374, 1
  store i64 %379, i64* %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i64 1
  %381 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %382 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %383 = call i32 (...) @jerry_create_null()
  %384 = call i32 @jerry_create_string(i32* bitcast ([8 x i8]* @.str.6 to i32*))
  %385 = call { i64, i64 } @T(i32 %381, i32 %382, i32 %383, i32 %384)
  %386 = bitcast %struct.TYPE_9__* %380 to { i64, i64 }*
  %387 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %386, i32 0, i32 0
  %388 = extractvalue { i64, i64 } %385, 0
  store i64 %388, i64* %387, align 16
  %389 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %386, i32 0, i32 1
  %390 = extractvalue { i64, i64 } %385, 1
  store i64 %390, i64* %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i64 1
  %392 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %393 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %394 = call i32 @jerry_create_number(double 5.000000e+00)
  %395 = call i32 @jerry_create_string(i32* bitcast ([5 x i8]* @.str.7 to i32*))
  %396 = call { i64, i64 } @T(i32 %392, i32 %393, i32 %394, i32 %395)
  %397 = bitcast %struct.TYPE_9__* %391 to { i64, i64 }*
  %398 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %397, i32 0, i32 0
  %399 = extractvalue { i64, i64 } %396, 0
  store i64 %399, i64* %398, align 16
  %400 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %397, i32 0, i32 1
  %401 = extractvalue { i64, i64 } %396, 1
  store i64 %401, i64* %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i64 1
  %403 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %404 = call i32 (...) @jerry_create_null()
  %405 = call i32 (...) @jerry_create_null()
  %406 = call i32 @jerry_create_number(double 0.000000e+00)
  %407 = call { i64, i64 } @T(i32 %403, i32 %404, i32 %405, i32 %406)
  %408 = bitcast %struct.TYPE_9__* %402 to { i64, i64 }*
  %409 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %408, i32 0, i32 0
  %410 = extractvalue { i64, i64 } %407, 0
  store i64 %410, i64* %409, align 16
  %411 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %408, i32 0, i32 1
  %412 = extractvalue { i64, i64 } %407, 1
  store i64 %412, i64* %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i64 1
  %414 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %415 = call i32 @jerry_create_boolean(i32 1)
  %416 = call i32 @jerry_create_boolean(i32 1)
  %417 = call i32 @jerry_create_number(double 2.000000e+00)
  %418 = call { i64, i64 } @T(i32 %414, i32 %415, i32 %416, i32 %417)
  %419 = bitcast %struct.TYPE_9__* %413 to { i64, i64 }*
  %420 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %419, i32 0, i32 0
  %421 = extractvalue { i64, i64 } %418, 0
  store i64 %421, i64* %420, align 16
  %422 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %419, i32 0, i32 1
  %423 = extractvalue { i64, i64 } %418, 1
  store i64 %423, i64* %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i64 1
  %425 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %426 = call i32 @jerry_create_boolean(i32 1)
  %427 = call i32 @jerry_create_boolean(i32 0)
  %428 = call i32 @jerry_create_number(double 1.000000e+00)
  %429 = call { i64, i64 } @T(i32 %425, i32 %426, i32 %427, i32 %428)
  %430 = bitcast %struct.TYPE_9__* %424 to { i64, i64 }*
  %431 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %430, i32 0, i32 0
  %432 = extractvalue { i64, i64 } %429, 0
  store i64 %432, i64* %431, align 16
  %433 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %430, i32 0, i32 1
  %434 = extractvalue { i64, i64 } %429, 1
  store i64 %434, i64* %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i64 1
  %436 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %437 = call i32 @jerry_create_boolean(i32 0)
  %438 = call i32 @jerry_create_boolean(i32 1)
  %439 = call i32 @jerry_create_number(double 1.000000e+00)
  %440 = call { i64, i64 } @T(i32 %436, i32 %437, i32 %438, i32 %439)
  %441 = bitcast %struct.TYPE_9__* %435 to { i64, i64 }*
  %442 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %441, i32 0, i32 0
  %443 = extractvalue { i64, i64 } %440, 0
  store i64 %443, i64* %442, align 16
  %444 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %441, i32 0, i32 1
  %445 = extractvalue { i64, i64 } %440, 1
  store i64 %445, i64* %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i64 1
  %447 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %448 = call i32 @jerry_create_boolean(i32 0)
  %449 = call i32 @jerry_create_boolean(i32 0)
  %450 = call i32 @jerry_create_number(double 0.000000e+00)
  %451 = call { i64, i64 } @T(i32 %447, i32 %448, i32 %449, i32 %450)
  %452 = bitcast %struct.TYPE_9__* %446 to { i64, i64 }*
  %453 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %452, i32 0, i32 0
  %454 = extractvalue { i64, i64 } %451, 0
  store i64 %454, i64* %453, align 16
  %455 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %452, i32 0, i32 1
  %456 = extractvalue { i64, i64 } %451, 1
  store i64 %456, i64* %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %446, i64 1
  %458 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %459 = load i32, i32* %2, align 4
  %460 = call i32 @jerry_acquire_value(i32 %459)
  %461 = load i32, i32* %2, align 4
  %462 = call i32 @jerry_acquire_value(i32 %461)
  %463 = call i32 @jerry_create_string(i32* bitcast ([31 x i8]* @.str.8 to i32*))
  %464 = call { i64, i64 } @T(i32 %458, i32 %460, i32 %462, i32 %463)
  %465 = bitcast %struct.TYPE_9__* %457 to { i64, i64 }*
  %466 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %465, i32 0, i32 0
  %467 = extractvalue { i64, i64 } %464, 0
  store i64 %467, i64* %466, align 16
  %468 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %465, i32 0, i32 1
  %469 = extractvalue { i64, i64 } %464, 1
  store i64 %469, i64* %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %457, i64 1
  %471 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %472 = load i32, i32* %2, align 4
  %473 = call i32 @jerry_acquire_value(i32 %472)
  %474 = load i32, i32* %3, align 4
  %475 = call i32 @jerry_acquire_value(i32 %474)
  %476 = call i32 @jerry_create_string(i32* bitcast ([31 x i8]* @.str.8 to i32*))
  %477 = call { i64, i64 } @T(i32 %471, i32 %473, i32 %475, i32 %476)
  %478 = bitcast %struct.TYPE_9__* %470 to { i64, i64 }*
  %479 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %478, i32 0, i32 0
  %480 = extractvalue { i64, i64 } %477, 0
  store i64 %480, i64* %479, align 16
  %481 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %478, i32 0, i32 1
  %482 = extractvalue { i64, i64 } %477, 1
  store i64 %482, i64* %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i64 1
  %484 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %485 = load i32, i32* %3, align 4
  %486 = call i32 @jerry_acquire_value(i32 %485)
  %487 = load i32, i32* %2, align 4
  %488 = call i32 @jerry_acquire_value(i32 %487)
  %489 = call i32 @jerry_create_string(i32* bitcast ([31 x i8]* @.str.8 to i32*))
  %490 = call { i64, i64 } @T(i32 %484, i32 %486, i32 %488, i32 %489)
  %491 = bitcast %struct.TYPE_9__* %483 to { i64, i64 }*
  %492 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %491, i32 0, i32 0
  %493 = extractvalue { i64, i64 } %490, 0
  store i64 %493, i64* %492, align 16
  %494 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %491, i32 0, i32 1
  %495 = extractvalue { i64, i64 } %490, 1
  store i64 %495, i64* %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i64 1
  %497 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %498 = load i32, i32* %2, align 4
  %499 = call i32 @jerry_acquire_value(i32 %498)
  %500 = call i32 (...) @jerry_create_null()
  %501 = call i32 @jerry_create_string(i32* bitcast ([20 x i8]* @.str.9 to i32*))
  %502 = call { i64, i64 } @T(i32 %497, i32 %499, i32 %500, i32 %501)
  %503 = bitcast %struct.TYPE_9__* %496 to { i64, i64 }*
  %504 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %503, i32 0, i32 0
  %505 = extractvalue { i64, i64 } %502, 0
  store i64 %505, i64* %504, align 16
  %506 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %503, i32 0, i32 1
  %507 = extractvalue { i64, i64 } %502, 1
  store i64 %507, i64* %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i64 1
  %509 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %510 = load i32, i32* %2, align 4
  %511 = call i32 @jerry_acquire_value(i32 %510)
  %512 = call i32 (...) @jerry_create_undefined()
  %513 = call i32 @jerry_create_string(i32* bitcast ([25 x i8]* @.str.10 to i32*))
  %514 = call { i64, i64 } @T(i32 %509, i32 %511, i32 %512, i32 %513)
  %515 = bitcast %struct.TYPE_9__* %508 to { i64, i64 }*
  %516 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %515, i32 0, i32 0
  %517 = extractvalue { i64, i64 } %514, 0
  store i64 %517, i64* %516, align 16
  %518 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %515, i32 0, i32 1
  %519 = extractvalue { i64, i64 } %514, 1
  store i64 %519, i64* %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %508, i64 1
  %521 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %522 = load i32, i32* %2, align 4
  %523 = call i32 @jerry_acquire_value(i32 %522)
  %524 = call i32 @jerry_create_boolean(i32 1)
  %525 = call i32 @jerry_create_string(i32* bitcast ([20 x i8]* @.str.11 to i32*))
  %526 = call { i64, i64 } @T(i32 %521, i32 %523, i32 %524, i32 %525)
  %527 = bitcast %struct.TYPE_9__* %520 to { i64, i64 }*
  %528 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %527, i32 0, i32 0
  %529 = extractvalue { i64, i64 } %526, 0
  store i64 %529, i64* %528, align 16
  %530 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %527, i32 0, i32 1
  %531 = extractvalue { i64, i64 } %526, 1
  store i64 %531, i64* %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i64 1
  %533 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %534 = load i32, i32* %2, align 4
  %535 = call i32 @jerry_acquire_value(i32 %534)
  %536 = call i32 @jerry_create_boolean(i32 0)
  %537 = call i32 @jerry_create_string(i32* bitcast ([21 x i8]* @.str.12 to i32*))
  %538 = call { i64, i64 } @T(i32 %533, i32 %535, i32 %536, i32 %537)
  %539 = bitcast %struct.TYPE_9__* %532 to { i64, i64 }*
  %540 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %539, i32 0, i32 0
  %541 = extractvalue { i64, i64 } %538, 0
  store i64 %541, i64* %540, align 16
  %542 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %539, i32 0, i32 1
  %543 = extractvalue { i64, i64 } %538, 1
  store i64 %543, i64* %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %532, i64 1
  %545 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %546 = load i32, i32* %2, align 4
  %547 = call i32 @jerry_acquire_value(i32 %546)
  %548 = call i32 @jerry_create_number(double 5.000000e+00)
  %549 = call i32 @jerry_create_string(i32* bitcast ([17 x i8]* @.str.13 to i32*))
  %550 = call { i64, i64 } @T(i32 %545, i32 %547, i32 %548, i32 %549)
  %551 = bitcast %struct.TYPE_9__* %544 to { i64, i64 }*
  %552 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %551, i32 0, i32 0
  %553 = extractvalue { i64, i64 } %550, 0
  store i64 %553, i64* %552, align 16
  %554 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %551, i32 0, i32 1
  %555 = extractvalue { i64, i64 } %550, 1
  store i64 %555, i64* %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %544, i64 1
  %557 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %558 = load i32, i32* %2, align 4
  %559 = call i32 @jerry_acquire_value(i32 %558)
  %560 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %561 = call i32 @jerry_create_string(i32* bitcast ([19 x i8]* @.str.14 to i32*))
  %562 = call { i64, i64 } @T(i32 %557, i32 %559, i32 %560, i32 %561)
  %563 = bitcast %struct.TYPE_9__* %556 to { i64, i64 }*
  %564 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %563, i32 0, i32 0
  %565 = extractvalue { i64, i64 } %562, 0
  store i64 %565, i64* %564, align 16
  %566 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %563, i32 0, i32 1
  %567 = extractvalue { i64, i64 } %562, 1
  store i64 %567, i64* %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %556, i64 1
  %569 = load i32, i32* @JERRY_BIN_OP_SUB, align 4
  %570 = call i32 @jerry_create_number(double 5.000000e+00)
  %571 = call i32 @jerry_create_number(double 5.000000e+00)
  %572 = call i32 @jerry_create_number(double 0.000000e+00)
  %573 = call { i64, i64 } @T(i32 %569, i32 %570, i32 %571, i32 %572)
  %574 = bitcast %struct.TYPE_9__* %568 to { i64, i64 }*
  %575 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %574, i32 0, i32 0
  %576 = extractvalue { i64, i64 } %573, 0
  store i64 %576, i64* %575, align 16
  %577 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %574, i32 0, i32 1
  %578 = extractvalue { i64, i64 } %573, 1
  store i64 %578, i64* %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %568, i64 1
  %580 = load i32, i32* @JERRY_BIN_OP_SUB, align 4
  %581 = call i32 @jerry_create_number(double 3.100000e+00)
  %582 = call i32 @jerry_create_number(double 1.000000e+01)
  %583 = call i32 @jerry_create_number(double -6.900000e+00)
  %584 = call { i64, i64 } @T(i32 %580, i32 %581, i32 %582, i32 %583)
  %585 = bitcast %struct.TYPE_9__* %579 to { i64, i64 }*
  %586 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 0
  %587 = extractvalue { i64, i64 } %584, 0
  store i64 %587, i64* %586, align 16
  %588 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %585, i32 0, i32 1
  %589 = extractvalue { i64, i64 } %584, 1
  store i64 %589, i64* %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %579, i64 1
  %591 = load i32, i32* @JERRY_BIN_OP_SUB, align 4
  %592 = call i32 @jerry_create_number(double 3.100000e+00)
  %593 = call i32 @jerry_create_boolean(i32 1)
  %594 = call i32 @jerry_create_number(double 2.100000e+00)
  %595 = call { i64, i64 } @T(i32 %591, i32 %592, i32 %593, i32 %594)
  %596 = bitcast %struct.TYPE_9__* %590 to { i64, i64 }*
  %597 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %596, i32 0, i32 0
  %598 = extractvalue { i64, i64 } %595, 0
  store i64 %598, i64* %597, align 16
  %599 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %596, i32 0, i32 1
  %600 = extractvalue { i64, i64 } %595, 1
  store i64 %600, i64* %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %590, i64 1
  %602 = load i32, i32* @JERRY_BIN_OP_SUB, align 4
  %603 = call i32 @jerry_create_boolean(i32 1)
  %604 = call i32 @jerry_create_boolean(i32 1)
  %605 = call i32 @jerry_create_number(double 0.000000e+00)
  %606 = call { i64, i64 } @T(i32 %602, i32 %603, i32 %604, i32 %605)
  %607 = bitcast %struct.TYPE_9__* %601 to { i64, i64 }*
  %608 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %607, i32 0, i32 0
  %609 = extractvalue { i64, i64 } %606, 0
  store i64 %609, i64* %608, align 16
  %610 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %607, i32 0, i32 1
  %611 = extractvalue { i64, i64 } %606, 1
  store i64 %611, i64* %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %601, i64 1
  %613 = load i32, i32* @JERRY_BIN_OP_SUB, align 4
  %614 = call i32 @jerry_create_boolean(i32 1)
  %615 = call i32 @jerry_create_boolean(i32 0)
  %616 = call i32 @jerry_create_number(double 1.000000e+00)
  %617 = call { i64, i64 } @T(i32 %613, i32 %614, i32 %615, i32 %616)
  %618 = bitcast %struct.TYPE_9__* %612 to { i64, i64 }*
  %619 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %618, i32 0, i32 0
  %620 = extractvalue { i64, i64 } %617, 0
  store i64 %620, i64* %619, align 16
  %621 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %618, i32 0, i32 1
  %622 = extractvalue { i64, i64 } %617, 1
  store i64 %622, i64* %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %612, i64 1
  %624 = load i32, i32* @JERRY_BIN_OP_SUB, align 4
  %625 = call i32 @jerry_create_boolean(i32 0)
  %626 = call i32 @jerry_create_boolean(i32 1)
  %627 = call i32 @jerry_create_number(double -1.000000e+00)
  %628 = call { i64, i64 } @T(i32 %624, i32 %625, i32 %626, i32 %627)
  %629 = bitcast %struct.TYPE_9__* %623 to { i64, i64 }*
  %630 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %629, i32 0, i32 0
  %631 = extractvalue { i64, i64 } %628, 0
  store i64 %631, i64* %630, align 16
  %632 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %629, i32 0, i32 1
  %633 = extractvalue { i64, i64 } %628, 1
  store i64 %633, i64* %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %623, i64 1
  %635 = load i32, i32* @JERRY_BIN_OP_SUB, align 4
  %636 = call i32 @jerry_create_boolean(i32 0)
  %637 = call i32 @jerry_create_boolean(i32 0)
  %638 = call i32 @jerry_create_number(double 0.000000e+00)
  %639 = call { i64, i64 } @T(i32 %635, i32 %636, i32 %637, i32 %638)
  %640 = bitcast %struct.TYPE_9__* %634 to { i64, i64 }*
  %641 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %640, i32 0, i32 0
  %642 = extractvalue { i64, i64 } %639, 0
  store i64 %642, i64* %641, align 16
  %643 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %640, i32 0, i32 1
  %644 = extractvalue { i64, i64 } %639, 1
  store i64 %644, i64* %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %634, i64 1
  %646 = load i32, i32* @JERRY_BIN_OP_SUB, align 4
  %647 = call i32 (...) @jerry_create_null()
  %648 = call i32 (...) @jerry_create_null()
  %649 = call i32 @jerry_create_number(double -0.000000e+00)
  %650 = call { i64, i64 } @T(i32 %646, i32 %647, i32 %648, i32 %649)
  %651 = bitcast %struct.TYPE_9__* %645 to { i64, i64 }*
  %652 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %651, i32 0, i32 0
  %653 = extractvalue { i64, i64 } %650, 0
  store i64 %653, i64* %652, align 16
  %654 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %651, i32 0, i32 1
  %655 = extractvalue { i64, i64 } %650, 1
  store i64 %655, i64* %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %645, i64 1
  %657 = load i32, i32* @JERRY_BIN_OP_MUL, align 4
  %658 = call i32 @jerry_create_number(double 5.000000e+00)
  %659 = call i32 @jerry_create_number(double 5.000000e+00)
  %660 = call i32 @jerry_create_number(double 2.500000e+01)
  %661 = call { i64, i64 } @T(i32 %657, i32 %658, i32 %659, i32 %660)
  %662 = bitcast %struct.TYPE_9__* %656 to { i64, i64 }*
  %663 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %662, i32 0, i32 0
  %664 = extractvalue { i64, i64 } %661, 0
  store i64 %664, i64* %663, align 16
  %665 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %662, i32 0, i32 1
  %666 = extractvalue { i64, i64 } %661, 1
  store i64 %666, i64* %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %656, i64 1
  %668 = load i32, i32* @JERRY_BIN_OP_MUL, align 4
  %669 = call i32 @jerry_create_number(double 3.100000e+00)
  %670 = call i32 @jerry_create_number(double 1.000000e+01)
  %671 = call i32 @jerry_create_number(double 3.100000e+01)
  %672 = call { i64, i64 } @T(i32 %668, i32 %669, i32 %670, i32 %671)
  %673 = bitcast %struct.TYPE_9__* %667 to { i64, i64 }*
  %674 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %673, i32 0, i32 0
  %675 = extractvalue { i64, i64 } %672, 0
  store i64 %675, i64* %674, align 16
  %676 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %673, i32 0, i32 1
  %677 = extractvalue { i64, i64 } %672, 1
  store i64 %677, i64* %676, align 8
  %678 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %667, i64 1
  %679 = load i32, i32* @JERRY_BIN_OP_MUL, align 4
  %680 = call i32 @jerry_create_number(double 3.100000e+00)
  %681 = call i32 @jerry_create_boolean(i32 1)
  %682 = call i32 @jerry_create_number(double 3.100000e+00)
  %683 = call { i64, i64 } @T(i32 %679, i32 %680, i32 %681, i32 %682)
  %684 = bitcast %struct.TYPE_9__* %678 to { i64, i64 }*
  %685 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %684, i32 0, i32 0
  %686 = extractvalue { i64, i64 } %683, 0
  store i64 %686, i64* %685, align 16
  %687 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %684, i32 0, i32 1
  %688 = extractvalue { i64, i64 } %683, 1
  store i64 %688, i64* %687, align 8
  %689 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %678, i64 1
  %690 = load i32, i32* @JERRY_BIN_OP_MUL, align 4
  %691 = call i32 @jerry_create_boolean(i32 1)
  %692 = call i32 @jerry_create_boolean(i32 1)
  %693 = call i32 @jerry_create_number(double 1.000000e+00)
  %694 = call { i64, i64 } @T(i32 %690, i32 %691, i32 %692, i32 %693)
  %695 = bitcast %struct.TYPE_9__* %689 to { i64, i64 }*
  %696 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %695, i32 0, i32 0
  %697 = extractvalue { i64, i64 } %694, 0
  store i64 %697, i64* %696, align 16
  %698 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %695, i32 0, i32 1
  %699 = extractvalue { i64, i64 } %694, 1
  store i64 %699, i64* %698, align 8
  %700 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %689, i64 1
  %701 = load i32, i32* @JERRY_BIN_OP_MUL, align 4
  %702 = call i32 @jerry_create_boolean(i32 1)
  %703 = call i32 @jerry_create_boolean(i32 0)
  %704 = call i32 @jerry_create_number(double 0.000000e+00)
  %705 = call { i64, i64 } @T(i32 %701, i32 %702, i32 %703, i32 %704)
  %706 = bitcast %struct.TYPE_9__* %700 to { i64, i64 }*
  %707 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %706, i32 0, i32 0
  %708 = extractvalue { i64, i64 } %705, 0
  store i64 %708, i64* %707, align 16
  %709 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %706, i32 0, i32 1
  %710 = extractvalue { i64, i64 } %705, 1
  store i64 %710, i64* %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %700, i64 1
  %712 = load i32, i32* @JERRY_BIN_OP_MUL, align 4
  %713 = call i32 @jerry_create_boolean(i32 0)
  %714 = call i32 @jerry_create_boolean(i32 1)
  %715 = call i32 @jerry_create_number(double 0.000000e+00)
  %716 = call { i64, i64 } @T(i32 %712, i32 %713, i32 %714, i32 %715)
  %717 = bitcast %struct.TYPE_9__* %711 to { i64, i64 }*
  %718 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %717, i32 0, i32 0
  %719 = extractvalue { i64, i64 } %716, 0
  store i64 %719, i64* %718, align 16
  %720 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %717, i32 0, i32 1
  %721 = extractvalue { i64, i64 } %716, 1
  store i64 %721, i64* %720, align 8
  %722 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %711, i64 1
  %723 = load i32, i32* @JERRY_BIN_OP_MUL, align 4
  %724 = call i32 @jerry_create_boolean(i32 0)
  %725 = call i32 @jerry_create_boolean(i32 0)
  %726 = call i32 @jerry_create_number(double 0.000000e+00)
  %727 = call { i64, i64 } @T(i32 %723, i32 %724, i32 %725, i32 %726)
  %728 = bitcast %struct.TYPE_9__* %722 to { i64, i64 }*
  %729 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %728, i32 0, i32 0
  %730 = extractvalue { i64, i64 } %727, 0
  store i64 %730, i64* %729, align 16
  %731 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %728, i32 0, i32 1
  %732 = extractvalue { i64, i64 } %727, 1
  store i64 %732, i64* %731, align 8
  %733 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %722, i64 1
  %734 = load i32, i32* @JERRY_BIN_OP_MUL, align 4
  %735 = call i32 (...) @jerry_create_null()
  %736 = call i32 (...) @jerry_create_null()
  %737 = call i32 @jerry_create_number(double 0.000000e+00)
  %738 = call { i64, i64 } @T(i32 %734, i32 %735, i32 %736, i32 %737)
  %739 = bitcast %struct.TYPE_9__* %733 to { i64, i64 }*
  %740 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %739, i32 0, i32 0
  %741 = extractvalue { i64, i64 } %738, 0
  store i64 %741, i64* %740, align 16
  %742 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %739, i32 0, i32 1
  %743 = extractvalue { i64, i64 } %738, 1
  store i64 %743, i64* %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %733, i64 1
  %745 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %746 = call i32 @jerry_create_number(double 5.000000e+00)
  %747 = call i32 @jerry_create_number(double 5.000000e+00)
  %748 = call i32 @jerry_create_number(double 1.000000e+00)
  %749 = call { i64, i64 } @T(i32 %745, i32 %746, i32 %747, i32 %748)
  %750 = bitcast %struct.TYPE_9__* %744 to { i64, i64 }*
  %751 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %750, i32 0, i32 0
  %752 = extractvalue { i64, i64 } %749, 0
  store i64 %752, i64* %751, align 16
  %753 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %750, i32 0, i32 1
  %754 = extractvalue { i64, i64 } %749, 1
  store i64 %754, i64* %753, align 8
  %755 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %744, i64 1
  %756 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %757 = call i32 @jerry_create_number(double 3.100000e+00)
  %758 = call i32 @jerry_create_number(double 1.000000e+01)
  %759 = call i32 @jerry_create_number(double 3.100000e-01)
  %760 = call { i64, i64 } @T(i32 %756, i32 %757, i32 %758, i32 %759)
  %761 = bitcast %struct.TYPE_9__* %755 to { i64, i64 }*
  %762 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %761, i32 0, i32 0
  %763 = extractvalue { i64, i64 } %760, 0
  store i64 %763, i64* %762, align 16
  %764 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %761, i32 0, i32 1
  %765 = extractvalue { i64, i64 } %760, 1
  store i64 %765, i64* %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %755, i64 1
  %767 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %768 = call i32 @jerry_create_number(double 3.100000e+00)
  %769 = call i32 @jerry_create_boolean(i32 1)
  %770 = call i32 @jerry_create_number(double 3.100000e+00)
  %771 = call { i64, i64 } @T(i32 %767, i32 %768, i32 %769, i32 %770)
  %772 = bitcast %struct.TYPE_9__* %766 to { i64, i64 }*
  %773 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %772, i32 0, i32 0
  %774 = extractvalue { i64, i64 } %771, 0
  store i64 %774, i64* %773, align 16
  %775 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %772, i32 0, i32 1
  %776 = extractvalue { i64, i64 } %771, 1
  store i64 %776, i64* %775, align 8
  %777 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %766, i64 1
  %778 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %779 = call i32 @jerry_create_boolean(i32 1)
  %780 = call i32 @jerry_create_boolean(i32 1)
  %781 = call i32 @jerry_create_number(double 1.000000e+00)
  %782 = call { i64, i64 } @T(i32 %778, i32 %779, i32 %780, i32 %781)
  %783 = bitcast %struct.TYPE_9__* %777 to { i64, i64 }*
  %784 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %783, i32 0, i32 0
  %785 = extractvalue { i64, i64 } %782, 0
  store i64 %785, i64* %784, align 16
  %786 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %783, i32 0, i32 1
  %787 = extractvalue { i64, i64 } %782, 1
  store i64 %787, i64* %786, align 8
  %788 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %777, i64 1
  %789 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %790 = call i32 @jerry_create_boolean(i32 1)
  %791 = call i32 @jerry_create_boolean(i32 0)
  %792 = call i32 @jerry_create_number_infinity(i32 0)
  %793 = call { i64, i64 } @T(i32 %789, i32 %790, i32 %791, i32 %792)
  %794 = bitcast %struct.TYPE_9__* %788 to { i64, i64 }*
  %795 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %794, i32 0, i32 0
  %796 = extractvalue { i64, i64 } %793, 0
  store i64 %796, i64* %795, align 16
  %797 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %794, i32 0, i32 1
  %798 = extractvalue { i64, i64 } %793, 1
  store i64 %798, i64* %797, align 8
  %799 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %788, i64 1
  %800 = load i32, i32* @JERRY_BIN_OP_DIV, align 4
  %801 = call i32 @jerry_create_boolean(i32 0)
  %802 = call i32 @jerry_create_boolean(i32 1)
  %803 = call i32 @jerry_create_number(double 0.000000e+00)
  %804 = call { i64, i64 } @T(i32 %800, i32 %801, i32 %802, i32 %803)
  %805 = bitcast %struct.TYPE_9__* %799 to { i64, i64 }*
  %806 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %805, i32 0, i32 0
  %807 = extractvalue { i64, i64 } %804, 0
  store i64 %807, i64* %806, align 16
  %808 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %805, i32 0, i32 1
  %809 = extractvalue { i64, i64 } %804, 1
  store i64 %809, i64* %808, align 8
  %810 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %799, i64 1
  %811 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %812 = call i32 @jerry_create_number(double 5.000000e+00)
  %813 = call i32 @jerry_create_number(double 5.000000e+00)
  %814 = call i32 @jerry_create_number(double 0.000000e+00)
  %815 = call { i64, i64 } @T(i32 %811, i32 %812, i32 %813, i32 %814)
  %816 = bitcast %struct.TYPE_9__* %810 to { i64, i64 }*
  %817 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %816, i32 0, i32 0
  %818 = extractvalue { i64, i64 } %815, 0
  store i64 %818, i64* %817, align 16
  %819 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %816, i32 0, i32 1
  %820 = extractvalue { i64, i64 } %815, 1
  store i64 %820, i64* %819, align 8
  %821 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %810, i64 1
  %822 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %823 = call i32 @jerry_create_number(double 5.000000e+00)
  %824 = call i32 @jerry_create_number(double 2.000000e+00)
  %825 = call i32 @jerry_create_number(double 1.000000e+00)
  %826 = call { i64, i64 } @T(i32 %822, i32 %823, i32 %824, i32 %825)
  %827 = bitcast %struct.TYPE_9__* %821 to { i64, i64 }*
  %828 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %827, i32 0, i32 0
  %829 = extractvalue { i64, i64 } %826, 0
  store i64 %829, i64* %828, align 16
  %830 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %827, i32 0, i32 1
  %831 = extractvalue { i64, i64 } %826, 1
  store i64 %831, i64* %830, align 8
  %832 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %821, i64 1
  %833 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %834 = call i32 @jerry_create_number(double 3.100000e+00)
  %835 = call i32 @jerry_create_number(double 1.000000e+01)
  %836 = call i32 @jerry_create_number(double 3.100000e+00)
  %837 = call { i64, i64 } @T(i32 %833, i32 %834, i32 %835, i32 %836)
  %838 = bitcast %struct.TYPE_9__* %832 to { i64, i64 }*
  %839 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %838, i32 0, i32 0
  %840 = extractvalue { i64, i64 } %837, 0
  store i64 %840, i64* %839, align 16
  %841 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %838, i32 0, i32 1
  %842 = extractvalue { i64, i64 } %837, 1
  store i64 %842, i64* %841, align 8
  %843 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %832, i64 1
  %844 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %845 = call i32 @jerry_create_number(double 3.100000e+00)
  %846 = call i32 @jerry_create_boolean(i32 1)
  %847 = call i32 @jerry_create_number(double 0x3FB99999999999A0)
  %848 = call { i64, i64 } @T(i32 %844, i32 %845, i32 %846, i32 %847)
  %849 = bitcast %struct.TYPE_9__* %843 to { i64, i64 }*
  %850 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %849, i32 0, i32 0
  %851 = extractvalue { i64, i64 } %848, 0
  store i64 %851, i64* %850, align 16
  %852 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %849, i32 0, i32 1
  %853 = extractvalue { i64, i64 } %848, 1
  store i64 %853, i64* %852, align 8
  %854 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %843, i64 1
  %855 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %856 = call i32 @jerry_create_boolean(i32 1)
  %857 = call i32 @jerry_create_boolean(i32 1)
  %858 = call i32 @jerry_create_number(double 0.000000e+00)
  %859 = call { i64, i64 } @T(i32 %855, i32 %856, i32 %857, i32 %858)
  %860 = bitcast %struct.TYPE_9__* %854 to { i64, i64 }*
  %861 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %860, i32 0, i32 0
  %862 = extractvalue { i64, i64 } %859, 0
  store i64 %862, i64* %861, align 16
  %863 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %860, i32 0, i32 1
  %864 = extractvalue { i64, i64 } %859, 1
  store i64 %864, i64* %863, align 8
  %865 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %854, i64 1
  %866 = load i32, i32* @JERRY_BIN_OP_REM, align 4
  %867 = call i32 @jerry_create_boolean(i32 0)
  %868 = call i32 @jerry_create_boolean(i32 1)
  %869 = call i32 @jerry_create_number(double 0.000000e+00)
  %870 = call { i64, i64 } @T(i32 %866, i32 %867, i32 %868, i32 %869)
  %871 = bitcast %struct.TYPE_9__* %865 to { i64, i64 }*
  %872 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %871, i32 0, i32 0
  %873 = extractvalue { i64, i64 } %870, 0
  store i64 %873, i64* %872, align 16
  %874 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %871, i32 0, i32 1
  %875 = extractvalue { i64, i64 } %870, 1
  store i64 %875, i64* %874, align 8
  store i32 0, i32* %40, align 4
  br label %876

876:                                              ; preds = %944, %324
  %877 = load i32, i32* %40, align 4
  %878 = sext i32 %877 to i64
  %879 = icmp ult i64 %878, 49
  br i1 %879, label %880, label %947

880:                                              ; preds = %876
  %881 = load i32, i32* %40, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 %882
  %884 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %883, i32 0, i32 0
  %885 = load i32, i32* %884, align 16
  %886 = load i32, i32* %40, align 4
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 %887
  %889 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %888, i32 0, i32 3
  %890 = load i32, i32* %889, align 4
  %891 = load i32, i32* %40, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 %892
  %894 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %893, i32 0, i32 2
  %895 = load i32, i32* %894, align 8
  %896 = call i32 @jerry_binary_operation(i32 %885, i32 %890, i32 %895)
  store i32 %896, i32* %41, align 4
  %897 = load i32, i32* %41, align 4
  %898 = call i32 @jerry_value_is_error(i32 %897)
  %899 = icmp ne i32 %898, 0
  %900 = xor i1 %899, true
  %901 = zext i1 %900 to i32
  %902 = call i32 @TEST_ASSERT(i32 %901)
  %903 = load i32, i32* @JERRY_BIN_OP_STRICT_EQUAL, align 4
  %904 = load i32, i32* %41, align 4
  %905 = load i32, i32* %40, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 %906
  %908 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %907, i32 0, i32 1
  %909 = load i32, i32* %908, align 4
  %910 = call i32 @jerry_binary_operation(i32 %903, i32 %904, i32 %909)
  store i32 %910, i32* %42, align 4
  %911 = load i32, i32* %42, align 4
  %912 = call i64 @jerry_value_is_boolean(i32 %911)
  %913 = icmp ne i64 %912, 0
  br i1 %913, label %914, label %918

914:                                              ; preds = %880
  %915 = load i32, i32* %42, align 4
  %916 = call i64 @jerry_get_boolean_value(i32 %915)
  %917 = icmp ne i64 %916, 0
  br label %918

918:                                              ; preds = %914, %880
  %919 = phi i1 [ false, %880 ], [ %917, %914 ]
  %920 = zext i1 %919 to i32
  %921 = call i32 @TEST_ASSERT(i32 %920)
  %922 = load i32, i32* %42, align 4
  %923 = call i32 @jerry_release_value(i32 %922)
  %924 = load i32, i32* %40, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 %925
  %927 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %926, i32 0, i32 3
  %928 = load i32, i32* %927, align 4
  %929 = call i32 @jerry_release_value(i32 %928)
  %930 = load i32, i32* %40, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 %931
  %933 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %932, i32 0, i32 2
  %934 = load i32, i32* %933, align 8
  %935 = call i32 @jerry_release_value(i32 %934)
  %936 = load i32, i32* %40, align 4
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 %937
  %939 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %938, i32 0, i32 1
  %940 = load i32, i32* %939, align 4
  %941 = call i32 @jerry_release_value(i32 %940)
  %942 = load i32, i32* %41, align 4
  %943 = call i32 @jerry_release_value(i32 %942)
  br label %944

944:                                              ; preds = %918
  %945 = load i32, i32* %40, align 4
  %946 = add nsw i32 %945, 1
  store i32 %946, i32* %40, align 4
  br label %876

947:                                              ; preds = %876
  %948 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %949 = call i32 @jerry_eval(i32* bitcast ([34 x i8]* @.str.15 to i32*), i32 33, i32 %948)
  store i32 %949, i32* %43, align 4
  %950 = getelementptr inbounds [18 x %struct.TYPE_8__], [18 x %struct.TYPE_8__]* %44, i64 0, i64 0
  %951 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %952 = load i32, i32* %4, align 4
  %953 = call i32 @jerry_acquire_value(i32 %952)
  %954 = load i32, i32* %4, align 4
  %955 = call i32 @jerry_acquire_value(i32 %954)
  %956 = call { i64, i32 } @T_ERR(i32 %951, i32 %953, i32 %955)
  store { i64, i32 } %956, { i64, i32 }* %45, align 8
  %957 = bitcast { i64, i32 }* %45 to i8*
  %958 = bitcast %struct.TYPE_8__* %950 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %958, i8* align 8 %957, i64 12, i1 false)
  %959 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %950, i64 1
  %960 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %961 = load i32, i32* %4, align 4
  %962 = call i32 @jerry_acquire_value(i32 %961)
  %963 = call i32 (...) @jerry_create_undefined()
  %964 = call { i64, i32 } @T_ERR(i32 %960, i32 %962, i32 %963)
  store { i64, i32 } %964, { i64, i32 }* %46, align 8
  %965 = bitcast { i64, i32 }* %46 to i8*
  %966 = bitcast %struct.TYPE_8__* %959 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %966, i8* align 8 %965, i64 12, i1 false)
  %967 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %959, i64 1
  %968 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %969 = call i32 (...) @jerry_create_undefined()
  %970 = load i32, i32* %4, align 4
  %971 = call i32 @jerry_acquire_value(i32 %970)
  %972 = call { i64, i32 } @T_ERR(i32 %968, i32 %969, i32 %971)
  store { i64, i32 } %972, { i64, i32 }* %47, align 8
  %973 = bitcast { i64, i32 }* %47 to i8*
  %974 = bitcast %struct.TYPE_8__* %967 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %974, i8* align 8 %973, i64 12, i1 false)
  %975 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %967, i64 1
  %976 = load i32, i32* %4, align 4
  %977 = call i32 @jerry_acquire_value(i32 %976)
  %978 = load i32, i32* %4, align 4
  %979 = call i32 @jerry_acquire_value(i32 %978)
  %980 = call { i64, i32 } @T_ARI(i32 %977, i32 %979)
  store { i64, i32 } %980, { i64, i32 }* %48, align 8
  %981 = bitcast { i64, i32 }* %48 to i8*
  %982 = bitcast %struct.TYPE_8__* %975 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %982, i8* align 8 %981, i64 12, i1 false)
  %983 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %975, i64 1
  %984 = load i32, i32* %4, align 4
  %985 = call i32 @jerry_acquire_value(i32 %984)
  %986 = call i32 (...) @jerry_create_undefined()
  %987 = call { i64, i32 } @T_ARI(i32 %985, i32 %986)
  store { i64, i32 } %987, { i64, i32 }* %49, align 8
  %988 = bitcast { i64, i32 }* %49 to i8*
  %989 = bitcast %struct.TYPE_8__* %983 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %989, i8* align 8 %988, i64 12, i1 false)
  %990 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %983, i64 1
  %991 = call i32 (...) @jerry_create_undefined()
  %992 = load i32, i32* %4, align 4
  %993 = call i32 @jerry_acquire_value(i32 %992)
  %994 = call { i64, i32 } @T_ARI(i32 %991, i32 %993)
  store { i64, i32 } %994, { i64, i32 }* %50, align 8
  %995 = bitcast { i64, i32 }* %50 to i8*
  %996 = bitcast %struct.TYPE_8__* %990 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %996, i8* align 8 %995, i64 12, i1 false)
  %997 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %990, i64 1
  %998 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %999 = load i32, i32* %43, align 4
  %1000 = call i32 @jerry_acquire_value(i32 %999)
  %1001 = call i32 (...) @jerry_create_undefined()
  %1002 = call { i64, i32 } @T_ERR(i32 %998, i32 %1000, i32 %1001)
  store { i64, i32 } %1002, { i64, i32 }* %51, align 8
  %1003 = bitcast { i64, i32 }* %51 to i8*
  %1004 = bitcast %struct.TYPE_8__* %997 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1004, i8* align 8 %1003, i64 12, i1 false)
  %1005 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %997, i64 1
  %1006 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %1007 = load i32, i32* %43, align 4
  %1008 = call i32 @jerry_acquire_value(i32 %1007)
  %1009 = call i32 (...) @jerry_create_null()
  %1010 = call { i64, i32 } @T_ERR(i32 %1006, i32 %1008, i32 %1009)
  store { i64, i32 } %1010, { i64, i32 }* %52, align 8
  %1011 = bitcast { i64, i32 }* %52 to i8*
  %1012 = bitcast %struct.TYPE_8__* %1005 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1012, i8* align 8 %1011, i64 12, i1 false)
  %1013 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1005, i64 1
  %1014 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %1015 = load i32, i32* %43, align 4
  %1016 = call i32 @jerry_acquire_value(i32 %1015)
  %1017 = call i32 @jerry_create_boolean(i32 1)
  %1018 = call { i64, i32 } @T_ERR(i32 %1014, i32 %1016, i32 %1017)
  store { i64, i32 } %1018, { i64, i32 }* %53, align 8
  %1019 = bitcast { i64, i32 }* %53 to i8*
  %1020 = bitcast %struct.TYPE_8__* %1013 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1020, i8* align 8 %1019, i64 12, i1 false)
  %1021 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1013, i64 1
  %1022 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %1023 = load i32, i32* %43, align 4
  %1024 = call i32 @jerry_acquire_value(i32 %1023)
  %1025 = call i32 @jerry_create_boolean(i32 0)
  %1026 = call { i64, i32 } @T_ERR(i32 %1022, i32 %1024, i32 %1025)
  store { i64, i32 } %1026, { i64, i32 }* %54, align 8
  %1027 = bitcast { i64, i32 }* %54 to i8*
  %1028 = bitcast %struct.TYPE_8__* %1021 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1028, i8* align 8 %1027, i64 12, i1 false)
  %1029 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1021, i64 1
  %1030 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %1031 = load i32, i32* %43, align 4
  %1032 = call i32 @jerry_acquire_value(i32 %1031)
  %1033 = load i32, i32* %3, align 4
  %1034 = call i32 @jerry_acquire_value(i32 %1033)
  %1035 = call { i64, i32 } @T_ERR(i32 %1030, i32 %1032, i32 %1034)
  store { i64, i32 } %1035, { i64, i32 }* %55, align 8
  %1036 = bitcast { i64, i32 }* %55 to i8*
  %1037 = bitcast %struct.TYPE_8__* %1029 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1037, i8* align 8 %1036, i64 12, i1 false)
  %1038 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1029, i64 1
  %1039 = load i32, i32* @JERRY_BIN_OP_ADD, align 4
  %1040 = load i32, i32* %43, align 4
  %1041 = call i32 @jerry_acquire_value(i32 %1040)
  %1042 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %1043 = call { i64, i32 } @T_ERR(i32 %1039, i32 %1041, i32 %1042)
  store { i64, i32 } %1043, { i64, i32 }* %56, align 8
  %1044 = bitcast { i64, i32 }* %56 to i8*
  %1045 = bitcast %struct.TYPE_8__* %1038 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1045, i8* align 8 %1044, i64 12, i1 false)
  %1046 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1038, i64 1
  %1047 = load i32, i32* %43, align 4
  %1048 = call i32 @jerry_acquire_value(i32 %1047)
  %1049 = call i32 (...) @jerry_create_undefined()
  %1050 = call { i64, i32 } @T_ARI(i32 %1048, i32 %1049)
  store { i64, i32 } %1050, { i64, i32 }* %57, align 8
  %1051 = bitcast { i64, i32 }* %57 to i8*
  %1052 = bitcast %struct.TYPE_8__* %1046 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1052, i8* align 8 %1051, i64 12, i1 false)
  %1053 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1046, i64 1
  %1054 = load i32, i32* %43, align 4
  %1055 = call i32 @jerry_acquire_value(i32 %1054)
  %1056 = call i32 (...) @jerry_create_null()
  %1057 = call { i64, i32 } @T_ARI(i32 %1055, i32 %1056)
  store { i64, i32 } %1057, { i64, i32 }* %58, align 8
  %1058 = bitcast { i64, i32 }* %58 to i8*
  %1059 = bitcast %struct.TYPE_8__* %1053 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1059, i8* align 8 %1058, i64 12, i1 false)
  %1060 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1053, i64 1
  %1061 = load i32, i32* %43, align 4
  %1062 = call i32 @jerry_acquire_value(i32 %1061)
  %1063 = call i32 @jerry_create_boolean(i32 1)
  %1064 = call { i64, i32 } @T_ARI(i32 %1062, i32 %1063)
  store { i64, i32 } %1064, { i64, i32 }* %59, align 8
  %1065 = bitcast { i64, i32 }* %59 to i8*
  %1066 = bitcast %struct.TYPE_8__* %1060 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1066, i8* align 8 %1065, i64 12, i1 false)
  %1067 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1060, i64 1
  %1068 = load i32, i32* %43, align 4
  %1069 = call i32 @jerry_acquire_value(i32 %1068)
  %1070 = call i32 @jerry_create_boolean(i32 0)
  %1071 = call { i64, i32 } @T_ARI(i32 %1069, i32 %1070)
  store { i64, i32 } %1071, { i64, i32 }* %60, align 8
  %1072 = bitcast { i64, i32 }* %60 to i8*
  %1073 = bitcast %struct.TYPE_8__* %1067 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1073, i8* align 8 %1072, i64 12, i1 false)
  %1074 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1067, i64 1
  %1075 = load i32, i32* %43, align 4
  %1076 = call i32 @jerry_acquire_value(i32 %1075)
  %1077 = load i32, i32* %3, align 4
  %1078 = call i32 @jerry_acquire_value(i32 %1077)
  %1079 = call { i64, i32 } @T_ARI(i32 %1076, i32 %1078)
  store { i64, i32 } %1079, { i64, i32 }* %61, align 8
  %1080 = bitcast { i64, i32 }* %61 to i8*
  %1081 = bitcast %struct.TYPE_8__* %1074 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1081, i8* align 8 %1080, i64 12, i1 false)
  %1082 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1074, i64 1
  %1083 = load i32, i32* %43, align 4
  %1084 = call i32 @jerry_acquire_value(i32 %1083)
  %1085 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  %1086 = call { i64, i32 } @T_ARI(i32 %1084, i32 %1085)
  store { i64, i32 } %1086, { i64, i32 }* %62, align 8
  %1087 = bitcast { i64, i32 }* %62 to i8*
  %1088 = bitcast %struct.TYPE_8__* %1082 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1088, i8* align 8 %1087, i64 12, i1 false)
  store i32 0, i32* %63, align 4
  br label %1089

1089:                                             ; preds = %1127, %947
  %1090 = load i32, i32* %63, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = icmp ult i64 %1091, 18
  br i1 %1092, label %1093, label %1130

1093:                                             ; preds = %1089
  %1094 = load i32, i32* %63, align 4
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds [49 x %struct.TYPE_9__], [49 x %struct.TYPE_9__]* %39, i64 0, i64 %1095
  %1097 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1096, i32 0, i32 0
  %1098 = load i32, i32* %1097, align 16
  %1099 = load i32, i32* %63, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds [18 x %struct.TYPE_8__], [18 x %struct.TYPE_8__]* %44, i64 0, i64 %1100
  %1102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1101, i32 0, i32 1
  %1103 = load i32, i32* %1102, align 4
  %1104 = load i32, i32* %63, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds [18 x %struct.TYPE_8__], [18 x %struct.TYPE_8__]* %44, i64 0, i64 %1105
  %1107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1106, i32 0, i32 0
  %1108 = load i32, i32* %1107, align 4
  %1109 = call i32 @jerry_binary_operation(i32 %1098, i32 %1103, i32 %1108)
  store i32 %1109, i32* %64, align 4
  %1110 = load i32, i32* %64, align 4
  %1111 = call i32 @jerry_value_is_error(i32 %1110)
  %1112 = call i32 @TEST_ASSERT(i32 %1111)
  %1113 = load i32, i32* %63, align 4
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds [18 x %struct.TYPE_8__], [18 x %struct.TYPE_8__]* %44, i64 0, i64 %1114
  %1116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1115, i32 0, i32 1
  %1117 = load i32, i32* %1116, align 4
  %1118 = call i32 @jerry_release_value(i32 %1117)
  %1119 = load i32, i32* %63, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds [18 x %struct.TYPE_8__], [18 x %struct.TYPE_8__]* %44, i64 0, i64 %1120
  %1122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1121, i32 0, i32 0
  %1123 = load i32, i32* %1122, align 4
  %1124 = call i32 @jerry_release_value(i32 %1123)
  %1125 = load i32, i32* %64, align 4
  %1126 = call i32 @jerry_release_value(i32 %1125)
  br label %1127

1127:                                             ; preds = %1093
  %1128 = load i32, i32* %63, align 4
  %1129 = add nsw i32 %1128, 1
  store i32 %1129, i32* %63, align 4
  br label %1089

1130:                                             ; preds = %1089
  %1131 = load i32, i32* %2, align 4
  %1132 = call i32 @jerry_release_value(i32 %1131)
  %1133 = load i32, i32* %3, align 4
  %1134 = call i32 @jerry_release_value(i32 %1133)
  %1135 = load i32, i32* %43, align 4
  %1136 = call i32 @jerry_release_value(i32 %1135)
  %1137 = load i32, i32* %4, align 4
  %1138 = call i32 @jerry_release_value(i32 %1137)
  %1139 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_eval(i32*, i32, i32) #1

declare dso_local i32 @jerry_create_error(i32, i32*) #1

declare dso_local { i64, i32 } @T_NAN(i32, i32, i32) #1

declare dso_local i32 @jerry_create_number(double) #1

declare dso_local i32 @jerry_create_undefined(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jerry_create_null(...) #1

declare dso_local { i64, i32 } @T_ARI(i32, i32) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_acquire_value(i32) #1

declare dso_local i32 @jerry_create_boolean(i32) #1

declare dso_local i32 @jerry_binary_operation(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_number(i32) #1

declare dso_local double @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local { i64, i64 } @T(i32, i32, i32, i32) #1

declare dso_local i32 @jerry_create_number_infinity(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i64 @jerry_value_is_boolean(i32) #1

declare dso_local i64 @jerry_get_boolean_value(i32) #1

declare dso_local { i64, i32 } @T_ERR(i32, i32, i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
