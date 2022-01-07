; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_die_path_inside_submodule.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_die_path_inside_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }
%struct.pathspec = type { i32, %struct.pathspec_item* }
%struct.pathspec_item = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Pathspec '%s' is in submodule '%.*s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die_path_inside_submodule(%struct.index_state* %0, %struct.pathspec* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.pathspec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pathspec_item*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.pathspec* %1, %struct.pathspec** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %96, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.index_state*, %struct.index_state** %3, align 8
  %13 = getelementptr inbounds %struct.index_state, %struct.index_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %99

16:                                               ; preds = %10
  %17 = load %struct.index_state*, %struct.index_state** %3, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 1
  %19 = load %struct.cache_entry**, %struct.cache_entry*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %19, i64 %21
  %23 = load %struct.cache_entry*, %struct.cache_entry** %22, align 8
  store %struct.cache_entry* %23, %struct.cache_entry** %7, align 8
  %24 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %25 = call i32 @ce_namelen(%struct.cache_entry* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @S_ISGITLINK(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %16
  br label %96

32:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %92, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %36 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %95

39:                                               ; preds = %33
  %40 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %41 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %40, i32 0, i32 1
  %42 = load %struct.pathspec_item*, %struct.pathspec_item** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %42, i64 %44
  store %struct.pathspec_item* %45, %struct.pathspec_item** %9, align 8
  %46 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %47 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %92

52:                                               ; preds = %39
  %53 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %54 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %92

63:                                               ; preds = %52
  %64 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %65 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %68 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @strncmp(i32 %66, i8* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %92

74:                                               ; preds = %63
  %75 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %76 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %92

82:                                               ; preds = %74
  %83 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %85 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %89 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @die(i32 %83, i32 %86, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %82, %81, %73, %62, %51
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %33

95:                                               ; preds = %33
  br label %96

96:                                               ; preds = %95, %31
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %10

99:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @die(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
