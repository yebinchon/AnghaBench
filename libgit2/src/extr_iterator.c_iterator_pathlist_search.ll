; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_iterator.c_iterator_pathlist_search.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_iterator.c_iterator_pathlist_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (i8*, i8*)*, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }

@ITERATOR_PATHLIST_FULL = common dso_local global i32 0, align 4
@ITERATOR_PATHLIST_IS_DIR = common dso_local global i32 0, align 4
@ITERATOR_PATHLIST_IS_FILE = common dso_local global i32 0, align 4
@ITERATOR_PATHLIST_IS_PARENT = common dso_local global i32 0, align 4
@ITERATOR_PATHLIST_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64)* @iterator_pathlist_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterator_pathlist_search(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ITERATOR_PATHLIST_FULL, align 4
  store i32 %17, i32* %4, align 4
  br label %102

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = call i32 @git_vector_sort(%struct.TYPE_7__* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @git_vector_bsearch2(i64* %9, %struct.TYPE_7__* %23, i32 %27, i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %18
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 47
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @ITERATOR_PATHLIST_IS_DIR, align 4
  store i32 %44, i32* %4, align 4
  br label %102

45:                                               ; preds = %35, %32
  %46 = load i32, i32* @ITERATOR_PATHLIST_IS_FILE, align 4
  store i32 %46, i32* %4, align 4
  br label %102

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %97, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %9, align 8
  %52 = call i8* @git_vector_get(%struct.TYPE_7__* %50, i64 %51)
  store i8* %52, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %100

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %56, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 %57(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %100

63:                                               ; preds = %54
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @assert(i8 signext %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %89

75:                                               ; preds = %63
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @ITERATOR_PATHLIST_IS_DIR, align 4
  br label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @ITERATOR_PATHLIST_IS_PARENT, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %4, align 4
  br label %102

89:                                               ; preds = %63
  %90 = load i8*, i8** %8, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sgt i32 %94, 47
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %100

97:                                               ; preds = %89
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %48

100:                                              ; preds = %96, %62, %48
  %101 = load i32, i32* @ITERATOR_PATHLIST_NONE, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %87, %45, %43, %16
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @git_vector_sort(%struct.TYPE_7__*) #1

declare dso_local i32 @git_vector_bsearch2(i64*, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i8* @git_vector_get(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @assert(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
