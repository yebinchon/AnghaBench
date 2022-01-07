; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference_peel.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference_peel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Cannot resolve reference\00", align 1
@GIT_OBJECT_TAG = common dso_local global i64 0, align 8
@GIT_OBJECT_ANY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot retrieve reference target\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reference_peel(i32** %0, %struct.TYPE_11__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = call i32 @assert(%struct.TYPE_11__* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %8, align 8
  br label %31

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = call i32 @git_reference_resolve(%struct.TYPE_11__** %9, %struct.TYPE_11__* %22)
  store i32 %23, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = call i32 @peel_error(i32 %26, %struct.TYPE_11__* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %87

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %8, align 8
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = call i32 @git_oid_is_zero(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = call i32 @git_reference_owner(%struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %46 = call i32 @git_object_lookup(i32** %10, i32 %42, i32* %44, i64 %45)
  store i32 %46, i32* %11, align 4
  br label %55

47:                                               ; preds = %35, %31
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = call i32 @git_reference_owner(%struct.TYPE_11__* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %54 = call i32 @git_object_lookup(i32** %10, i32 %49, i32* %52, i64 %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %47, %40
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = call i32 @peel_error(i32 %59, %struct.TYPE_11__* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %81

62:                                               ; preds = %55
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = call i64 @git_object_type(i32* %67)
  %69 = load i64, i64* @GIT_OBJECT_TAG, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32**, i32*** %5, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @git_object_dup(i32** %72, i32* %73)
  store i32 %74, i32* %11, align 4
  br label %80

75:                                               ; preds = %66, %62
  %76 = load i32**, i32*** %5, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @git_object_peel(i32** %76, i32* %77, i64 %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %75, %71
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @git_object_free(i32* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = call i32 @git_reference_free(%struct.TYPE_11__* %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %81, %25
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @git_reference_resolve(%struct.TYPE_11__**, %struct.TYPE_11__*) #1

declare dso_local i32 @peel_error(i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @git_oid_is_zero(i32*) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i64) #1

declare dso_local i32 @git_reference_owner(%struct.TYPE_11__*) #1

declare dso_local i64 @git_object_type(i32*) #1

declare dso_local i32 @git_object_dup(i32**, i32*) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i64) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
