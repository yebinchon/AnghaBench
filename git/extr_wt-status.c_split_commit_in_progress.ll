; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_split_commit_in_progress.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_split_commit_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ORIG_HEAD\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"rebase-merge/amend\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"rebase-merge/orig-head\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wt_status*)* @split_commit_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_commit_in_progress(%struct.wt_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wt_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %10 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %15 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %20 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18, %13, %1
  %24 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %25 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.wt_status*, %struct.wt_status** %3, align 8
  %30 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %23, %18
  store i32 0, i32* %2, align 4
  br label %83

35:                                               ; preds = %28
  %36 = call i8* @read_line_from_git_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %5, align 8
  %37 = call i8* @read_line_from_git_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %6, align 8
  %38 = call i8* @read_line_from_git_path(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i8* %38, i8** %7, align 8
  %39 = call i8* @read_line_from_git_path(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48, %45, %42, %35
  br label %73

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %72

65:                                               ; preds = %52
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %65
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %73, %34
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @read_line_from_git_path(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
