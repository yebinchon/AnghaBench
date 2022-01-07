; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_fill_alternate_refs_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_fill_alternate_refs_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"core.alternateRefsCommand\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"--git-dir=%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"for-each-ref\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"--format=%(objectname)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"core.alternateRefsPrefixes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@local_repo_env = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.child_process*, i8*)* @fill_alternate_refs_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_alternate_refs_command(%struct.child_process* %0, i8* %1) #0 {
  %3 = alloca %struct.child_process*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.child_process* %0, %struct.child_process** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @git_config_get_value(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load %struct.child_process*, %struct.child_process** %3, align 8
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.child_process*, %struct.child_process** %3, align 8
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @argv_array_push(i32* %12, i8* %13)
  %15 = load %struct.child_process*, %struct.child_process** %3, align 8
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %15, i32 0, i32 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @argv_array_push(i32* %16, i8* %17)
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.child_process*, %struct.child_process** %3, align 8
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.child_process*, %struct.child_process** %3, align 8
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %22, i32 0, i32 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @argv_array_pushf(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load %struct.child_process*, %struct.child_process** %3, align 8
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %26, i32 0, i32 4
  %28 = call i32 @argv_array_push(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.child_process*, %struct.child_process** %3, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %29, i32 0, i32 4
  %31 = call i32 @argv_array_push(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @git_config_get_value(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %5)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %19
  %35 = load %struct.child_process*, %struct.child_process** %3, align 8
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %35, i32 0, i32 4
  %37 = call i32 @argv_array_push(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %38 = load %struct.child_process*, %struct.child_process** %3, align 8
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %38, i32 0, i32 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @argv_array_split(i32* %39, i8* %40)
  br label %42

42:                                               ; preds = %34, %19
  br label %43

43:                                               ; preds = %42, %8
  %44 = load i32, i32* @local_repo_env, align 4
  %45 = load %struct.child_process*, %struct.child_process** %3, align 8
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.child_process*, %struct.child_process** %3, align 8
  %48 = getelementptr inbounds %struct.child_process, %struct.child_process* %47, i32 0, i32 2
  store i32 -1, i32* %48, align 4
  ret void
}

declare dso_local i32 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @argv_array_pushf(i32*, i8*, i8*) #1

declare dso_local i32 @argv_array_split(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
