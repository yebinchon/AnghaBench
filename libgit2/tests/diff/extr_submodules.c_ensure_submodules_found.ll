; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_ensure_submodules_found.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_submodules.c_ensure_submodules_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8**, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i64)* @ensure_submodules_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_submodules_found(i32* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32* null, i32** %7, align 8
  %12 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i8** %13, i8*** %15, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_diff_index_to_workdir(i32** %7, i32* %19, i32* null, %struct.TYPE_10__* %8)
  %21 = load i64, i64* %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @git_diff_num_deltas(i32* %22)
  %24 = call i32 @cl_assert_equal_i(i64 %21, i32 %23)
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %74, %3
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call %struct.TYPE_11__* @git_diff_get_delta(i32* %30, i64 %31)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %58, %29
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br label %56

56:                                               ; preds = %43, %40
  %57 = phi i1 [ false, %40 ], [ %55, %43 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %11, align 8
  br label %40

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @cl_assert_equal_strn(i8* %67, i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %61
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %25

77:                                               ; preds = %25
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @git_diff_free(i32* %78)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @cl_assert_equal_i(i64, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local %struct.TYPE_11__* @git_diff_get_delta(i32*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @cl_assert_equal_strn(i8*, i32, i64) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
