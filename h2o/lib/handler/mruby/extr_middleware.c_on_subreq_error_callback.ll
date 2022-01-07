; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_on_subreq_error_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_on_subreq_error_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.st_mruby_subreq_t = type { i32, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @on_subreq_error_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_subreq_error_callback(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__, align 4
  %5 = alloca %struct.TYPE_18__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.st_mruby_subreq_t*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_18__* %4 to i64*
  store i64 %1, i64* %11, align 4
  %12 = bitcast %struct.TYPE_18__* %5 to i64*
  store i64 %2, i64* %12, align 4
  store i8* %0, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.st_mruby_subreq_t*
  store %struct.st_mruby_subreq_t* %14, %struct.st_mruby_subreq_t** %7, align 8
  %15 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %16 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %22 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %23 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mrb_nil_p(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %31 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_18__* %4 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = bitcast %struct.TYPE_18__* %5 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i64 @h2o_concat(i32* %32, i64 %34, i64 %36)
  %38 = bitcast %struct.TYPE_18__* %9 to i64*
  store i64 %37, i64* %38, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @h2o_mruby_new_str(%struct.TYPE_17__* %39, i32 %41, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = load %struct.st_mruby_subreq_t*, %struct.st_mruby_subreq_t** %7, align 8
  %47 = getelementptr inbounds %struct.st_mruby_subreq_t, %struct.st_mruby_subreq_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @mrb_funcall(%struct.TYPE_17__* %45, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1, i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %3
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @mrb_obj_value(i32* %59)
  %61 = call i32 @mrb_inspect(%struct.TYPE_17__* %56, i32 %60)
  %62 = call i32 @RSTRING_PTR(i32 %61)
  %63 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %55, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i64 @h2o_concat(i32*, i64, i64) #1

declare dso_local i32 @h2o_mruby_new_str(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mrb_funcall(%struct.TYPE_17__*, i32, i8*, i32, i32) #1

declare dso_local i32 @h2o_error_printf(i8*, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_inspect(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mrb_obj_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
