; ModuleID = '/home/carl/AnghaBench/htop/extr_FunctionBar.c_FunctionBar_new.c'
source_filename = "/home/carl/AnghaBench/htop/extr_FunctionBar.c_FunctionBar_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i32*, i32, i8** }

@FunctionBar_FLabels = common dso_local global i8** null, align 8
@FunctionBar_FKeys = common dso_local global i64 0, align 8
@FunctionBar_FEvents = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @FunctionBar_new(i8** %0, i8** %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call i8* @xCalloc(i32 1, i32 40)
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = call i8* @xCalloc(i32 16, i32 8)
  %13 = bitcast i8* %12 to i8**
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i8** %13, i8*** %15, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i8**, i8*** @FunctionBar_FLabels, align 8
  store i8** %19, i8*** %4, align 8
  br label %20

20:                                               ; preds = %18, %3
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 15
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %49

33:                                               ; preds = %31
  %34 = load i8**, i8*** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @xStrdup(i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %39, i8** %45, align 8
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %21

49:                                               ; preds = %31
  %50 = load i8**, i8*** %5, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %108

52:                                               ; preds = %49
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %108

55:                                               ; preds = %52
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = call i8* @xCalloc(i32 15, i32 8)
  %59 = bitcast i8* %58 to i8**
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8** %59, i8*** %61, align 8
  %62 = call i8* @xCalloc(i32 15, i32 4)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %78, %55
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 15
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i8**, i8*** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br label %76

76:                                               ; preds = %69, %66
  %77 = phi i1 [ false, %66 ], [ %75, %69 ]
  br i1 %77, label %78, label %104

78:                                               ; preds = %76
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @xStrdup(i8* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %84, i8** %90, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %66

104:                                              ; preds = %76
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  br label %120

108:                                              ; preds = %52, %49
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i64, i64* @FunctionBar_FKeys, align 8
  %112 = inttoptr i64 %111 to i8**
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i8** %112, i8*** %114, align 8
  %115 = load i32*, i32** @FunctionBar_FEvents, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i32 10, i32* %119, align 8
  br label %120

120:                                              ; preds = %108, %104
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  ret %struct.TYPE_3__* %121
}

declare dso_local i8* @xCalloc(i32, i32) #1

declare dso_local i8* @xStrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
