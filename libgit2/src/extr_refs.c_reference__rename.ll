; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_reference__rename.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_reference__rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@update_wt_heads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__**, %struct.TYPE_11__*, i8*, i32, i32*, i8*)* @reference__rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reference__rename(%struct.TYPE_11__** %0, %struct.TYPE_11__* %1, i8* %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__**, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  br label %27

27:                                               ; preds = %24, %21, %6
  %28 = phi i1 [ false, %21 ], [ false, %6 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = call i32* @git_reference_owner(%struct.TYPE_11__* %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @reference_normalize_for_repo(i32 %33, i32* %34, i8* %35, i32 1)
  store i32 %36, i32* %17, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %7, align 4
  br label %88

40:                                               ; preds = %27
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = call i32 @git_branch_is_head(%struct.TYPE_11__* %41)
  store i32 %42, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %7, align 4
  br label %88

46:                                               ; preds = %40
  %47 = load i32, i32* %17, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %8, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @git_refdb_rename(%struct.TYPE_11__** %50, %struct.TYPE_12__* %53, i32 %56, i32 %57, i32 %58, i32* %59, i8* %60)
  store i32 %61, i32* %17, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %7, align 4
  br label %88

65:                                               ; preds = %46
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @git_repository_set_head(i32 %73, i32 %74)
  store i32 %75, i32* %17, align 4
  br label %86

76:                                               ; preds = %65
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %82 = call i32 @memcpy(i32* %81, i32* %15, i32 4)
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* @update_wt_heads, align 4
  %85 = call i32 @git_repository_foreach_head(i32* %83, i32 %84, i32 0, %struct.TYPE_10__* %18)
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %76, %68
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %63, %44, %38
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @git_reference_owner(%struct.TYPE_11__*) #1

declare dso_local i32 @reference_normalize_for_repo(i32, i32*, i8*, i32) #1

declare dso_local i32 @git_branch_is_head(%struct.TYPE_11__*) #1

declare dso_local i32 @git_refdb_rename(%struct.TYPE_11__**, %struct.TYPE_12__*, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @git_repository_set_head(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @git_repository_foreach_head(i32*, i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
