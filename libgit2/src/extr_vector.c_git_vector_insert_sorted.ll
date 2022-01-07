; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_vector.c_git_vector_insert_sorted.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_vector.c_git_vector_insert_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i8**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_vector_insert_sorted(%struct.TYPE_7__* %0, i8* %1, i32 (i8**, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8**, i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8**, i8*)* %2, i32 (i8**, i8*)** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i1 [ false, %3 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = call i32 @git_vector_is_sorted(%struct.TYPE_7__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = call i32 @git_vector_sort(%struct.TYPE_7__* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call i32 @compute_new_size(%struct.TYPE_7__* %37)
  %39 = call i64 @resize_vector(%struct.TYPE_7__* %36, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %106

42:                                               ; preds = %35, %27
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @git__bsearch(i8** %45, i64 %48, i8* %49, i64 %52, i64* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %42
  %56 = load i32 (i8**, i8*)*, i32 (i8**, i8*)** %7, align 8
  %57 = icmp ne i32 (i8**, i8*)* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32 (i8**, i8*)*, i32 (i8**, i8*)** %7, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 %59(i8** %64, i8* %65)
  store i32 %66, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %106

70:                                               ; preds = %58, %55, %42
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = sub i64 %90, %91
  %93 = mul i64 %92, 8
  %94 = call i32 @memmove(i8** %82, i8** %87, i64 %93)
  br label %95

95:                                               ; preds = %76, %70
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  store i8* %96, i8** %101, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %95, %68, %41
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_vector_is_sorted(%struct.TYPE_7__*) #1

declare dso_local i32 @git_vector_sort(%struct.TYPE_7__*) #1

declare dso_local i64 @resize_vector(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @compute_new_size(%struct.TYPE_7__*) #1

declare dso_local i32 @git__bsearch(i8**, i64, i8*, i64, i64*) #1

declare dso_local i32 @memmove(i8**, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
