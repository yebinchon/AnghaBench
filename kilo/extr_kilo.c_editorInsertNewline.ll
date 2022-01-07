; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_editorInsertNewline.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_editorInsertNewline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }

@E = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @editorInsertNewline() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 1), align 4
  %6 = add nsw i32 %4, %5
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 2), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 3), align 4
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 4), align 8
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %19

14:                                               ; preds = %0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 6), align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  br label %19

19:                                               ; preds = %14, %13
  %20 = phi %struct.TYPE_4__* [ null, %13 ], [ %18, %14 ]
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %3, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 4), align 8
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @editorInsertRow(i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %78

30:                                               ; preds = %23
  br label %90

31:                                               ; preds = %19
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @editorInsertRow(i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %77

47:                                               ; preds = %41
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @editorInsertRow(i32 %49, i8* %55, i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 6), align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %3, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* %2, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = call i32 @editorUpdateRow(%struct.TYPE_4__* %75)
  br label %77

77:                                               ; preds = %47, %44
  br label %78

78:                                               ; preds = %77, %27
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 1), align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 5), align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 0), align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 0), align 8
  br label %89

86:                                               ; preds = %78
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 1), align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 1), align 4
  br label %89

89:                                               ; preds = %86, %83
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @E, i32 0, i32 2), align 8
  br label %90

90:                                               ; preds = %89, %30
  ret void
}

declare dso_local i32 @editorInsertRow(i32, i8*, i32) #1

declare dso_local i32 @editorUpdateRow(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
