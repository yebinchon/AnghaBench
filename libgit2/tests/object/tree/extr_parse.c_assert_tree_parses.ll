; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_parse.c_assert_tree_parses.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_parse.c_assert_tree_parses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.TYPE_11__*, i64)* @assert_tree_parses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_tree_parses(i8* %0, i64 %1, %struct.TYPE_11__* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %16, %4
  %20 = bitcast %struct.TYPE_10__** %9 to i32**
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %24 = call i32 @git_object__from_raw(i32** %20, i8* %21, i64 %22, i32 %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = call i32 @git_tree_entrycount(%struct.TYPE_10__* %26)
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @cl_assert_equal_i(i32 %27, i64 %28)
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %67, %19
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %36
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %11, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @git_oid_fromstr(i32* %13, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_9__* @git_tree_entry_byname(%struct.TYPE_10__* %43, i32 %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %12, align 8
  %48 = call i32 @cl_assert(%struct.TYPE_9__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cl_assert_equal_s(i32 %51, i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cl_assert_equal_i(i32 %58, i64 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cl_assert_equal_oid(i32* %13, i32 %65)
  br label %67

67:                                               ; preds = %34
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %30

70:                                               ; preds = %30
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = call i32 @git_object_free(i32* %72)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object__from_raw(i32**, i8*, i64, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i32 @git_tree_entrycount(%struct.TYPE_10__*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @git_tree_entry_byname(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
