; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_reuse_worktree_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_reuse_worktree_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32 }
%struct.object_id = type { i32 }
%struct.stat = type { i32 }

@FAST_WORKING_DIRECTORY = common dso_local global i32 0, align 4
@CE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, %struct.object_id*, i32)* @reuse_worktree_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reuse_worktree_file(%struct.index_state* %0, i8* %1, %struct.object_id* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.index_state*, %struct.index_state** %6, align 8
  %15 = getelementptr inbounds %struct.index_state, %struct.index_state* %14, i32 0, i32 0
  %16 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  %17 = icmp ne %struct.cache_entry** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %96

19:                                               ; preds = %4
  %20 = load i32, i32* @FAST_WORKING_DIRECTORY, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load %struct.object_id*, %struct.object_id** %8, align 8
  %27 = call i64 @has_object_pack(%struct.object_id* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %96

30:                                               ; preds = %25, %22, %19
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.index_state*, %struct.index_state** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @would_convert_to_git(%struct.index_state* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %96

39:                                               ; preds = %33, %30
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.index_state*, %struct.index_state** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @index_name_pos(%struct.index_state* %42, i8* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %96

49:                                               ; preds = %39
  %50 = load %struct.index_state*, %struct.index_state** %6, align 8
  %51 = getelementptr inbounds %struct.index_state, %struct.index_state* %50, i32 0, i32 0
  %52 = load %struct.cache_entry**, %struct.cache_entry*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %52, i64 %54
  %56 = load %struct.cache_entry*, %struct.cache_entry** %55, align 8
  store %struct.cache_entry* %56, %struct.cache_entry** %10, align 8
  %57 = load %struct.object_id*, %struct.object_id** %8, align 8
  %58 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %59 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %58, i32 0, i32 2
  %60 = call i32 @oideq(%struct.object_id* %57, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @S_ISREG(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62, %49
  store i32 0, i32* %5, align 4
  br label %96

69:                                               ; preds = %62
  %70 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %71 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CE_VALID, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %78 = call i64 @ce_skip_worktree(%struct.cache_entry* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %69
  store i32 0, i32* %5, align 4
  br label %96

81:                                               ; preds = %76
  %82 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %83 = call i64 @ce_uptodate(%struct.cache_entry* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @lstat(i8* %86, %struct.stat* %11)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load %struct.index_state*, %struct.index_state** %6, align 8
  %91 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %92 = call i32 @ie_match_stat(%struct.index_state* %90, %struct.cache_entry* %91, %struct.stat* %11, i32 0)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89, %81
  store i32 1, i32* %5, align 4
  br label %96

95:                                               ; preds = %89, %85
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %94, %80, %68, %48, %38, %29, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @has_object_pack(%struct.object_id*) #1

declare dso_local i64 @would_convert_to_git(%struct.index_state*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @oideq(%struct.object_id*, i32*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @ce_skip_worktree(%struct.cache_entry*) #1

declare dso_local i64 @ce_uptodate(%struct.cache_entry*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @ie_match_stat(%struct.index_state*, %struct.cache_entry*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
