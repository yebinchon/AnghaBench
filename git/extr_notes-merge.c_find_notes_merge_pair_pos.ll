; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_find_notes_merge_pair_pos.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_find_notes_merge_pair_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_merge_pair = type { i32 }
%struct.object_id = type { i32 }

@find_notes_merge_pair_pos.last_index = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.notes_merge_pair* (%struct.notes_merge_pair*, i32, %struct.object_id*, i32, i32*)* @find_notes_merge_pair_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.notes_merge_pair* @find_notes_merge_pair_pos(%struct.notes_merge_pair* %0, i32 %1, %struct.object_id* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.notes_merge_pair*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.notes_merge_pair* %0, %struct.notes_merge_pair** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @find_notes_merge_pair_pos.last_index, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @find_notes_merge_pair_pos.last_index, align 4
  br label %22

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %24

24:                                               ; preds = %72, %22
  %25 = load i32, i32* %11, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %74

33:                                               ; preds = %31
  %34 = load %struct.object_id*, %struct.object_id** %8, align 8
  %35 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %35, i64 %37
  %39 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %38, i32 0, i32 0
  %40 = call i32 @oidcmp(%struct.object_id* %34, i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %74

44:                                               ; preds = %33
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  br label %71

53:                                               ; preds = %47, %44
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %74

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %69

66:                                               ; preds = %60, %57
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %74

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %12, align 4
  br label %24

74:                                               ; preds = %66, %56, %43, %31
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %10, align 8
  store i32 1, i32* %82, align 4
  br label %111

83:                                               ; preds = %78
  %84 = load i32*, i32** %10, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %92, i64 %94
  %96 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %95, i64 1
  %97 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %97, i64 %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 @MOVE_ARRAY(%struct.notes_merge_pair* %96, %struct.notes_merge_pair* %100, i32 %103)
  %105 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %105, i64 %107
  %109 = call i32 @memset(%struct.notes_merge_pair* %108, i32 0, i32 4)
  br label %110

110:                                              ; preds = %91, %87, %83
  br label %111

111:                                              ; preds = %110, %81
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* @find_notes_merge_pair_pos.last_index, align 4
  %113 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %113, i64 %115
  ret %struct.notes_merge_pair* %116
}

declare dso_local i32 @oidcmp(%struct.object_id*, i32*) #1

declare dso_local i32 @MOVE_ARRAY(%struct.notes_merge_pair*, %struct.notes_merge_pair*, i32) #1

declare dso_local i32 @memset(%struct.notes_merge_pair*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
