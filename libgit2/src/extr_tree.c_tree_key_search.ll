; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_tree_key_search.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_tree_key_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.tree_key_search = type { i8*, i64 }
%struct.TYPE_9__ = type { i64, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.TYPE_10__*, i8*, i64)* @tree_key_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_key_search(i64* %0, %struct.TYPE_10__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tree_key_search, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @TREE_ENTRY_CHECK_NAMELEN(i64 %14)
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.tree_key_search, %struct.tree_key_search* %10, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.tree_key_search, %struct.tree_key_search* %10, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @git_array_search(i64* %12, i64 %23, i64 (%struct.tree_key_search*, %struct.TYPE_9__*)* @homing_search_cmp, %struct.tree_key_search* %10)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %27, i32* %5, align 4
  br label %119

28:                                               ; preds = %4
  %29 = load i64, i64* %12, align 8
  store i64 %29, i64* %13, align 8
  br label %30

30:                                               ; preds = %70, %28
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.TYPE_9__* @git_array_get(i64 %42, i64 %40)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %11, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = call i64 @homing_search_cmp(%struct.tree_key_search* %10, %struct.TYPE_9__* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %73

48:                                               ; preds = %37
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @memcmp(i8* %55, i32 %58, i64 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i64*, i64** %6, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %13, align 8
  %67 = load i64*, i64** %6, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  store i32 0, i32* %5, align 4
  br label %119

69:                                               ; preds = %54, %48
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %13, align 8
  br label %30

73:                                               ; preds = %47, %30
  %74 = load i64, i64* %12, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %73
  %77 = load i64, i64* %12, align 8
  %78 = sub i64 %77, 1
  store i64 %78, i64* %13, align 8
  br label %79

79:                                               ; preds = %112, %76
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call %struct.TYPE_9__* @git_array_get(i64 %84, i64 %82)
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %11, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = call i64 @homing_search_cmp(%struct.tree_key_search* %10, %struct.TYPE_9__* %86)
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %116

90:                                               ; preds = %79
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @memcmp(i8* %97, i32 %100, i64 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load i64*, i64** %6, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* %13, align 8
  %109 = load i64*, i64** %6, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  store i32 0, i32* %5, align 4
  br label %119

111:                                              ; preds = %96, %90
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, -1
  store i64 %114, i64* %13, align 8
  %115 = icmp ugt i64 %113, 0
  br i1 %115, label %79, label %116

116:                                              ; preds = %112, %89
  br label %117

117:                                              ; preds = %116, %73
  %118 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %110, %68, %26
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @TREE_ENTRY_CHECK_NAMELEN(i64) #1

declare dso_local i64 @git_array_search(i64*, i64, i64 (%struct.tree_key_search*, %struct.TYPE_9__*)*, %struct.tree_key_search*) #1

declare dso_local i64 @homing_search_cmp(%struct.tree_key_search*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @git_array_get(i64, i64) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
