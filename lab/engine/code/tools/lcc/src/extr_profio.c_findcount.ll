; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_profio.c_findcount.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_profio.c_findcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, i32, %struct.count* }
%struct.count = type { i32, i32, i32 }

@findcount.cursor = internal global %struct.file* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findcount(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.count*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** @findcount.cursor, align 8
  %13 = icmp eq %struct.file* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.file*, %struct.file** @findcount.cursor, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %3
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.file* @findfile(i8* %21)
  store %struct.file* %22, %struct.file** @findcount.cursor, align 8
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.file*, %struct.file** @findcount.cursor, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %26, label %112

26:                                               ; preds = %23
  %27 = load %struct.file*, %struct.file** @findcount.cursor, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 2
  %29 = load %struct.count*, %struct.count** %28, align 8
  store %struct.count* %29, %struct.count** %10, align 8
  store i32 0, i32* %8, align 4
  %30 = load %struct.file*, %struct.file** @findcount.cursor, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %110, %26
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %111

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %11, align 4
  %43 = load %struct.count*, %struct.count** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.count, %struct.count* %43, i64 %45
  %47 = getelementptr inbounds %struct.count, %struct.count* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %69, label %51

51:                                               ; preds = %38
  %52 = load %struct.count*, %struct.count** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.count, %struct.count* %52, i64 %54
  %56 = getelementptr inbounds %struct.count, %struct.count* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %51
  %61 = load %struct.count*, %struct.count** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.count, %struct.count* %61, i64 %63
  %65 = getelementptr inbounds %struct.count, %struct.count* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %60, %38
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %110

72:                                               ; preds = %60, %51
  %73 = load %struct.count*, %struct.count** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.count, %struct.count* %73, i64 %75
  %77 = getelementptr inbounds %struct.count, %struct.count* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %99, label %81

81:                                               ; preds = %72
  %82 = load %struct.count*, %struct.count** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.count, %struct.count* %82, i64 %84
  %86 = getelementptr inbounds %struct.count, %struct.count* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %81
  %91 = load %struct.count*, %struct.count** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.count, %struct.count* %91, i64 %93
  %95 = getelementptr inbounds %struct.count, %struct.count* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %90, %72
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %109

102:                                              ; preds = %90, %81
  %103 = load %struct.count*, %struct.count** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.count, %struct.count* %103, i64 %105
  %107 = getelementptr inbounds %struct.count, %struct.count* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %4, align 4
  br label %113

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %69
  br label %34

111:                                              ; preds = %34
  br label %112

112:                                              ; preds = %111, %23
  store i32 -1, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.file* @findfile(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
