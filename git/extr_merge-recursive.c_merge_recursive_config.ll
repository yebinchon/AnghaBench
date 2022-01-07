; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_recursive_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_recursive_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"merge.verbosity\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"diff.renamelimit\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"merge.renamelimit\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"diff.renames\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"merge.renames\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"merge.directoryrenames\00", align 1
@MERGE_DIRECTORY_RENAMES_TRUE = common dso_local global i32 0, align 4
@MERGE_DIRECTORY_RENAMES_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"conflict\00", align 1
@MERGE_DIRECTORY_RENAMES_CONFLICT = common dso_local global i32 0, align 4
@git_xmerge_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_options*)* @merge_recursive_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_recursive_config(%struct.merge_options* %0) #0 {
  %2 = alloca %struct.merge_options*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %6 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %5, i32 0, i32 3
  %7 = call i32 @git_config_get_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %9 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %8, i32 0, i32 2
  %10 = call i32 @git_config_get_int(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %11 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %12 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %11, i32 0, i32 2
  %13 = call i32 @git_config_get_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %14 = call i32 @git_config_get_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %3)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @git_config_rename(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %19 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %20 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @free(i8* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = call i32 @git_config_get_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %3)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @git_config_rename(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %30 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @free(i8* %31)
  br label %33

33:                                               ; preds = %26, %23
  %34 = call i32 @git_config_get_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %3)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @git_parse_maybe_bool(i8* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 0, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @MERGE_DIRECTORY_RENAMES_TRUE, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @MERGE_DIRECTORY_RENAMES_NONE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %51 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %61

52:                                               ; preds = %36
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @MERGE_DIRECTORY_RENAMES_CONFLICT, align 4
  %58 = load %struct.merge_options*, %struct.merge_options** %2, align 8
  %59 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %61, %33
  %65 = load i32, i32* @git_xmerge_config, align 4
  %66 = call i32 @git_config(i32 %65, i32* null)
  ret void
}

declare dso_local i32 @git_config_get_int(i8*, i32*) #1

declare dso_local i32 @git_config_get_string(i8*, i8**) #1

declare dso_local i8* @git_config_rename(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @git_parse_maybe_bool(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @git_config(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
