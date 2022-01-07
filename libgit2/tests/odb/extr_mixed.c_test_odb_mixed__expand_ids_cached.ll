; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_test_odb_mixed__expand_ids_cached.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_mixed.c_test_odb_mixed__expand_ids_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }

@GIT_OBJECT_ANY = common dso_local global i64 0, align 8
@_odb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_mixed__expand_ids_cached() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 @setup_prefix_query(%struct.TYPE_6__** %1, i64* %3)
  store i64 0, i64* %2, align 8
  br label %6

6:                                                ; preds = %34, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %34

19:                                               ; preds = %10
  %20 = load i32, i32* @_odb, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @git_odb_read_prefix(i32** %4, i32 %20, i32* %24, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_odb_object_free(i32* %32)
  br label %34

34:                                               ; preds = %19, %18
  %35 = load i64, i64* %2, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %2, align 8
  br label %6

37:                                               ; preds = %6
  %38 = load i32, i32* @_odb, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @git_odb_expand_ids(i32 %38, %struct.TYPE_6__* %39, i64 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %44 = call i32 @assert_found_objects(%struct.TYPE_6__* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %46 = call i32 @git__free(%struct.TYPE_6__* %45)
  ret void
}

declare dso_local i32 @setup_prefix_query(%struct.TYPE_6__**, i64*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_read_prefix(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

declare dso_local i32 @git_odb_expand_ids(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @assert_found_objects(%struct.TYPE_6__*) #1

declare dso_local i32 @git__free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
