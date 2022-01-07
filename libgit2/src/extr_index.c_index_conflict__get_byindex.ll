; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_index_conflict__get_byindex.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_index_conflict__get_byindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i64 (i8*, i8*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__**, %struct.TYPE_10__**, %struct.TYPE_10__**, %struct.TYPE_11__*, i64)* @index_conflict__get_byindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_conflict__get_byindex(%struct.TYPE_10__** %0, %struct.TYPE_10__** %1, %struct.TYPE_10__** %2, %struct.TYPE_11__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i64 %4, i64* %10, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %17 = icmp ne %struct.TYPE_10__** %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %20 = icmp ne %struct.TYPE_10__** %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %23 = icmp ne %struct.TYPE_10__** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br label %27

27:                                               ; preds = %24, %21, %18, %5
  %28 = phi i1 [ false, %21 ], [ false, %18 ], [ false, %5 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %31, align 8
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %32, align 8
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = call i64 @git_index_entrycount(%struct.TYPE_11__* %34)
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %82, %27
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %10, align 8
  %44 = call %struct.TYPE_10__* @git_vector_get(i32* %42, i64 %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i64 %50(i8* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %85

58:                                               ; preds = %47, %40
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = call i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_10__* %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %12, align 8
  %64 = load i32, i32* %14, align 4
  switch i32 %64, label %80 [
    i32 3, label %65
    i32 2, label %70
    i32 1, label %75
  ]

65:                                               ; preds = %58
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %67, align 8
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %81

70:                                               ; preds = %58
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %72, align 8
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %81

75:                                               ; preds = %58
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %77, align 8
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %81

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %75, %70, %65
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  br label %36

85:                                               ; preds = %57, %36
  %86 = load i32, i32* %15, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_index_entrycount(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @git_vector_get(i32*, i64) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
