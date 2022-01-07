; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_peel.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_peel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_TAG = common dso_local global i64 0, align 8
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8
@GIT_OBJECT_TREE = common dso_local global i64 0, align 8
@GIT_OBJECT_BLOB = common dso_local global i64 0, align 8
@GIT_OBJECT_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_object_peel(i32** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32**, i32*** %5, align 8
  %15 = icmp ne i32** %14, null
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @GIT_OBJECT_TREE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @GIT_OBJECT_BLOB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %27, %23, %16
  %40 = phi i1 [ true, %31 ], [ true, %27 ], [ true, %23 ], [ true, %16 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @git_object_type(i32* %43)
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @check_type_combination(i64 %44, i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @git_object_id(i32* %50)
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @peel_error(i32 %49, i32 %51, i64 %52)
  store i32 %53, i32* %4, align 4
  br label %120

54:                                               ; preds = %39
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @git_object_type(i32* %55)
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32**, i32*** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @git_object_dup(i32** %60, i32* %61)
  store i32 %62, i32* %4, align 4
  br label %120

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  store i32* %64, i32** %8, align 8
  br label %65

65:                                               ; preds = %98, %63
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @dereference_object(i32** %9, i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = icmp ne i32* %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @git_object_free(i32* %75)
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32*, i32** %9, align 8
  %79 = call i64 @git_object_type(i32* %78)
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32*, i32** %9, align 8
  %84 = load i32**, i32*** %5, align 8
  store i32* %83, i32** %84, align 8
  store i32 0, i32* %4, align 4
  br label %120

85:                                               ; preds = %77
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @git_object_type(i32* %90)
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 @git_object_type(i32* %92)
  %94 = icmp ne i64 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %9, align 8
  %97 = load i32**, i32*** %5, align 8
  store i32* %96, i32** %97, align 8
  store i32 0, i32* %4, align 4
  br label %120

98:                                               ; preds = %89, %85
  %99 = load i32*, i32** %9, align 8
  store i32* %99, i32** %8, align 8
  store i32* null, i32** %9, align 8
  br label %65

100:                                              ; preds = %65
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = icmp ne i32* %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @git_object_free(i32* %105)
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @git_object_free(i32* %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @git_object_id(i32* %114)
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @peel_error(i32 %113, i32 %115, i64 %116)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %95, %82, %59, %48
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_type_combination(i64, i64) #1

declare dso_local i64 @git_object_type(i32*) #1

declare dso_local i32 @peel_error(i32, i32, i64) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @git_object_dup(i32**, i32*) #1

declare dso_local i32 @dereference_object(i32**, i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
