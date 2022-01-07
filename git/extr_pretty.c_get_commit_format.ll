; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_get_commit_format.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_get_commit_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, i32 }
%struct.cmt_fmt_map = type { i32, i8*, i32, i32 }

@CMIT_FMT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"format:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tformat:\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid --pretty format: %s\00", align 1
@CMIT_FMT_USERFORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_commit_format(i8* %0, %struct.rev_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.cmt_fmt_map*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.rev_info* %1, %struct.rev_info** %4, align 8
  %6 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @CMIT_FMT_DEFAULT, align 4
  %12 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @skip_prefix(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @save_user_format(%struct.rev_info* %19, i8* %20, i32 0)
  br label %76

22:                                               ; preds = %14
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @skip_prefix(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @strchr(i8* %31, i8 signext 37)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %26, %22
  %35 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @save_user_format(%struct.rev_info* %35, i8* %36, i32 1)
  br label %76

38:                                               ; preds = %30
  %39 = load i8*, i8** %3, align 8
  %40 = call %struct.cmt_fmt_map* @find_commit_format(i8* %39)
  store %struct.cmt_fmt_map* %40, %struct.cmt_fmt_map** %5, align 8
  %41 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %5, align 8
  %42 = icmp ne %struct.cmt_fmt_map* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %5, align 8
  %48 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %51 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %5, align 8
  %53 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %56 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %5, align 8
  %58 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %61 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %5, align 8
  %63 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CMIT_FMT_USERFORMAT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %46
  %68 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %69 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %5, align 8
  %70 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.cmt_fmt_map*, %struct.cmt_fmt_map** %5, align 8
  %73 = getelementptr inbounds %struct.cmt_fmt_map, %struct.cmt_fmt_map* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @save_user_format(%struct.rev_info* %68, i8* %71, i32 %74)
  br label %76

76:                                               ; preds = %10, %18, %34, %67, %46
  ret void
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @save_user_format(%struct.rev_info*, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.cmt_fmt_map* @find_commit_format(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
