; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_run_prepare_commit_msg_hook.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_run_prepare_commit_msg_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.strbuf = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"prepare-commit-msg\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"'prepare-commit-msg' hook failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.strbuf*, i8*)* @run_prepare_commit_msg_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_prepare_commit_msg_hook(%struct.repository* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %12 = call i8* (...) @git_path_commit_editmsg()
  store i8* %12, i8** %9, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @write_message(i32 %15, i32 %18, i8* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %11, align 8
  br label %29

28:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %29

29:                                               ; preds = %28, %26
  %30 = load %struct.repository*, %struct.repository** %5, align 8
  %31 = getelementptr inbounds %struct.repository, %struct.repository* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @run_commit_hook(i32 0, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %34, i8* %35, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @error(i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %29
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %22
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i8* @git_path_commit_editmsg(...) #1

declare dso_local i64 @write_message(i32, i32, i8*, i32) #1

declare dso_local i64 @run_commit_hook(i32, i32, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
