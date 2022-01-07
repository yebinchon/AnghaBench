; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_data.c_prof_dump_file.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_data.c_prof_dump_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prof_tdata_merge_iter_arg_s = type { i32 }
%struct.prof_gctx_merge_iter_arg_s = type { i32 }
%struct.prof_gctx_dump_iter_arg_s = type { i32, i32 }

@prof_dump_fd = common dso_local global i32 0, align 4
@prof_gctx_dump_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32*, %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s*, i32*)* @prof_dump_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prof_dump_file(i32* %0, i32 %1, i8* %2, i32 %3, i32* %4, %struct.prof_tdata_merge_iter_arg_s* %5, %struct.prof_gctx_merge_iter_arg_s* %6, %struct.prof_gctx_dump_iter_arg_s* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.prof_tdata_merge_iter_arg_s*, align 8
  %17 = alloca %struct.prof_gctx_merge_iter_arg_s*, align 8
  %18 = alloca %struct.prof_gctx_dump_iter_arg_s*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store %struct.prof_tdata_merge_iter_arg_s* %5, %struct.prof_tdata_merge_iter_arg_s** %16, align 8
  store %struct.prof_gctx_merge_iter_arg_s* %6, %struct.prof_gctx_merge_iter_arg_s** %17, align 8
  store %struct.prof_gctx_dump_iter_arg_s* %7, %struct.prof_gctx_dump_iter_arg_s** %18, align 8
  store i32* %8, i32** %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = call i32 @prof_dump_open(i32 %20, i8* %21)
  store i32 %22, i32* @prof_dump_fd, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store i32 1, i32* %10, align 4
  br label %63

25:                                               ; preds = %9
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @tsd_tsdn(i32* %26)
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_tdata_merge_iter_arg_s** %16, align 8
  %30 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %29, i32 0, i32 0
  %31 = call i64 @prof_dump_header(i32 %27, i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %60

34:                                               ; preds = %25
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @tsd_tsdn(i32* %35)
  %37 = load %struct.prof_gctx_dump_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s** %18, align 8
  %38 = getelementptr inbounds %struct.prof_gctx_dump_iter_arg_s, %struct.prof_gctx_dump_iter_arg_s* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.prof_gctx_dump_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s** %18, align 8
  %41 = getelementptr inbounds %struct.prof_gctx_dump_iter_arg_s, %struct.prof_gctx_dump_iter_arg_s* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %19, align 8
  %43 = load i32, i32* @prof_gctx_dump_iter, align 4
  %44 = load %struct.prof_gctx_dump_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s** %18, align 8
  %45 = bitcast %struct.prof_gctx_dump_iter_arg_s* %44 to i8*
  %46 = call i32* @gctx_tree_iter(i32* %42, i32* null, i32 %43, i8* %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %60

49:                                               ; preds = %34
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @prof_dump_maps(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @prof_dump_close(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %63

59:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %63

60:                                               ; preds = %53, %48, %33
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @prof_dump_close(i32 %61)
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %59, %58, %24
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @prof_dump_open(i32, i8*) #1

declare dso_local i64 @prof_dump_header(i32, i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32* @gctx_tree_iter(i32*, i32*, i32, i8*) #1

declare dso_local i64 @prof_dump_maps(i32) #1

declare dso_local i64 @prof_dump_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
