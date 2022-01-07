; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_middleware_request_method.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_middleware_request_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.st_mruby_subreq_t = type { %struct.TYPE_17__, %struct.TYPE_19__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"@reprocess\00", align 1
@H2O_MRUBY_APP_REQUEST_CLASS = common dso_local global i32 0, align 4
@app_request_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @middleware_request_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @middleware_request_method(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_mruby_subreq_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = icmp ne %struct.TYPE_21__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = call i32 @mrb_get_args(%struct.TYPE_18__* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %7)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = call i32 @mrb_intern_lit(%struct.TYPE_18__* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @mrb_iv_get(%struct.TYPE_18__* %24, i32 %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @mrb_bool(i32 %33)
  %35 = call %struct.st_mruby_subreq_t* @create_subreq(%struct.TYPE_21__* %31, i32 %32, i64 %34)
  store %struct.st_mruby_subreq_t* %35, %struct.st_mruby_subreq_t** %9, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %2
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @mrb_obj_value(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @mrb_exc_raise(%struct.TYPE_18__* %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %2
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @H2O_MRUBY_APP_REQUEST_CLASS, align 4
  %58 = call i32 @mrb_ary_entry(i32 %56, i32 %57)
  %59 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %60 = call i32 @h2o_mruby_create_data_instance(%struct.TYPE_18__* %51, i32 %58, %struct.st_mruby_subreq_t* %59, i32* @app_request_type)
  %61 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %62 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %65 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %64, i32 0, i32 1
  store %struct.TYPE_19__* %65, %struct.TYPE_19__** %11, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @mrb_bool(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %50
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @h2o_reprocess_request_deferred(%struct.TYPE_19__* %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 1)
  br label %90

87:                                               ; preds = %50
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = call i32 @h2o_delegate_request_deferred(%struct.TYPE_19__* %88)
  br label %90

90:                                               ; preds = %87, %69
  %91 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %9, align 8
  %92 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mrb_get_args(%struct.TYPE_18__*, i8*, i32*) #1

declare dso_local i32 @mrb_iv_get(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.st_mruby_subreq_t* @create_subreq(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i64 @mrb_bool(i32) #1

declare dso_local i32 @mrb_obj_value(i32*) #1

declare dso_local i32 @mrb_exc_raise(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @h2o_mruby_create_data_instance(%struct.TYPE_18__*, i32, %struct.st_mruby_subreq_t*, i32*) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @h2o_reprocess_request_deferred(%struct.TYPE_19__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @h2o_delegate_request_deferred(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
