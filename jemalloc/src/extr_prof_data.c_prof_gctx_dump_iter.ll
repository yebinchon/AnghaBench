; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_data.c_prof_gctx_dump_iter.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_data.c_prof_gctx_dump_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.prof_gctx_dump_iter_arg_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, %struct.TYPE_5__*, i8*)* @prof_gctx_dump_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @prof_gctx_dump_iter(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.prof_gctx_dump_iter_arg_s*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.prof_gctx_dump_iter_arg_s*
  store %struct.prof_gctx_dump_iter_arg_s* %10, %struct.prof_gctx_dump_iter_arg_s** %8, align 8
  %11 = load %struct.prof_gctx_dump_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s** %8, align 8
  %12 = getelementptr inbounds %struct.prof_gctx_dump_iter_arg_s, %struct.prof_gctx_dump_iter_arg_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @malloc_mutex_lock(i32 %13, i32 %16)
  %18 = load %struct.prof_gctx_dump_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s** %8, align 8
  %19 = getelementptr inbounds %struct.prof_gctx_dump_iter_arg_s, %struct.prof_gctx_dump_iter_arg_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.prof_gctx_dump_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s** %8, align 8
  %22 = getelementptr inbounds %struct.prof_gctx_dump_iter_arg_s, %struct.prof_gctx_dump_iter_arg_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @prof_dump_gctx(i32 %20, i32 %23, %struct.TYPE_5__* %24, i32* %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %7, align 8
  br label %33

32:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.prof_gctx_dump_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s** %8, align 8
  %35 = getelementptr inbounds %struct.prof_gctx_dump_iter_arg_s, %struct.prof_gctx_dump_iter_arg_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @malloc_mutex_unlock(i32 %36, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %41
}

declare dso_local i32 @malloc_mutex_lock(i32, i32) #1

declare dso_local i64 @prof_dump_gctx(i32, i32, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
