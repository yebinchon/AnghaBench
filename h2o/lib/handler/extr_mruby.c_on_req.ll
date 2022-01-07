; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_on_req.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_on_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, %struct.TYPE_17__*, i32*, i32, %struct.TYPE_25__*, %struct.TYPE_21__*, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_19__ = type { i32*, i32* }

@on_generator_dispose = common dso_local global i32 0, align 4
@H2O_MRUBY_GENERATOR_CLASS = common dso_local global i32 0, align 4
@generator_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_21__*)* @on_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_req(i32* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_22__* @get_shared_context(i32 %22)
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %7, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mrb_gc_arena_save(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = call %struct.TYPE_25__* @h2o_context_get_handler_context(i32 %32, i32* %34)
  store %struct.TYPE_25__* %35, %struct.TYPE_25__** %9, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* @on_generator_dispose, align 4
  %39 = call %struct.TYPE_24__* @h2o_mem_alloc_shared(i32* %37, i32 64, i32 %38)
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %10, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 5
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %48, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 4
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %51, align 8
  %52 = call i32 (...) @mrb_nil_value()
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = call %struct.TYPE_17__* @h2o_mem_alloc(i32 16)
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %59, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store %struct.TYPE_25__* %60, %struct.TYPE_25__** %64, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store %struct.TYPE_24__* %65, %struct.TYPE_24__** %69, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @H2O_MRUBY_GENERATOR_CLASS, align 4
  %77 = call i32 @mrb_ary_entry(i32 %75, i32 %76)
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %79 = call i32 @h2o_mruby_create_data_instance(i32 %72, i32 %77, %struct.TYPE_24__* %78, i32* @generator_type)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %85 = call i32 @build_env(%struct.TYPE_24__* %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mrb_ary_new(i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @mrb_ary_set(i32 %92, i32 %93, i32 0, i32 %94)
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @mrb_ary_set(i32 %98, i32 %99, i32 1, i32 %100)
  store i32 0, i32* %14, align 4
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_25__* %102, i32 %105, i32 %106, i32* %14)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @mrb_gc_arena_restore(i32 %110, i32 %111)
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %117

116:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_22__* @get_shared_context(i32) #1

declare dso_local i32 @mrb_gc_arena_save(i32) #1

declare dso_local %struct.TYPE_25__* @h2o_context_get_handler_context(i32, i32*) #1

declare dso_local %struct.TYPE_24__* @h2o_mem_alloc_shared(i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local %struct.TYPE_17__* @h2o_mem_alloc(i32) #1

declare dso_local i32 @h2o_mruby_create_data_instance(i32, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @build_env(%struct.TYPE_24__*) #1

declare dso_local i32 @mrb_ary_new(i32) #1

declare dso_local i32 @mrb_ary_set(i32, i32, i32, i32) #1

declare dso_local i32 @h2o_mruby_run_fiber(%struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local i32 @mrb_gc_arena_restore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
