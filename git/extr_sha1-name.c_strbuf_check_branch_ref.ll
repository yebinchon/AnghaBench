; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_strbuf_check_branch_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_strbuf_check_branch_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.strbuf = type { i32 }

@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@INTERPRET_BRANCH_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/heads/HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strbuf_check_branch_ref(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @INTERPRET_BRANCH_LOCAL, align 4
  %14 = call i32 @strbuf_branchname(%struct.strbuf* %11, i8* %12, i32 %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %17)
  br label %19

19:                                               ; preds = %15, %10
  %20 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %21 = call i32 @strbuf_splice(%struct.strbuf* %20, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcmp(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %19
  store i32 -1, i32* %3, align 4
  br label %38

33:                                               ; preds = %26
  %34 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @check_refname_format(i32 %36, i32 0)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @strbuf_branchname(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i32, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @check_refname_format(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
