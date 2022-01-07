; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xpatience.c_patience_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xpatience.c_patience_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.hashmap = type { i32, i32 }
%struct.entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_8__*, i32, i32, i32, i32)* @patience_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patience_diff(i32* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.hashmap, align 4
  %19 = alloca %struct.entry*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i32, i32* %17, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %17, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %16, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %16, align 4
  %35 = sub nsw i32 %33, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32 1, i32* %37, align 4
  br label %24

38:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %132

39:                                               ; preds = %8
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %15, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  %54 = sub nsw i32 %52, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 1, i32* %56, align 4
  br label %43

57:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %132

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58
  %60 = call i32 @memset(%struct.hashmap* %18, i32 0, i32 8)
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i64 @fill_hashmap(i32* %61, i32* %62, i32* %63, %struct.TYPE_8__* %64, %struct.hashmap* %18, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 -1, i32* %9, align 4
  br label %132

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %18, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %110, label %76

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %15, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = sub nsw i32 %86, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 1, i32* %90, align 4
  br label %77

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %96, %91
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %17, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  %103 = sub nsw i32 %101, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 1, i32* %105, align 4
  br label %92

106:                                              ; preds = %92
  %107 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %18, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @xdl_free(i32 %108)
  store i32 0, i32* %9, align 4
  br label %132

110:                                              ; preds = %72
  %111 = call %struct.entry* @find_longest_common_sequence(%struct.hashmap* %18)
  store %struct.entry* %111, %struct.entry** %19, align 8
  %112 = load %struct.entry*, %struct.entry** %19, align 8
  %113 = icmp ne %struct.entry* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.entry*, %struct.entry** %19, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @walk_common_sequence(%struct.hashmap* %18, %struct.entry* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %20, align 4
  br label %127

121:                                              ; preds = %110
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @fall_back_to_classic_diff(%struct.hashmap* %18, i32 %122, i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %20, align 4
  br label %127

127:                                              ; preds = %121, %114
  %128 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %18, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @xdl_free(i32 %129)
  %131 = load i32, i32* %20, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %127, %106, %71, %57, %38
  %133 = load i32, i32* %9, align 4
  ret i32 %133
}

declare dso_local i32 @memset(%struct.hashmap*, i32, i32) #1

declare dso_local i64 @fill_hashmap(i32*, i32*, i32*, %struct.TYPE_8__*, %struct.hashmap*, i32, i32, i32, i32) #1

declare dso_local i32 @xdl_free(i32) #1

declare dso_local %struct.entry* @find_longest_common_sequence(%struct.hashmap*) #1

declare dso_local i32 @walk_common_sequence(%struct.hashmap*, %struct.entry*, i32, i32, i32, i32) #1

declare dso_local i32 @fall_back_to_classic_diff(%struct.hashmap*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
