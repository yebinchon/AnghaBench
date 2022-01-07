; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference_lookup_resolved.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference_lookup_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MAX_NESTING_LEVEL = common dso_local global i32 0, align 4
@DEFAULT_NESTING_LEVEL = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cannot resolve reference (>%u levels deep)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reference_lookup_resolved(%struct.TYPE_7__** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %17 = icmp ne %struct.TYPE_7__** %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %21, %18, %4
  %25 = phi i1 [ false, %18 ], [ false, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MAX_NESTING_LEVEL, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @MAX_NESTING_LEVEL, align 4
  store i32 %33, i32* %9, align 4
  br label %40

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @DEFAULT_NESTING_LEVEL, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  store i64 %41, i64* %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @reference_normalize_for_repo(i32 %42, i32* %43, i8* %44, i32 1)
  store i32 %45, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %109

49:                                               ; preds = %40
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @git_repository_refdb__weakptr(i32** %15, i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %109

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %90, %55
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %66, label %93

66:                                               ; preds = %64
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @strncpy(i32 %71, i32 %75, i32 4)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %78 = call i32 @git_reference_free(%struct.TYPE_7__* %77)
  br label %79

79:                                               ; preds = %70, %66
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @git_refdb_lookup(%struct.TYPE_7__** %14, i32* %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %109

86:                                               ; preds = %79
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %13, align 4
  br label %57

93:                                               ; preds = %64
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @git_error_set(i32 %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %105 = call i32 @git_reference_free(%struct.TYPE_7__* %104)
  store i32 -1, i32* %5, align 4
  br label %109

106:                                              ; preds = %97, %93
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %108 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %108, align 8
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %100, %84, %53, %47
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @reference_normalize_for_repo(i32, i32*, i8*, i32) #1

declare dso_local i32 @git_repository_refdb__weakptr(i32**, i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_7__*) #1

declare dso_local i32 @git_refdb_lookup(%struct.TYPE_7__**, i32*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
