; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_vector.c_git_vector_uniq.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_vector.c_git_vector_uniq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32 (i8*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_vector_uniq(%struct.TYPE_4__* %0, void (i8*)* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i32 (i8*, i8*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %101

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call i32 @git_vector_sort(%struct.TYPE_4__* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %17, align 8
  %19 = icmp ne i32 (i8*, i8*)* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %22, align 8
  br label %25

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 (i8*, i8*)* [ %23, %20 ], [ @strict_comparison, %24 ]
  store i32 (i8*, i8*)* %26, i32 (i8*, i8*)** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 1, i64* %7, align 8
  br label %27

27:                                               ; preds = %87, %25
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %90

34:                                               ; preds = %27
  %35 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 %35(i8* %41, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %34
  %51 = load void (i8*)*, void (i8*)** %4, align 8
  %52 = icmp ne void (i8*)* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load void (i8*)*, void (i8*)** %4, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  call void %54(i8* %60)
  br label %61

61:                                               ; preds = %53, %50
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %67, i8** %72, align 8
  br label %86

73:                                               ; preds = %34
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %6, align 8
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %79, i8** %85, align 8
  br label %86

86:                                               ; preds = %73, %61
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %27

90:                                               ; preds = %27
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %6, align 8
  %93 = sub i64 %91, %92
  %94 = sub i64 %93, 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = sub i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  br label %101

101:                                              ; preds = %90, %12
  ret void
}

declare dso_local i32 @git_vector_sort(%struct.TYPE_4__*) #1

declare dso_local i32 @strict_comparison(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
