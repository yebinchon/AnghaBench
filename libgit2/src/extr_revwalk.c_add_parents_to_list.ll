; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_add_parents_to_list.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_add_parents_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64 (i32*, i32)* }
%struct.TYPE_10__ = type { i32, i32, i16, i32, i32, %struct.TYPE_10__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32**)* @add_parents_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_parents_to_list(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %129

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %17
  store i16 0, i16* %8, align 2
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i16, i16* %8, align 2
  %27 = zext i16 %26 to i32
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %25
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %35, align 8
  %37 = load i16, i16* %8, align 2
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %10, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = call i32 @git_commit_list_parse(%struct.TYPE_9__* %43, %struct.TYPE_10__* %44)
  store i32 %45, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %129

49:                                               ; preds = %33
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %51, align 8
  %53 = icmp ne %struct.TYPE_10__** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = call i32 @mark_parents_uninteresting(%struct.TYPE_10__* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = load i32**, i32*** %7, align 8
  %62 = call i32 @git_commit_list_insert_by_date(%struct.TYPE_10__* %60, i32** %61)
  br label %63

63:                                               ; preds = %57
  %64 = load i16, i16* %8, align 2
  %65 = add i16 %64, 1
  store i16 %65, i16* %8, align 2
  br label %25

66:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %129

67:                                               ; preds = %17
  store i16 0, i16* %8, align 2
  br label %68

68:                                               ; preds = %125, %67
  %69 = load i16, i16* %8, align 2
  %70 = zext i16 %69 to i32
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i16, i16* %72, align 8
  %74 = zext i16 %73 to i32
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %128

76:                                               ; preds = %68
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %78, align 8
  %80 = load i16, i16* %8, align 2
  %81 = zext i16 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %79, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %11, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = call i32 @git_commit_list_parse(%struct.TYPE_9__* %84, %struct.TYPE_10__* %85)
  store i32 %86, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %129

90:                                               ; preds = %76
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i64 (i32*, i32)*, i64 (i32*, i32)** %92, align 8
  %94 = icmp ne i64 (i32*, i32)* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i64 (i32*, i32)*, i64 (i32*, i32)** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 %98(i32* %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %125

107:                                              ; preds = %95, %90
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %116 = load i32**, i32*** %7, align 8
  %117 = call i32 @git_commit_list_insert_by_date(%struct.TYPE_10__* %115, i32** %116)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %128

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %106
  %126 = load i16, i16* %8, align 2
  %127 = add i16 %126, 1
  store i16 %127, i16* %8, align 2
  br label %68

128:                                              ; preds = %123, %68
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %88, %66, %47, %16
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @git_commit_list_parse(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @mark_parents_uninteresting(%struct.TYPE_10__*) #1

declare dso_local i32 @git_commit_list_insert_by_date(%struct.TYPE_10__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
