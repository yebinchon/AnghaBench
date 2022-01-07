; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_on_context_init.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_on_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_10__*, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @on_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_context_init(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = call %struct.TYPE_9__* @h2o_mem_alloc(i32 40)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 4
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_10__* @get_shared_context(i32* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i8* @mrb_ary_new(i32* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @mrb_ary_new(i32* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @mrb_gc_arena_save(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = call i8* @prepare_fibers(%struct.TYPE_9__* %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @mrb_array_p(i8* %39)
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @mrb_ary_entry(i8* %42, i32 0)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i8* @mrb_ary_entry(i8* %46, i32 1)
  store i8* %47, i8** %10, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (...) @mrb_nil_value()
  %51 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_9__* %48, i8* %49, i32 %50, i32* null)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @h2o_mruby_assert(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @mrb_gc_arena_restore(i32* %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @mrb_gc_protect(i32* %61, i8* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @mrb_gc_protect(i32* %66, i8* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = call i32 @h2o_context_set_handler_context(i32* %69, i32* %71, %struct.TYPE_9__* %72)
  ret void
}

declare dso_local %struct.TYPE_9__* @h2o_mem_alloc(i32) #1

declare dso_local %struct.TYPE_10__* @get_shared_context(i32*) #1

declare dso_local i8* @mrb_ary_new(i32*) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i8* @prepare_fibers(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mrb_array_p(i8*) #1

declare dso_local i8* @mrb_ary_entry(i8*, i32) #1

declare dso_local i32 @h2o_mruby_run_fiber(%struct.TYPE_9__*, i8*, i32, i32*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @h2o_mruby_assert(i32*) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

declare dso_local i32 @mrb_gc_protect(i32*, i8*) #1

declare dso_local i32 @h2o_context_set_handler_context(i32*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
