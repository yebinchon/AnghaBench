; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_editorDelChar.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_editorDelChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@E = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @editorDelChar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 0), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 1), align 4
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 2), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 4), align 8
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %20

15:                                               ; preds = %0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 7), align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi %struct.TYPE_6__* [ null, %14 ], [ %19, %15 ]
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %20
  br label %107

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 7), align 8
  %36 = load i32, i32* %1, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %2, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 7), align 8
  %43 = load i32, i32* %1, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @editorRowAppendString(%struct.TYPE_6__* %46, i32 %49, i32 %52)
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @editorDelRow(i32 %54)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 1), align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %34
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 0), align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 0), align 8
  br label %64

61:                                               ; preds = %34
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 1), align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 1), align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %2, align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 5), align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 5), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  %72 = sub nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 2), align 8
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 2), align 8
  br label %80

80:                                               ; preds = %69, %64
  br label %98

81:                                               ; preds = %31
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @editorRowDelChar(%struct.TYPE_6__* %82, i32 %84)
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 2), align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 2), align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 2), align 8
  br label %97

94:                                               ; preds = %88, %81
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 3), align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %80
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = icmp ne %struct.TYPE_6__* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = call i32 @editorUpdateRow(%struct.TYPE_6__* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 6), align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @E, i32 0, i32 6), align 8
  br label %107

107:                                              ; preds = %104, %30
  ret void
}

declare dso_local i32 @editorRowAppendString(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @editorDelRow(i32) #1

declare dso_local i32 @editorRowDelChar(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @editorUpdateRow(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
