; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_build_env.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_build_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_38__*, %struct.TYPE_26__, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_38__ = type { i64, i32, i32, i32, %struct.TYPE_46__*, %struct.TYPE_37__*, i32, i32, %struct.TYPE_44__, %struct.TYPE_42__, %struct.TYPE_41__, i32, %struct.TYPE_40__*, %struct.TYPE_32__, %struct.TYPE_31__*, %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i8*, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_44__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i8*, i32 }
%struct.TYPE_42__ = type { i64, i32* }
%struct.TYPE_41__ = type { i8*, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i8*, i32 }
%struct.TYPE_32__ = type { i8*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, i8* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i8*, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32* }

@H2O_MRUBY_LIT_REQUEST_METHOD = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_SCRIPT_NAME = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_PATH_INFO = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_QUERY_STRING = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@H2O_MRUBY_LIT_SERVER_NAME = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_SERVER_PROTOCOL = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_SERVER_ADDR = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_SERVER_PORT = common dso_local global i32 0, align 4
@H2O_TOKEN_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@H2O_MRUBY_LIT_CONTENT_LENGTH = common dso_local global i32 0, align 4
@on_rack_input_free = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_RACK_INPUT = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_REMOTE_ADDR = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_REMOTE_PORT = common dso_local global i32 0, align 4
@iterate_headers_callback = common dso_local global i32 0, align 4
@H2O_TOKEN_EARLY_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@H2O_MRUBY_LIT_RACK_URL_SCHEME = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_RACK_MULTITHREAD = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_RACK_MULTIPROCESS = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_RACK_RUN_ONCE = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_RACK_HIJACK_ = common dso_local global i32 0, align 4
@H2O_MRUBY_ERROR_STREAM_CLASS = common dso_local global i32 0, align 4
@error_stream_type = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_RACK_ERRORS = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_RACK_EARLY_HINTS = common dso_local global i32 0, align 4
@send_early_hints_proc = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_SERVER_SOFTWARE = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS = common dso_local global i32 0, align 4
@H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*)* @build_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_env(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [9 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_35__*, align 8
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %2, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  store %struct.TYPE_33__* %25, %struct.TYPE_33__** %3, align 8
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @mrb_hash_new_capa(i32* %29, i32 16)
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @H2O_MRUBY_LIT_REQUEST_METHOD, align 4
  %37 = call i32 @mrb_ary_entry(i32 %35, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_38__*, %struct.TYPE_38__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %41, i32 0, i32 16
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_38__*, %struct.TYPE_38__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %47, i32 0, i32 16
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @h2o_mruby_new_str(i32* %38, i8* %44, i32 %50)
  %52 = call i32 @mrb_hash_set(i32* %31, i32 %32, i32 %37, i32 %51)
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %55, i32 0, i32 14
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %8, align 8
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_38__*, %struct.TYPE_38__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %63, i32 0, i32 14
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 14
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds i8, i8* %68, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 47
  br i1 %81, label %82, label %85

82:                                               ; preds = %1
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %82, %1
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_38__*, %struct.TYPE_38__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ule i64 %86, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @H2O_MRUBY_LIT_SCRIPT_NAME, align 4
  %102 = call i32 @mrb_ary_entry(i32 %100, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %106, i32 0, i32 14
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @h2o_mruby_new_str(i32* %103, i8* %111, i32 %113)
  %115 = call i32 @mrb_hash_set(i32* %96, i32 %97, i32 %102, i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @H2O_MRUBY_LIT_PATH_INFO, align 4
  %122 = call i32 @mrb_ary_entry(i32 %120, i32 %121)
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @build_path_info(i32* %123, %struct.TYPE_38__* %126, i64 %127)
  %129 = call i32 @mrb_hash_set(i32* %116, i32 %117, i32 %122, i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @H2O_MRUBY_LIT_QUERY_STRING, align 4
  %136 = call i32 @mrb_ary_entry(i32 %134, i32 %135)
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SIZE_MAX, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %85
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_38__*, %struct.TYPE_38__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %148, i32 0, i32 13
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_38__*, %struct.TYPE_38__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i8, i8* %151, i64 %156
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_38__*, %struct.TYPE_38__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %161, i32 0, i32 13
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  %172 = sub nsw i64 %165, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @h2o_mruby_new_str(i32* %145, i8* %158, i32 %173)
  br label %178

175:                                              ; preds = %85
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @mrb_str_new_lit(i32* %176, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %144
  %179 = phi i32 [ %174, %144 ], [ %177, %175 ]
  %180 = call i32 @mrb_hash_set(i32* %130, i32 %131, i32 %136, i32 %179)
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @H2O_MRUBY_LIT_SERVER_NAME, align 4
  %187 = call i32 @mrb_ary_entry(i32 %185, i32 %186)
  %188 = load i32*, i32** %4, align 8
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_38__*, %struct.TYPE_38__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %191, i32 0, i32 12
  %193 = load %struct.TYPE_40__*, %struct.TYPE_40__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_38__*, %struct.TYPE_38__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %200, i32 0, i32 12
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @h2o_mruby_new_str(i32* %188, i8* %197, i32 %206)
  %208 = call i32 @mrb_hash_set(i32* %181, i32 %182, i32 %187, i32 %207)
  %209 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_38__*, %struct.TYPE_38__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %212, i32 0, i32 11
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @h2o_stringify_protocol_version(i8* %209, i32 %214)
  store i64 %215, i64* %7, align 8
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @H2O_MRUBY_LIT_SERVER_PROTOCOL, align 4
  %222 = call i32 @mrb_ary_entry(i32 %220, i32 %221)
  %223 = load i32*, i32** %4, align 8
  %224 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %225 = load i64, i64* %7, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 @h2o_mruby_new_str(i32* %223, i8* %224, i32 %226)
  %228 = call i32 @mrb_hash_set(i32* %216, i32 %217, i32 %222, i32 %227)
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_38__*, %struct.TYPE_38__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_37__*, %struct.TYPE_37__** %232, align 8
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_38__*, %struct.TYPE_38__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %236, i32 0, i32 5
  %238 = load %struct.TYPE_37__*, %struct.TYPE_37__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_43__*, %struct.TYPE_43__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %4, align 8
  %244 = call i32 @stringify_address(%struct.TYPE_37__* %233, i32 %242, i32* %243, i32* %9, i32* %10)
  %245 = load i32, i32* %9, align 4
  %246 = call i32 @mrb_nil_p(i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %178
  %249 = load i32*, i32** %4, align 8
  %250 = load i32, i32* %5, align 4
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @H2O_MRUBY_LIT_SERVER_ADDR, align 4
  %255 = call i32 @mrb_ary_entry(i32 %253, i32 %254)
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @mrb_hash_set(i32* %249, i32 %250, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %248, %178
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @mrb_nil_p(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %272, label %262

262:                                              ; preds = %258
  %263 = load i32*, i32** %4, align 8
  %264 = load i32, i32* %5, align 4
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @H2O_MRUBY_LIT_SERVER_PORT, align 4
  %269 = call i32 @mrb_ary_entry(i32 %267, i32 %268)
  %270 = load i32, i32* %10, align 4
  %271 = call i32 @mrb_hash_set(i32* %263, i32 %264, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %262, %258
  %273 = load i32*, i32** %4, align 8
  %274 = load i32, i32* %5, align 4
  %275 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %276 = load i32, i32* @H2O_TOKEN_HOST, align 4
  %277 = call i32 @h2o_mruby_token_env_key(%struct.TYPE_33__* %275, i32 %276)
  %278 = load i32*, i32** %4, align 8
  %279 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_38__*, %struct.TYPE_38__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %281, i32 0, i32 10
  %283 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_38__*, %struct.TYPE_38__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %287, i32 0, i32 10
  %289 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @h2o_mruby_new_str(i32* %278, i8* %284, i32 %290)
  %292 = call i32 @mrb_hash_set(i32* %273, i32 %274, i32 %277, i32 %291)
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_38__*, %struct.TYPE_38__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %295, i32 0, i32 9
  %297 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %296, i32 0, i32 1
  %298 = load i32*, i32** %297, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %357

300:                                              ; preds = %272
  %301 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_38__*, %struct.TYPE_38__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 9
  %306 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @sprintf(i8* %301, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %307)
  store i32 %308, i32* %12, align 4
  %309 = load i32*, i32** %4, align 8
  %310 = load i32, i32* %5, align 4
  %311 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @H2O_MRUBY_LIT_CONTENT_LENGTH, align 4
  %315 = call i32 @mrb_ary_entry(i32 %313, i32 %314)
  %316 = load i32*, i32** %4, align 8
  %317 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %318 = load i32, i32* %12, align 4
  %319 = call i32 @h2o_mruby_new_str(i32* %316, i8* %317, i32 %318)
  %320 = call i32 @mrb_hash_set(i32* %309, i32 %310, i32 %315, i32 %319)
  %321 = load i32*, i32** %4, align 8
  %322 = call i32 @mrb_input_stream_value(i32* %321, i32* null, i32 0)
  %323 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %323, i32 0, i32 3
  store i32 %322, i32* %324, align 4
  %325 = load i32*, i32** %4, align 8
  %326 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_38__*, %struct.TYPE_38__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %331, i32 0, i32 9
  %333 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_38__*, %struct.TYPE_38__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %337, i32 0, i32 9
  %339 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = trunc i64 %340 to i32
  %342 = load i32, i32* @on_rack_input_free, align 4
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %343, i32 0, i32 3
  %345 = call i32 @mrb_input_stream_set_data(i32* %325, i32 %328, i32* %334, i32 %341, i32 0, i32 %342, i32* %344)
  %346 = load i32*, i32** %4, align 8
  %347 = load i32, i32* %5, align 4
  %348 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @H2O_MRUBY_LIT_RACK_INPUT, align 4
  %352 = call i32 @mrb_ary_entry(i32 %350, i32 %351)
  %353 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @mrb_hash_set(i32* %346, i32 %347, i32 %352, i32 %355)
  br label %357

357:                                              ; preds = %300, %272
  %358 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_38__*, %struct.TYPE_38__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %360, i32 0, i32 5
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %361, align 8
  %363 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %364 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_38__*, %struct.TYPE_38__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %365, i32 0, i32 5
  %367 = load %struct.TYPE_37__*, %struct.TYPE_37__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_43__*, %struct.TYPE_43__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32*, i32** %4, align 8
  %373 = call i32 @stringify_address(%struct.TYPE_37__* %362, i32 %371, i32* %372, i32* %13, i32* %14)
  %374 = load i32, i32* %13, align 4
  %375 = call i32 @mrb_nil_p(i32 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %387, label %377

377:                                              ; preds = %357
  %378 = load i32*, i32** %4, align 8
  %379 = load i32, i32* %5, align 4
  %380 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @H2O_MRUBY_LIT_REMOTE_ADDR, align 4
  %384 = call i32 @mrb_ary_entry(i32 %382, i32 %383)
  %385 = load i32, i32* %13, align 4
  %386 = call i32 @mrb_hash_set(i32* %378, i32 %379, i32 %384, i32 %385)
  br label %387

387:                                              ; preds = %377, %357
  %388 = load i32, i32* %14, align 4
  %389 = call i32 @mrb_nil_p(i32 %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %401, label %391

391:                                              ; preds = %387
  %392 = load i32*, i32** %4, align 8
  %393 = load i32, i32* %5, align 4
  %394 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @H2O_MRUBY_LIT_REMOTE_PORT, align 4
  %398 = call i32 @mrb_ary_entry(i32 %396, i32 %397)
  %399 = load i32, i32* %14, align 4
  %400 = call i32 @mrb_hash_set(i32* %392, i32 %393, i32 %398, i32 %399)
  br label %401

401:                                              ; preds = %391, %387
  store i64 0, i64* %15, align 8
  br label %402

402:                                              ; preds = %441, %401
  %403 = load i64, i64* %15, align 8
  %404 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %405 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_38__*, %struct.TYPE_38__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %406, i32 0, i32 8
  %408 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %403, %409
  br i1 %410, label %411, label %444

411:                                              ; preds = %402
  %412 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %413 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %412, i32 0, i32 0
  %414 = load %struct.TYPE_38__*, %struct.TYPE_38__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %414, i32 0, i32 8
  %416 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %415, i32 0, i32 1
  %417 = load %struct.TYPE_35__*, %struct.TYPE_35__** %416, align 8
  %418 = load i64, i64* %15, align 8
  %419 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %417, i64 %418
  store %struct.TYPE_35__* %419, %struct.TYPE_35__** %16, align 8
  %420 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %421 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %420, i64 1
  store %struct.TYPE_35__* %421, %struct.TYPE_35__** %17, align 8
  %422 = load i32*, i32** %4, align 8
  %423 = load i32, i32* %5, align 4
  %424 = load i32*, i32** %4, align 8
  %425 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %426 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %425, i32 0, i32 0
  %427 = load i8*, i8** %426, align 8
  %428 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %429 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @h2o_mruby_new_str(i32* %424, i8* %427, i32 %430)
  %432 = load i32*, i32** %4, align 8
  %433 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %434 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %433, i32 0, i32 0
  %435 = load i8*, i8** %434, align 8
  %436 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %437 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @h2o_mruby_new_str(i32* %432, i8* %435, i32 %438)
  %440 = call i32 @mrb_hash_set(i32* %422, i32 %423, i32 %431, i32 %439)
  br label %441

441:                                              ; preds = %411
  %442 = load i64, i64* %15, align 8
  %443 = add i64 %442, 2
  store i64 %443, i64* %15, align 8
  br label %402

444:                                              ; preds = %402
  %445 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %446 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %447 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_38__*, %struct.TYPE_38__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %448, i32 0, i32 7
  %450 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_38__*, %struct.TYPE_38__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %452, i32 0, i32 6
  %454 = load i32, i32* @iterate_headers_callback, align 4
  %455 = load i32, i32* %5, align 4
  %456 = call i32 @mrb_obj_ptr(i32 %455)
  %457 = call i32 @h2o_mruby_iterate_native_headers(%struct.TYPE_33__* %445, i32* %449, i32* %453, i32 %454, i32 %456)
  %458 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %459 = load i32, i32* @H2O_TOKEN_EARLY_DATA, align 4
  %460 = call i32 @h2o_mruby_token_env_key(%struct.TYPE_33__* %458, i32 %459)
  store i32 %460, i32* %18, align 4
  %461 = load i32*, i32** %4, align 8
  %462 = load i32, i32* %5, align 4
  %463 = load i32, i32* %18, align 4
  %464 = call i32 (...) @mrb_nil_value()
  %465 = call i32 @mrb_hash_fetch(i32* %461, i32 %462, i32 %463, i32 %464)
  %466 = call i32 @mrb_nil_p(i32 %465)
  %467 = icmp ne i32 %466, 0
  %468 = xor i1 %467, true
  %469 = zext i1 %468 to i32
  store i32 %469, i32* %19, align 4
  %470 = load i32, i32* %19, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %491, label %472

472:                                              ; preds = %444
  %473 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %474 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %473, i32 0, i32 0
  %475 = load %struct.TYPE_38__*, %struct.TYPE_38__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %475, i32 0, i32 5
  %477 = load %struct.TYPE_37__*, %struct.TYPE_37__** %476, align 8
  %478 = call i64 @h2o_conn_is_early_data(%struct.TYPE_37__* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %491

480:                                              ; preds = %472
  %481 = load i32*, i32** %4, align 8
  %482 = load i32, i32* %5, align 4
  %483 = load i32, i32* %18, align 4
  %484 = load i32*, i32** %4, align 8
  %485 = call i32 @h2o_mruby_new_str(i32* %484, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %486 = call i32 @mrb_hash_set(i32* %481, i32 %482, i32 %483, i32 %485)
  %487 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %488 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %487, i32 0, i32 0
  %489 = load %struct.TYPE_38__*, %struct.TYPE_38__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %489, i32 0, i32 1
  store i32 1, i32* %490, align 8
  br label %491

491:                                              ; preds = %480, %472, %444
  %492 = load i32*, i32** %4, align 8
  %493 = load i32, i32* %5, align 4
  %494 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @H2O_MRUBY_LIT_RACK_URL_SCHEME, align 4
  %498 = call i32 @mrb_ary_entry(i32 %496, i32 %497)
  %499 = load i32*, i32** %4, align 8
  %500 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %501 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_38__*, %struct.TYPE_38__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %502, i32 0, i32 4
  %504 = load %struct.TYPE_46__*, %struct.TYPE_46__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %505, i32 0, i32 0
  %507 = load i8*, i8** %506, align 8
  %508 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %509 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_38__*, %struct.TYPE_38__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %510, i32 0, i32 4
  %512 = load %struct.TYPE_46__*, %struct.TYPE_46__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @h2o_mruby_new_str(i32* %499, i8* %507, i32 %515)
  %517 = call i32 @mrb_hash_set(i32* %492, i32 %493, i32 %498, i32 %516)
  %518 = load i32*, i32** %4, align 8
  %519 = load i32, i32* %5, align 4
  %520 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %521 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @H2O_MRUBY_LIT_RACK_MULTITHREAD, align 4
  %524 = call i32 @mrb_ary_entry(i32 %522, i32 %523)
  %525 = call i32 (...) @mrb_false_value()
  %526 = call i32 @mrb_hash_set(i32* %518, i32 %519, i32 %524, i32 %525)
  %527 = load i32*, i32** %4, align 8
  %528 = load i32, i32* %5, align 4
  %529 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %530 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = load i32, i32* @H2O_MRUBY_LIT_RACK_MULTIPROCESS, align 4
  %533 = call i32 @mrb_ary_entry(i32 %531, i32 %532)
  %534 = call i32 (...) @mrb_true_value()
  %535 = call i32 @mrb_hash_set(i32* %527, i32 %528, i32 %533, i32 %534)
  %536 = load i32*, i32** %4, align 8
  %537 = load i32, i32* %5, align 4
  %538 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %539 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = load i32, i32* @H2O_MRUBY_LIT_RACK_RUN_ONCE, align 4
  %542 = call i32 @mrb_ary_entry(i32 %540, i32 %541)
  %543 = call i32 (...) @mrb_false_value()
  %544 = call i32 @mrb_hash_set(i32* %536, i32 %537, i32 %542, i32 %543)
  %545 = load i32*, i32** %4, align 8
  %546 = load i32, i32* %5, align 4
  %547 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @H2O_MRUBY_LIT_RACK_HIJACK_, align 4
  %551 = call i32 @mrb_ary_entry(i32 %549, i32 %550)
  %552 = call i32 (...) @mrb_false_value()
  %553 = call i32 @mrb_hash_set(i32* %545, i32 %546, i32 %551, i32 %552)
  %554 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %555 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %554, i32 0, i32 1
  %556 = load i32*, i32** %555, align 8
  %557 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %558 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @H2O_MRUBY_ERROR_STREAM_CLASS, align 4
  %561 = call i32 @mrb_ary_entry(i32 %559, i32 %560)
  %562 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %563 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 8
  %565 = call i32 @h2o_mruby_create_data_instance(i32* %556, i32 %561, i32 %564, i32* @error_stream_type)
  store i32 %565, i32* %20, align 4
  %566 = load i32*, i32** %4, align 8
  %567 = load i32, i32* %5, align 4
  %568 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %569 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = load i32, i32* @H2O_MRUBY_LIT_RACK_ERRORS, align 4
  %572 = call i32 @mrb_ary_entry(i32 %570, i32 %571)
  %573 = load i32, i32* %20, align 4
  %574 = call i32 @mrb_hash_set(i32* %566, i32 %567, i32 %572, i32 %573)
  %575 = load i32, i32* %20, align 4
  %576 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %577 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %577, i32 0, i32 1
  store i32 %575, i32* %578, align 4
  %579 = load i32*, i32** %4, align 8
  %580 = load i32, i32* %5, align 4
  %581 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %582 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = load i32, i32* @H2O_MRUBY_LIT_RACK_EARLY_HINTS, align 4
  %585 = call i32 @mrb_ary_entry(i32 %583, i32 %584)
  %586 = load i32*, i32** %4, align 8
  %587 = load i32, i32* @send_early_hints_proc, align 4
  %588 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %589 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %589, i32 0, i32 0
  %591 = call i32 @mrb_proc_new_cfunc_with_env(i32* %586, i32 %587, i32 1, i32* %590)
  %592 = call i32 @mrb_obj_value(i32 %591)
  %593 = call i32 @mrb_hash_set(i32* %579, i32 %580, i32 %585, i32 %592)
  %594 = load i32*, i32** %4, align 8
  %595 = load i32, i32* %5, align 4
  %596 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %597 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = load i32, i32* @H2O_MRUBY_LIT_SERVER_SOFTWARE, align 4
  %600 = call i32 @mrb_ary_entry(i32 %598, i32 %599)
  %601 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 8
  %604 = load i32, i32* @H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE, align 4
  %605 = call i32 @mrb_ary_entry(i32 %603, i32 %604)
  %606 = call i32 @mrb_hash_set(i32* %594, i32 %595, i32 %600, i32 %605)
  %607 = load i32*, i32** %4, align 8
  %608 = load i32, i32* %5, align 4
  %609 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %610 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = load i32, i32* @H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS, align 4
  %613 = call i32 @mrb_ary_entry(i32 %611, i32 %612)
  %614 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %615 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %614, i32 0, i32 0
  %616 = load %struct.TYPE_38__*, %struct.TYPE_38__** %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %616, i32 0, i32 3
  %618 = load i32, i32* %617, align 8
  %619 = call i32 @mrb_fixnum_value(i32 %618)
  %620 = call i32 @mrb_hash_set(i32* %607, i32 %608, i32 %613, i32 %619)
  %621 = load i32*, i32** %4, align 8
  %622 = load i32, i32* %5, align 4
  %623 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %624 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* @H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES, align 4
  %627 = call i32 @mrb_ary_entry(i32 %625, i32 %626)
  %628 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %629 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %628, i32 0, i32 0
  %630 = load %struct.TYPE_38__*, %struct.TYPE_38__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %630, i32 0, i32 2
  %632 = load i32, i32* %631, align 4
  %633 = call i32 @mrb_fixnum_value(i32 %632)
  %634 = call i32 @mrb_hash_set(i32* %621, i32 %622, i32 %627, i32 %633)
  %635 = load i32, i32* %5, align 4
  ret i32 %635
}

declare dso_local i32 @mrb_hash_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_hash_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @h2o_mruby_new_str(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @build_path_info(i32*, %struct.TYPE_38__*, i64) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i64 @h2o_stringify_protocol_version(i8*, i32) #1

declare dso_local i32 @stringify_address(%struct.TYPE_37__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @h2o_mruby_token_env_key(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @mrb_input_stream_value(i32*, i32*, i32) #1

declare dso_local i32 @mrb_input_stream_set_data(i32*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @h2o_mruby_iterate_native_headers(%struct.TYPE_33__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_ptr(i32) #1

declare dso_local i32 @mrb_hash_fetch(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i64 @h2o_conn_is_early_data(%struct.TYPE_37__*) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i32 @h2o_mruby_create_data_instance(i32*, i32, i32, i32*) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_proc_new_cfunc_with_env(i32*, i32, i32, i32*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
