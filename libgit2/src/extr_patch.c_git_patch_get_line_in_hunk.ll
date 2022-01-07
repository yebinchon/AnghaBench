; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch.c_git_patch_get_line_in_hunk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch.c_git_patch_get_line_in_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"hunk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_patch_get_line_in_hunk(i32** %0, %struct.TYPE_6__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = call i32 @assert(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i8* @git_array_get(i32 %16, i64 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %10, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load i32**, i32*** %6, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32**, i32*** %6, align 8
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = call i32 @patch_error_outofrange(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  br label %60

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = call i8* @git_array_get(i32 %37, i64 %42)
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %34, %28
  %47 = load i32**, i32*** %6, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32**, i32*** %6, align 8
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = call i32 @patch_error_outofrange(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %5, align 4
  br label %60

53:                                               ; preds = %34
  %54 = load i32**, i32*** %6, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %11, align 8
  %58 = load i32**, i32*** %6, align 8
  store i32* %57, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %51, %26
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i8* @git_array_get(i32, i64) #1

declare dso_local i32 @patch_error_outofrange(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
