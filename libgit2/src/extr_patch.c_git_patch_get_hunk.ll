; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch.c_git_patch_get_hunk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch.c_git_patch_get_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"hunk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_patch_get_hunk(i32** %0, i64* %1, %struct.TYPE_7__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %12 = call i32 @assert(%struct.TYPE_7__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call %struct.TYPE_6__* @git_array_get(i32 %15, i64 %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = load i32**, i32*** %6, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32**, i32*** %6, align 8
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i64*, i64** %7, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64*, i64** %7, align 8
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = call i32 @patch_error_outofrange(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %4
  %33 = load i32**, i32*** %6, align 8
  %34 = icmp ne i32** %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32**, i32*** %6, align 8
  store i32* %37, i32** %38, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i64*, i64** %7, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %39
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_6__* @git_array_get(i32, i64) #1

declare dso_local i32 @patch_error_outofrange(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
