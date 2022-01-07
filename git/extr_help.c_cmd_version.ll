; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_cmd_version.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_cmd_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"git version [<options>]\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"build-options\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"also print build options\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"git version %s\0A\00", align 1
@git_version_string = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"cpu: %s\0A\00", align 1
@GIT_HOST_CPU = common dso_local global i8* null, align 8
@git_built_from_commit_string = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"built from commit: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"no commit associated with this build\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"sizeof-long: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"sizeof-size_t: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_version(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8*], align 16
  %9 = alloca [2 x %struct.option], align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %11 = call i8* @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %14 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %17 = call i32 (...) @OPT_END()
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %24 = call i32 @parse_options(i32 %19, i8** %20, i8* %21, %struct.option* %22, i8** %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i8*, i8** @git_version_string, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %3
  %30 = load i8*, i8** @GIT_HOST_CPU, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** @git_built_from_commit_string, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** @git_built_from_commit_string, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %37)
  br label %41

39:                                               ; preds = %29
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 8)
  br label %44

44:                                               ; preds = %41, %3
  ret i32 0
}

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
