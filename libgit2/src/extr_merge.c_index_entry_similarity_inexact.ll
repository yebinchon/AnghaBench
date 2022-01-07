; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_index_entry_similarity_inexact.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_index_entry_similarity_inexact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32*, i8*, i8*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i64, %struct.TYPE_11__*, i64, i8**, %struct.TYPE_10__*)* @index_entry_similarity_inexact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_entry_similarity_inexact(i32* %0, %struct.TYPE_11__* %1, i64 %2, %struct.TYPE_11__* %3, i64 %4, i8** %5, %struct.TYPE_10__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8** %5, i8*** %14, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GIT_MODE_ISBLOB(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @GIT_MODE_ISBLOB(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %7
  store i32 0, i32* %8, align 4
  br label %110

30:                                               ; preds = %23
  %31 = load i8**, i8*** %14, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = load i8**, i8*** %14, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %43 = call i32 @index_entry_similarity_calc(i8** %39, i32* %40, %struct.TYPE_11__* %41, %struct.TYPE_10__* %42)
  store i32 %43, i32* %17, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %8, align 4
  br label %110

47:                                               ; preds = %36, %30
  %48 = load i8**, i8*** %14, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = load i8**, i8*** %14, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %60 = call i32 @index_entry_similarity_calc(i8** %56, i32* %57, %struct.TYPE_11__* %58, %struct.TYPE_10__* %59)
  store i32 %60, i32* %17, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %8, align 4
  br label %110

64:                                               ; preds = %53, %47
  %65 = load i8**, i8*** %14, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i8**, i8*** %14, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70, %64
  store i32 0, i32* %8, align 4
  br label %110

77:                                               ; preds = %70
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64 (i32*, i8*, i8*, i32)*, i64 (i32*, i8*, i8*, i32)** %81, align 8
  %83 = load i8**, i8*** %14, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** %14, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 %82(i32* %16, i8* %86, i8* %90, i32 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %77
  store i32 -1, i32* %8, align 4
  br label %110

99:                                               ; preds = %77
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 0, i32* %16, align 4
  br label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %16, align 4
  %105 = icmp sgt i32 %104, 100
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 100, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %103
  br label %108

108:                                              ; preds = %107, %102
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %108, %98, %76, %62, %45, %29
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local i32 @GIT_MODE_ISBLOB(i32) #1

declare dso_local i32 @index_entry_similarity_calc(i8**, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
