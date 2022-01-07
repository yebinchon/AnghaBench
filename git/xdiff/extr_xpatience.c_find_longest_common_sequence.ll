; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xpatience.c_find_longest_common_sequence.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xpatience.c_find_longest_common_sequence.c"
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
  %16 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %17 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %16, i32 0, i32 1
  %18 = load %struct.entry*, %struct.entry** %17, align 8
  store %struct.entry* %18, %struct.entry** %7, align 8
  br label %19

19:                                               ; preds = %81, %1
  %20 = load %struct.entry*, %struct.entry** %7, align 8
  %21 = icmp ne %struct.entry* %20, null
  br i1 %21, label %22, label %85

22:                                               ; preds = %19
  %23 = load %struct.entry*, %struct.entry** %7, align 8
  %24 = getelementptr inbounds %struct.entry, %struct.entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.entry*, %struct.entry** %7, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NON_UNIQUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %22
  br label %81

34:                                               ; preds = %27
  %35 = load %struct.entry**, %struct.entry*** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.entry*, %struct.entry** %7, align 8
  %38 = call i32 @binary_search(%struct.entry** %35, i32 %36, %struct.entry* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %48

42:                                               ; preds = %34
  %43 = load %struct.entry**, %struct.entry*** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.entry*, %struct.entry** %43, i64 %45
  %47 = load %struct.entry*, %struct.entry** %46, align 8
  br label %48

48:                                               ; preds = %42, %41
  %49 = phi %struct.entry* [ null, %41 ], [ %47, %42 ]
  %50 = load %struct.entry*, %struct.entry** %7, align 8
  %51 = getelementptr inbounds %struct.entry, %struct.entry* %50, i32 0, i32 1
  store %struct.entry* %49, %struct.entry** %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %81

58:                                               ; preds = %48
  %59 = load %struct.entry*, %struct.entry** %7, align 8
  %60 = load %struct.entry**, %struct.entry*** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.entry*, %struct.entry** %60, i64 %62
  store %struct.entry* %59, %struct.entry** %63, align 8
  %64 = load %struct.entry*, %struct.entry** %7, align 8
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %80

72:                                               ; preds = %58
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %68
  br label %81

81:                                               ; preds = %80, %57, %33
  %82 = load %struct.entry*, %struct.entry** %7, align 8
  %83 = getelementptr inbounds %struct.entry, %struct.entry* %82, i32 0, i32 2
  %84 = load %struct.entry*, %struct.entry** %83, align 8
  store %struct.entry* %84, %struct.entry** %7, align 8
  br label %19

85:                                               ; preds = %19
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load %struct.entry**, %struct.entry*** %4, align 8
  %90 = call i32 @xdl_free(%struct.entry** %89)
  store %struct.entry* null, %struct.entry** %2, align 8
  br label %118

91:                                               ; preds = %85
  %92 = load %struct.entry**, %struct.entry*** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.entry*, %struct.entry** %92, i64 %95
  %97 = load %struct.entry*, %struct.entry** %96, align 8
  store %struct.entry* %97, %struct.entry** %7, align 8
  %98 = load %struct.entry*, %struct.entry** %7, align 8
  %99 = getelementptr inbounds %struct.entry, %struct.entry* %98, i32 0, i32 2
  store %struct.entry* null, %struct.entry** %99, align 8
  br label %100

100:                                              ; preds = %105, %91
  %101 = load %struct.entry*, %struct.entry** %7, align 8
  %102 = getelementptr inbounds %struct.entry, %struct.entry* %101, i32 0, i32 1
  %103 = load %struct.entry*, %struct.entry** %102, align 8
  %104 = icmp ne %struct.entry* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.entry*, %struct.entry** %7, align 8
  %107 = load %struct.entry*, %struct.entry** %7, align 8
  %108 = getelementptr inbounds %struct.entry, %struct.entry* %107, i32 0, i32 1
  %109 = load %struct.entry*, %struct.entry** %108, align 8
  %110 = getelementptr inbounds %struct.entry, %struct.entry* %109, i32 0, i32 2
  store %struct.entry* %106, %struct.entry** %110, align 8
  %111 = load %struct.entry*, %struct.entry** %7, align 8
  %112 = getelementptr inbounds %struct.entry, %struct.entry* %111, i32 0, i32 1
  %113 = load %struct.entry*, %struct.entry** %112, align 8
  store %struct.entry* %113, %struct.entry** %7, align 8
  br label %100

114:                                              ; preds = %100
  %115 = load %struct.entry**, %struct.entry*** %4, align 8
  %116 = call i32 @xdl_free(%struct.entry** %115)
  %117 = load %struct.entry*, %struct.entry** %7, align 8
  store %struct.entry* %117, %struct.entry** %2, align 8
  br label %118

118:                                              ; preds = %114, %88
  %119 = load %struct.entry*, %struct.entry** %2, align 8
  ret %struct.entry* %119
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
