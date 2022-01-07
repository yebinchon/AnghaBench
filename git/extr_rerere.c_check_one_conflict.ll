; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_check_one_conflict.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_check_one_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@RESOLVED = common dso_local global i32 0, align 4
@PUNTED = common dso_local global i32 0, align 4
@THREE_STAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i32, i32*)* @check_one_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_one_conflict(%struct.index_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.index_state*, %struct.index_state** %5, align 8
  %12 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 1
  %13 = load %struct.cache_entry**, %struct.cache_entry*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %13, i64 %15
  %17 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  store %struct.cache_entry* %17, %struct.cache_entry** %8, align 8
  %18 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %19 = call i32 @ce_stage(%struct.cache_entry* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @RESOLVED, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %126

26:                                               ; preds = %3
  %27 = load i32, i32* @PUNTED, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %47, %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.index_state*, %struct.index_state** %5, align 8
  %32 = getelementptr inbounds %struct.index_state, %struct.index_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.index_state*, %struct.index_state** %5, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 1
  %38 = load %struct.cache_entry**, %struct.cache_entry*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %38, i64 %40
  %42 = load %struct.cache_entry*, %struct.cache_entry** %41, align 8
  %43 = call i32 @ce_stage(%struct.cache_entry* %42)
  %44 = icmp eq i32 %43, 1
  br label %45

45:                                               ; preds = %35, %29
  %46 = phi i1 [ false, %29 ], [ %44, %35 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %29

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = load %struct.index_state*, %struct.index_state** %5, align 8
  %54 = getelementptr inbounds %struct.index_state, %struct.index_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %50
  %58 = load %struct.index_state*, %struct.index_state** %5, align 8
  %59 = getelementptr inbounds %struct.index_state, %struct.index_state* %58, i32 0, i32 1
  %60 = load %struct.cache_entry**, %struct.cache_entry*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %60, i64 %62
  %64 = load %struct.cache_entry*, %struct.cache_entry** %63, align 8
  store %struct.cache_entry* %64, %struct.cache_entry** %9, align 8
  %65 = load %struct.index_state*, %struct.index_state** %5, align 8
  %66 = getelementptr inbounds %struct.index_state, %struct.index_state* %65, i32 0, i32 1
  %67 = load %struct.cache_entry**, %struct.cache_entry*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %67, i64 %70
  %72 = load %struct.cache_entry*, %struct.cache_entry** %71, align 8
  store %struct.cache_entry* %72, %struct.cache_entry** %10, align 8
  %73 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %74 = call i32 @ce_stage(%struct.cache_entry* %73)
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %100

76:                                               ; preds = %57
  %77 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %78 = call i32 @ce_stage(%struct.cache_entry* %77)
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %82 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %83 = call i64 @ce_same_name(%struct.cache_entry* %81, %struct.cache_entry* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %87 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @S_ISREG(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %93 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @S_ISREG(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @THREE_STAGED, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %91, %85, %80, %76, %57
  br label %101

101:                                              ; preds = %100, %50
  br label %102

102:                                              ; preds = %121, %101
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.index_state*, %struct.index_state** %5, align 8
  %105 = getelementptr inbounds %struct.index_state, %struct.index_state* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %110 = load %struct.index_state*, %struct.index_state** %5, align 8
  %111 = getelementptr inbounds %struct.index_state, %struct.index_state* %110, i32 0, i32 1
  %112 = load %struct.cache_entry**, %struct.cache_entry*** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %112, i64 %114
  %116 = load %struct.cache_entry*, %struct.cache_entry** %115, align 8
  %117 = call i64 @ce_same_name(%struct.cache_entry* %109, %struct.cache_entry* %116)
  %118 = icmp ne i64 %117, 0
  br label %119

119:                                              ; preds = %108, %102
  %120 = phi i1 [ false, %102 ], [ %118, %108 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %102

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %21
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @ce_same_name(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
