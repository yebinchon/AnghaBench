; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_log.c_set_sorting.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_log.c_set_sorting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_state = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not open repository\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not create revision walker\00", align 1
@GIT_SORT_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.log_state*, i32)* @set_sorting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sorting(%struct.log_state* %0, i32 %1) #0 {
  %3 = alloca %struct.log_state*, align 8
  %4 = alloca i32, align 4
  store %struct.log_state* %0, %struct.log_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.log_state*, %struct.log_state** %3, align 8
  %6 = getelementptr inbounds %struct.log_state, %struct.log_state* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = load %struct.log_state*, %struct.log_state** %3, align 8
  %11 = getelementptr inbounds %struct.log_state, %struct.log_state* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load %struct.log_state*, %struct.log_state** %3, align 8
  %16 = getelementptr inbounds %struct.log_state, %struct.log_state* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.log_state*, %struct.log_state** %3, align 8
  %19 = getelementptr inbounds %struct.log_state, %struct.log_state* %18, i32 0, i32 3
  %20 = load %struct.log_state*, %struct.log_state** %3, align 8
  %21 = getelementptr inbounds %struct.log_state, %struct.log_state* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @git_repository_open_ext(i32* %19, i8* %22, i32 0, i32* null)
  %24 = load %struct.log_state*, %struct.log_state** %3, align 8
  %25 = getelementptr inbounds %struct.log_state, %struct.log_state* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @check_lg2(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %17, %2
  %29 = load %struct.log_state*, %struct.log_state** %3, align 8
  %30 = getelementptr inbounds %struct.log_state, %struct.log_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.log_state*, %struct.log_state** %3, align 8
  %35 = getelementptr inbounds %struct.log_state, %struct.log_state* %34, i32 0, i32 2
  %36 = load %struct.log_state*, %struct.log_state** %3, align 8
  %37 = getelementptr inbounds %struct.log_state, %struct.log_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @git_revwalk_new(i32* %35, i32 %38)
  %40 = call i32 @check_lg2(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* null)
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.log_state*, %struct.log_state** %3, align 8
  %47 = getelementptr inbounds %struct.log_state, %struct.log_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %50 = xor i32 %48, %49
  %51 = load %struct.log_state*, %struct.log_state** %3, align 8
  %52 = getelementptr inbounds %struct.log_state, %struct.log_state* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %63

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.log_state*, %struct.log_state** %3, align 8
  %56 = getelementptr inbounds %struct.log_state, %struct.log_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %59 = and i32 %57, %58
  %60 = or i32 %54, %59
  %61 = load %struct.log_state*, %struct.log_state** %3, align 8
  %62 = getelementptr inbounds %struct.log_state, %struct.log_state* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %53, %45
  %64 = load %struct.log_state*, %struct.log_state** %3, align 8
  %65 = getelementptr inbounds %struct.log_state, %struct.log_state* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.log_state*, %struct.log_state** %3, align 8
  %68 = getelementptr inbounds %struct.log_state, %struct.log_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @git_revwalk_sorting(i32 %66, i32 %69)
  ret void
}

declare dso_local i32 @check_lg2(i32, i8*, i8*) #1

declare dso_local i32 @git_repository_open_ext(i32*, i8*, i32, i32*) #1

declare dso_local i32 @git_revwalk_new(i32*, i32) #1

declare dso_local i32 @git_revwalk_sorting(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
