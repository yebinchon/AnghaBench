; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch.c_git_patch_line_stats.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch.c_git_patch_line_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_patch_line_stats(i64* %0, i64* %1, i64* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca [3 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %13 = call i32 @memset(i64* %12, i32 0, i32 24)
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %48, %4
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @git_array_size(i32 %18)
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %14
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.TYPE_6__* @git_array_get(i32 %24, i64 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %48

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %46 [
    i32 129, label %34
    i32 130, label %38
    i32 128, label %42
  ]

34:                                               ; preds = %30
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 16
  br label %47

38:                                               ; preds = %30
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  br label %47

42:                                               ; preds = %30
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %44 = load i64, i64* %43, align 16
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 16
  br label %47

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %42, %38, %34
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %14

51:                                               ; preds = %14
  %52 = load i64*, i64** %5, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %56 = load i64, i64* %55, align 16
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i64*, i64** %6, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %6, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i64*, i64** %7, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %70 = load i64, i64* %69, align 16
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %65
  ret i32 0
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @git_array_size(i32) #1

declare dso_local %struct.TYPE_6__* @git_array_get(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
