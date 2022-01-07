; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_prepare_fibers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_prepare_fibers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"_h2o_prepare_app\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_fibers(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = bitcast %struct.TYPE_19__* %4 to i8*
  %17 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 16, i1 false)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = call i32 @mrb_hash_new_capa(%struct.TYPE_17__* %18, i32 3)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = call i32 @mrb_intern_lit(%struct.TYPE_17__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @mrb_symbol_value(i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @h2o_mruby_new_str(%struct.TYPE_17__* %25, i32 %28, i32 %31)
  %33 = call i32 @mrb_hash_set(%struct.TYPE_17__* %20, i32 %21, i32 %24, i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = call i32 @mrb_intern_lit(%struct.TYPE_17__* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @mrb_symbol_value(i32 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = call i32 @h2o_mruby_new_str(%struct.TYPE_17__* %39, i32 %41, i32 %44)
  %46 = call i32 @mrb_hash_set(%struct.TYPE_17__* %34, i32 %35, i32 %38, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = call i32 @mrb_intern_lit(%struct.TYPE_17__* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @mrb_symbol_value(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mrb_fixnum_value(i32 %53)
  %55 = call i32 @mrb_hash_set(%struct.TYPE_17__* %47, i32 %48, i32 %51, i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mrb_obj_value(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @mrb_funcall(%struct.TYPE_17__* %56, i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = call i32 @h2o_mruby_assert(%struct.TYPE_17__* %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @mrb_array_p(i32 %65)
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mrb_hash_new_capa(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @mrb_hash_set(%struct.TYPE_17__*, i32, i32, i32) #2

declare dso_local i32 @mrb_symbol_value(i32) #2

declare dso_local i32 @mrb_intern_lit(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @h2o_mruby_new_str(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @mrb_fixnum_value(i32) #2

declare dso_local i32 @mrb_funcall(%struct.TYPE_17__*, i32, i8*, i32, i32) #2

declare dso_local i32 @mrb_obj_value(i32) #2

declare dso_local i32 @h2o_mruby_assert(%struct.TYPE_17__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @mrb_array_p(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
