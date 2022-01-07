; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_reference__create.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_reference__create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"target OID for the reference doesn't exist on the repository\00", align 1
@git_reference__enable_symbolic_ref_target_validation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*, i32*, i8*, i32, i32*, i8*, i32*, i8*)* @reference__create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reference__create(i32** %0, i32* %1, i8* %2, i32* %3, i8* %4, i32 %5, i32* %6, i8* %7, i32* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32** %0, i32*** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32* null, i32** %24, align 8
  store i32 0, i32* %25, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %10
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %29, %10
  %33 = phi i1 [ false, %10 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %18, align 8
  %40 = icmp ne i32* %39, null
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i1 [ true, %32 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32**, i32*** %12, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32**, i32*** %12, align 8
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %22, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @reference_normalize_for_repo(i32 %50, i32* %51, i8* %52, i32 1)
  store i32 %53, i32* %25, align 4
  %54 = load i32, i32* %25, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %25, align 4
  store i32 %57, i32* %11, align 4
  br label %125

58:                                               ; preds = %49
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @git_repository_refdb__weakptr(i32** %23, i32* %59)
  store i32 %60, i32* %25, align 4
  %61 = load i32, i32* %25, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %25, align 4
  store i32 %64, i32* %11, align 4
  br label %125

65:                                               ; preds = %58
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load i8*, i8** %16, align 8
  %70 = icmp eq i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %76 = call i32 @git_object__is_valid(i32* %73, i32* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %80 = call i32 @git_error_set(i32 %79, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %125

81:                                               ; preds = %68
  %82 = load i32, i32* %22, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = call i32* @git_reference__alloc(i32 %82, i32* %83, i32* null)
  store i32* %84, i32** %24, align 8
  br label %99

85:                                               ; preds = %65
  %86 = load i32, i32* %26, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = load i32, i32* @git_reference__enable_symbolic_ref_target_validation, align 4
  %90 = call i32 @reference_normalize_for_repo(i32 %86, i32* %87, i8* %88, i32 %89)
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %25, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %25, align 4
  store i32 %94, i32* %11, align 4
  br label %125

95:                                               ; preds = %85
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %26, align 4
  %98 = call i32* @git_reference__alloc_symbolic(i32 %96, i32 %97)
  store i32* %98, i32** %24, align 8
  br label %99

99:                                               ; preds = %95, %81
  %100 = load i32*, i32** %24, align 8
  %101 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %100)
  %102 = load i32*, i32** %23, align 8
  %103 = load i32*, i32** %24, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32*, i32** %18, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = load i8*, i8** %21, align 8
  %109 = call i32 @git_refdb_write(i32* %102, i32* %103, i32 %104, i32* %105, i8* %106, i32* %107, i8* %108)
  store i32 %109, i32* %25, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = load i32*, i32** %24, align 8
  %113 = call i32 @git_reference_free(i32* %112)
  %114 = load i32, i32* %25, align 4
  store i32 %114, i32* %11, align 4
  br label %125

115:                                              ; preds = %99
  %116 = load i32**, i32*** %12, align 8
  %117 = icmp eq i32** %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %24, align 8
  %120 = call i32 @git_reference_free(i32* %119)
  br label %124

121:                                              ; preds = %115
  %122 = load i32*, i32** %24, align 8
  %123 = load i32**, i32*** %12, align 8
  store i32* %122, i32** %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %124, %111, %93, %78, %63, %56
  %126 = load i32, i32* %11, align 4
  ret i32 %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @reference_normalize_for_repo(i32, i32*, i8*, i32) #1

declare dso_local i32 @git_repository_refdb__weakptr(i32**, i32*) #1

declare dso_local i32 @git_object__is_valid(i32*, i32*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32* @git_reference__alloc(i32, i32*, i32*) #1

declare dso_local i32* @git_reference__alloc_symbolic(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @git_refdb_write(i32*, i32*, i32, i32*, i8*, i32*, i8*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
