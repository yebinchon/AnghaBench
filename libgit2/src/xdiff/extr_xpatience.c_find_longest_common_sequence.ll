; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xpatience.c_find_longest_common_sequence.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xpatience.c_find_longest_common_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64, %struct.entry*, %struct.entry*, i64 }
%struct.hashmap = type { i32, %struct.entry* }

@NON_UNIQUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.hashmap*)* @find_longest_common_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @find_longest_common_sequence(%struct.hashmap* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca %struct.hashmap*, align 8
  %4 = alloca %struct.entry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.entry*, align 8
  %8 = alloca i32, align 4
  store %struct.hashmap* %0, %struct.hashmap** %3, align 8
  %9 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %10 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call %struct.entry** @xdl_malloc(i32 %14)
  store %struct.entry** %15, %struct.entry*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %8, align 4
  %16 = load %struct.entry**, %struct.entry*** %4, align 8
  %17 = icmp ne %struct.entry** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.entry* null, %struct.entry** %2, align 8
  br label %122

19:                                               ; preds = %1
  %20 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %21 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %20, i32 0, i32 1
  %22 = load %struct.entry*, %struct.entry** %21, align 8
  store %struct.entry* %22, %struct.entry** %7, align 8
  br label %23

23:                                               ; preds = %85, %19
  %24 = load %struct.entry*, %struct.entry** %7, align 8
  %25 = icmp ne %struct.entry* %24, null
  br i1 %25, label %26, label %89

26:                                               ; preds = %23
  %27 = load %struct.entry*, %struct.entry** %7, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.entry*, %struct.entry** %7, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NON_UNIQUE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %26
  br label %85

38:                                               ; preds = %31
  %39 = load %struct.entry**, %struct.entry*** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.entry*, %struct.entry** %7, align 8
  %42 = call i32 @binary_search(%struct.entry** %39, i32 %40, %struct.entry* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %52

46:                                               ; preds = %38
  %47 = load %struct.entry**, %struct.entry*** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.entry*, %struct.entry** %47, i64 %49
  %51 = load %struct.entry*, %struct.entry** %50, align 8
  br label %52

52:                                               ; preds = %46, %45
  %53 = phi %struct.entry* [ null, %45 ], [ %51, %46 ]
  %54 = load %struct.entry*, %struct.entry** %7, align 8
  %55 = getelementptr inbounds %struct.entry, %struct.entry* %54, i32 0, i32 1
  store %struct.entry* %53, %struct.entry** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %85

62:                                               ; preds = %52
  %63 = load %struct.entry*, %struct.entry** %7, align 8
  %64 = load %struct.entry**, %struct.entry*** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.entry*, %struct.entry** %64, i64 %66
  store %struct.entry* %63, %struct.entry** %67, align 8
  %68 = load %struct.entry*, %struct.entry** %7, align 8
  %69 = getelementptr inbounds %struct.entry, %struct.entry* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %84

76:                                               ; preds = %62
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %72
  br label %85

85:                                               ; preds = %84, %61, %37
  %86 = load %struct.entry*, %struct.entry** %7, align 8
  %87 = getelementptr inbounds %struct.entry, %struct.entry* %86, i32 0, i32 2
  %88 = load %struct.entry*, %struct.entry** %87, align 8
  store %struct.entry* %88, %struct.entry** %7, align 8
  br label %23

89:                                               ; preds = %23
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.entry**, %struct.entry*** %4, align 8
  %94 = call i32 @xdl_free(%struct.entry** %93)
  store %struct.entry* null, %struct.entry** %2, align 8
  br label %122

95:                                               ; preds = %89
  %96 = load %struct.entry**, %struct.entry*** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.entry*, %struct.entry** %96, i64 %99
  %101 = load %struct.entry*, %struct.entry** %100, align 8
  store %struct.entry* %101, %struct.entry** %7, align 8
  %102 = load %struct.entry*, %struct.entry** %7, align 8
  %103 = getelementptr inbounds %struct.entry, %struct.entry* %102, i32 0, i32 2
  store %struct.entry* null, %struct.entry** %103, align 8
  br label %104

104:                                              ; preds = %109, %95
  %105 = load %struct.entry*, %struct.entry** %7, align 8
  %106 = getelementptr inbounds %struct.entry, %struct.entry* %105, i32 0, i32 1
  %107 = load %struct.entry*, %struct.entry** %106, align 8
  %108 = icmp ne %struct.entry* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.entry*, %struct.entry** %7, align 8
  %111 = load %struct.entry*, %struct.entry** %7, align 8
  %112 = getelementptr inbounds %struct.entry, %struct.entry* %111, i32 0, i32 1
  %113 = load %struct.entry*, %struct.entry** %112, align 8
  %114 = getelementptr inbounds %struct.entry, %struct.entry* %113, i32 0, i32 2
  store %struct.entry* %110, %struct.entry** %114, align 8
  %115 = load %struct.entry*, %struct.entry** %7, align 8
  %116 = getelementptr inbounds %struct.entry, %struct.entry* %115, i32 0, i32 1
  %117 = load %struct.entry*, %struct.entry** %116, align 8
  store %struct.entry* %117, %struct.entry** %7, align 8
  br label %104

118:                                              ; preds = %104
  %119 = load %struct.entry**, %struct.entry*** %4, align 8
  %120 = call i32 @xdl_free(%struct.entry** %119)
  %121 = load %struct.entry*, %struct.entry** %7, align 8
  store %struct.entry* %121, %struct.entry** %2, align 8
  br label %122

122:                                              ; preds = %118, %92, %18
  %123 = load %struct.entry*, %struct.entry** %2, align 8
  ret %struct.entry* %123
}

declare dso_local %struct.entry** @xdl_malloc(i32) #1

declare dso_local i32 @binary_search(%struct.entry**, i32, %struct.entry*) #1

declare dso_local i32 @xdl_free(%struct.entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
