; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_index_to_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff_index_to_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_ITERATOR_INCLUDE_CONFLICTS = common dso_local global i32 0, align 4
@GIT_ITERATOR_DONT_AUTOEXPAND = common dso_local global i32 0, align 4
@GIT_DIFF_UPDATE_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_index_to_workdir(%struct.TYPE_9__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %18, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %20 = icmp ne %struct.TYPE_9__** %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br label %24

24:                                               ; preds = %21, %4
  %25 = phi i1 [ false, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %28, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @diff_load_index(i32** %8, i32* %32)
  store i32 %33, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %5, align 4
  br label %94

37:                                               ; preds = %31, %24
  %38 = load i32, i32* @GIT_ITERATOR_INCLUDE_CONFLICTS, align 4
  %39 = load i32, i32* @GIT_ITERATOR_DONT_AUTOEXPAND, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @diff_prepare_iterator_opts(i8** %15, i32* %10, i32 %38, i32* %11, i32 %39, i32* %40)
  store i32 %41, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @git_iterator_for_index(i32** %12, i32* %44, i32* %45, i32* %10)
  store i32 %46, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @git_iterator_for_workdir(i32** %13, i32* %49, i32* %50, i32* null, i32* %11)
  store i32 %51, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @git_diff__from_iterators(%struct.TYPE_9__** %14, i32* %54, i32* %55, i32* %56, i32* %57)
  store i32 %58, i32* %16, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %48, %43, %37
  br label %84

61:                                               ; preds = %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GIT_DIFF_UPDATE_INDEX, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %71 = bitcast %struct.TYPE_9__* %70 to %struct.TYPE_8__*
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @git_index_write(i32* %76)
  store i32 %77, i32* %16, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %84

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %69, %61
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %83 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %83, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  br label %84

84:                                               ; preds = %81, %79, %60
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @git_iterator_free(i32* %85)
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @git_iterator_free(i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %90 = call i32 @git_diff_free(%struct.TYPE_9__* %89)
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @git__free(i8* %91)
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %84, %35
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @diff_load_index(i32**, i32*) #1

declare dso_local i32 @diff_prepare_iterator_opts(i8**, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_iterator_for_index(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @git_iterator_for_workdir(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_diff__from_iterators(%struct.TYPE_9__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_iterator_free(i32*) #1

declare dso_local i32 @git_diff_free(%struct.TYPE_9__*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
