; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply__to_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply__to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GIT_DELTA_DELETED = common dso_local global i64 0, align 8
@GIT_DELTA_RENAMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @git_apply__to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_apply__to_index(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @GIT_UNUSED(i32* %16)
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @GIT_UNUSED(i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @git_repository_index(i32** %11, i32* %20)
  store i32 %21, i32* %15, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %79

24:                                               ; preds = %5
  store i64 0, i64* %14, align 8
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i64, i64* %14, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @git_diff_num_deltas(i32* %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call %struct.TYPE_5__* @git_diff_get_delta(i32* %31, i64 %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %12, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GIT_DELTA_DELETED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GIT_DELTA_RENAMED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39, %30
  %46 = load i32*, i32** %11, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @git_index_remove(i32* %46, i32 %50, i32 0)
  store i32 %51, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %79

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %14, align 8
  br label %25

59:                                               ; preds = %25
  store i64 0, i64* %14, align 8
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i64, i64* %14, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @git_index_entrycount(i32* %62)
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i32*, i32** %9, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32* @git_index_get_byindex(i32* %66, i64 %67)
  store i32* %68, i32** %13, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @git_index_add(i32* %69, i32* %70)
  store i32 %71, i32* %15, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %79

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %14, align 8
  br label %60

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %73, %53, %23
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @git_index_free(i32* %80)
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local %struct.TYPE_5__* @git_diff_get_delta(i32*, i64) #1

declare dso_local i32 @git_index_remove(i32*, i32, i32) #1

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local i32* @git_index_get_byindex(i32*, i64) #1

declare dso_local i32 @git_index_add(i32*, i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
