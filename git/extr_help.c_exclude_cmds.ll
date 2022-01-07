; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_exclude_cmds.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_exclude_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exclude_cmds(%struct.cmdnames* %0, %struct.cmdnames* %1) #0 {
  %3 = alloca %struct.cmdnames*, align 8
  %4 = alloca %struct.cmdnames*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %3, align 8
  store %struct.cmdnames* %1, %struct.cmdnames** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %84, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %12 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %18 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ false, %9 ], [ %20, %15 ]
  br i1 %22, label %23, label %85

23:                                               ; preds = %21
  %24 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %25 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %34 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i32 %32, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %23
  %46 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %47 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %55 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %59
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %60, align 8
  br label %84

61:                                               ; preds = %23
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %68 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 @free(%struct.TYPE_2__* %74)
  br label %83

76:                                               ; preds = %61
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %45
  br label %9

85:                                               ; preds = %21
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %89 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %94 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %95, i64 %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %102 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %103, i64 %106
  store %struct.TYPE_2__* %100, %struct.TYPE_2__** %107, align 8
  br label %86

108:                                              ; preds = %86
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %111 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  ret void
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
