; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_mark_remaining.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_pathspec_mark_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.pathspec_match_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_4__*, %struct.pathspec_match_context*, i64, i8*, i8*)* @pathspec_mark_remaining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pathspec_mark_remaining(i32* %0, %struct.TYPE_4__* %1, %struct.pathspec_match_context* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.pathspec_match_context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store %struct.pathspec_match_context* %2, %struct.pathspec_match_context** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i8* null, i8** %12, align 8
  br label %19

19:                                               ; preds = %18, %6
  br label %20

20:                                               ; preds = %67, %19
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32* @git_vector_get(%struct.TYPE_4__* %27, i64 %28)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @git_bitvec_get(i32* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %67

35:                                               ; preds = %26
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32*, i32** %14, align 8
  %40 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %9, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @pathspec_match_one(i32* %39, %struct.pathspec_match_context* %40, i8* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @pathspec_mark_pattern(i32* %45, i64 %46)
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %13, align 8
  br label %66

50:                                               ; preds = %38, %35
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32*, i32** %14, align 8
  %55 = load %struct.pathspec_match_context*, %struct.pathspec_match_context** %9, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i64 @pathspec_match_one(i32* %54, %struct.pathspec_match_context* %55, i8* %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @pathspec_mark_pattern(i32* %60, i64 %61)
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %59, %53, %50
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %20

70:                                               ; preds = %20
  %71 = load i64, i64* %13, align 8
  ret i64 %71
}

declare dso_local i32* @git_vector_get(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @git_bitvec_get(i32*, i64) #1

declare dso_local i64 @pathspec_match_one(i32*, %struct.pathspec_match_context*, i8*) #1

declare dso_local i64 @pathspec_mark_pattern(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
