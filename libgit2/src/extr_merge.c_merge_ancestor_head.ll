; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_ancestor_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_ancestor_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__**, i32*, %struct.TYPE_7__*, %struct.TYPE_7__**, i64)* @merge_ancestor_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_ancestor_head(%struct.TYPE_7__** %0, i32* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__** %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %23 = icmp ne %struct.TYPE_7__** %22, null
  br label %24

24:                                               ; preds = %21, %18, %5
  %25 = phi i1 [ false, %18 ], [ false, %5 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %28, i32 1)
  %30 = load i64, i64* %14, align 8
  %31 = call i32* @git__calloc(i64 %30, i32 4)
  store i32* %31, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %32)
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @git_commit_id(i32 %38)
  %40 = call i32 @git_oid_cpy(i32* %35, i32 %39)
  store i64 0, i64* %13, align 8
  br label %41

41:                                               ; preds = %56, %24
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %50, i64 %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = call i32 @git_annotated_commit_id(%struct.TYPE_7__* %53)
  %55 = call i32 @git_oid_cpy(i32* %49, i32 %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %13, align 8
  br label %41

59:                                               ; preds = %41
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @git_merge_base_many(i32* %12, i32* %60, i64 %62, i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %71

67:                                               ; preds = %59
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @git_annotated_commit_lookup(%struct.TYPE_7__** %68, i32* %69, i32* %12)
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @git__free(i32* %72)
  %74 = load i32, i32* %15, align 4
  ret i32 %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i32* @git__calloc(i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_commit_id(i32) #1

declare dso_local i32 @git_annotated_commit_id(%struct.TYPE_7__*) #1

declare dso_local i32 @git_merge_base_many(i32*, i32*, i64, i32*) #1

declare dso_local i32 @git_annotated_commit_lookup(%struct.TYPE_7__**, i32*, i32*) #1

declare dso_local i32 @git__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
