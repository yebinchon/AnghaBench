; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_test_odb_mixed__expand_ids.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_test_odb_mixed__expand_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@_odb = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i64 0, align 8
@GIT_OBJECT_BLOB = common dso_local global i64 0, align 8
@GIT_OBJECT_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_mixed__expand_ids() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @setup_prefix_query(%struct.TYPE_7__** %1, i64* %3)
  %5 = load i32, i32* @_odb, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @git_odb_expand_ids(i32 %5, %struct.TYPE_7__* %6, i64 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = call i32 @assert_found_objects(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = call i32 @git__free(%struct.TYPE_7__* %12)
  %14 = call i32 @setup_prefix_query(%struct.TYPE_7__** %1, i64* %3)
  store i64 0, i64* %2, align 8
  br label %15

15:                                               ; preds = %24, %0
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %2, align 8
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @_odb, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @git_odb_expand_ids(i32 %28, %struct.TYPE_7__* %29, i64 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %34 = call i32 @assert_found_objects(%struct.TYPE_7__* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %36 = call i32 @git__free(%struct.TYPE_7__* %35)
  %37 = call i32 @setup_prefix_query(%struct.TYPE_7__** %1, i64* %3)
  store i64 0, i64* %2, align 8
  br label %38

38:                                               ; preds = %48, %27
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %45 = load i64, i64* %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  br label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %2, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %2, align 8
  br label %38

51:                                               ; preds = %38
  %52 = load i32, i32* @_odb, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @git_odb_expand_ids(i32 %52, %struct.TYPE_7__* %53, i64 %54)
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %58 = call i32 @assert_found_objects(%struct.TYPE_7__* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %60 = call i32 @git__free(%struct.TYPE_7__* %59)
  %61 = call i32 @setup_prefix_query(%struct.TYPE_7__** %1, i64* %3)
  store i64 0, i64* %2, align 8
  br label %62

62:                                               ; preds = %84, %51
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* %3, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %68 = load i64, i64* %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GIT_OBJECT_BLOB, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i64, i64* @GIT_OBJECT_TREE, align 8
  br label %78

76:                                               ; preds = %66
  %77 = load i64, i64* @GIT_OBJECT_BLOB, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i64 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %81 = load i64, i64* %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i64 %79, i64* %83, align 8
  br label %84

84:                                               ; preds = %78
  %85 = load i64, i64* %2, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %2, align 8
  br label %62

87:                                               ; preds = %62
  %88 = load i32, i32* @_odb, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %90 = load i64, i64* %3, align 8
  %91 = call i32 @git_odb_expand_ids(i32 %88, %struct.TYPE_7__* %89, i64 %90)
  %92 = call i32 @cl_git_pass(i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %94 = call i32 @assert_notfound_objects(%struct.TYPE_7__* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %96 = call i32 @git__free(%struct.TYPE_7__* %95)
  ret void
}

declare dso_local i32 @setup_prefix_query(%struct.TYPE_7__**, i64*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_expand_ids(i32, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @assert_found_objects(%struct.TYPE_7__*) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

declare dso_local i32 @assert_notfound_objects(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
