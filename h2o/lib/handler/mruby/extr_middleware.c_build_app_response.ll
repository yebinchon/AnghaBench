; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_build_app_response.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_build_app_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.st_mruby_subreq_t = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@iterate_headers_callback = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@H2O_TOKEN_CONTENT_LENGTH = common dso_local global %struct.TYPE_11__* null, align 8
@H2O_MRUBY_APP_INPUT_STREAM_CLASS = common dso_local global i32 0, align 4
@app_input_stream_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_mruby_subreq_t*)* @build_app_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_app_response(%struct.st_mruby_subreq_t* %0) #0 {
  %2 = alloca %struct.st_mruby_subreq_t*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.st_mruby_subreq_t* %0, %struct.st_mruby_subreq_t** %2, align 8
  %12 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %13 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %12, i32 0, i32 1
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %3, align 8
  %14 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %15 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @mrb_ary_new_capa(i32* %22, i32 3)
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @mrb_fixnum_value(i64 %29)
  %31 = call i32 @mrb_ary_set(i32* %24, i32 %25, i32 0, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @mrb_hash_new_capa(i32* %32, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* @iterate_headers_callback, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mrb_obj_ptr(i32 %49)
  %51 = call i32 @h2o_mruby_iterate_native_headers(%struct.TYPE_14__* %42, i32* %44, %struct.TYPE_15__* %47, i32 %48, i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SIZE_MAX, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @H2O_TOKEN_CONTENT_LENGTH, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %8, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @h2o_mruby_new_str(i32* %60, i32 %64, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @mrb_fixnum_value(i64 %74)
  %76 = call i32 @h2o_mruby_to_str(i32* %70, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @mrb_hash_set(i32* %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %58, %1
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @mrb_ary_set(i32* %83, i32 %84, i32 1, i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @H2O_MRUBY_APP_INPUT_STREAM_CLASS, align 4
  %94 = call i32 @mrb_ary_entry(i32 %92, i32 %93)
  %95 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %2, align 8
  %96 = call i32 @h2o_mruby_create_data_instance(i32* %87, i32 %94, %struct.st_mruby_subreq_t* %95, i32* @app_input_stream_type)
  store i32 %96, i32* %11, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @mrb_funcall(i32* %97, i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @mrb_ary_set(i32* %100, i32 %101, i32 2, i32 %102)
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_ary_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

declare dso_local i32 @mrb_hash_new_capa(i32*, i32) #1

declare dso_local i32 @h2o_mruby_iterate_native_headers(%struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @mrb_obj_ptr(i32) #1

declare dso_local i32 @h2o_mruby_new_str(i32*, i32, i32) #1

declare dso_local i32 @h2o_mruby_to_str(i32*, i32) #1

declare dso_local i32 @mrb_hash_set(i32*, i32, i32, i32) #1

declare dso_local i32 @h2o_mruby_create_data_instance(i32*, i32, %struct.st_mruby_subreq_t*, i32*) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
