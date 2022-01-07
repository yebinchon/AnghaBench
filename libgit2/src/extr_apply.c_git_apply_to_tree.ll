; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply_to_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GIT_APPLY_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_apply_to_tree(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %18 = load i32, i32* @GIT_APPLY_OPTIONS_INIT, align 4
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32**, i32*** %6, align 8
  %20 = icmp ne i32** %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br label %30

30:                                               ; preds = %27, %24, %21, %5
  %31 = phi i1 [ false, %24 ], [ false, %21 ], [ false, %5 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32**, i32*** %6, align 8
  store i32* null, i32** %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @memcpy(i32* %14, i32* %38, i32 4)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @git_reader_for_tree(i32** %12, i32* %41)
  store i32 %42, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %106

45:                                               ; preds = %40
  %46 = call i32 @git_index_new(i32** %11)
  store i32 %46, i32* %17, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @git_index_read_tree(i32* %49, i32* %50)
  store i32 %51, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @git_reader_for_index(i32** %13, i32* %54, i32* %55)
  store i32 %56, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %48, %45
  br label %106

59:                                               ; preds = %53
  store i64 0, i64* %16, align 8
  br label %60

60:                                               ; preds = %91, %59
  %61 = load i64, i64* %16, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @git_diff_num_deltas(i32* %62)
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %16, align 8
  %68 = call %struct.TYPE_5__* @git_diff_get_delta(i32* %66, i64 %67)
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %15, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74, %65
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @git_index_remove(i32* %81, i32 %85, i32 0)
  store i32 %86, i32* %17, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %106

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %16, align 8
  br label %60

94:                                               ; preds = %60
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @apply_deltas(i32* %95, i32* %96, i32* null, i32* %97, i32* %98, i32* %99, i32* %14)
  store i32 %100, i32* %17, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %106

103:                                              ; preds = %94
  %104 = load i32*, i32** %11, align 8
  %105 = load i32**, i32*** %6, align 8
  store i32* %104, i32** %105, align 8
  br label %106

106:                                              ; preds = %103, %102, %88, %58, %44
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @git_index_free(i32* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @git_reader_free(i32* %113)
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @git_reader_free(i32* %115)
  %117 = load i32, i32* %17, align 4
  ret i32 %117
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @git_reader_for_tree(i32**, i32*) #1

declare dso_local i32 @git_index_new(i32**) #1

declare dso_local i32 @git_index_read_tree(i32*, i32*) #1

declare dso_local i32 @git_reader_for_index(i32**, i32*, i32*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local %struct.TYPE_5__* @git_diff_get_delta(i32*, i64) #1

declare dso_local i32 @git_index_remove(i32*, i32, i32) #1

declare dso_local i32 @apply_deltas(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_reader_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
