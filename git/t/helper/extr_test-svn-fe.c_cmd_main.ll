; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-svn-fe.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-svn-fe.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"refs/notes/svn/revs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@test_svnfe_usage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @svndump_init(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %35

15:                                               ; preds = %8
  %16 = call i32 @svndump_read(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 (...) @svndump_deinit()
  %18 = call i32 (...) @svndump_reset()
  store i32 0, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @apply_delta(i32 %29, i8** %30)
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %22, %19
  %33 = load i32, i32* @test_svnfe_usage, align 4
  %34 = call i32 @usage(i32 %33)
  br label %35

35:                                               ; preds = %32, %28, %15, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @svndump_init(i8*) #1

declare dso_local i32 @svndump_read(i32*, i8*, i8*) #1

declare dso_local i32 @svndump_deinit(...) #1

declare dso_local i32 @svndump_reset(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @apply_delta(i32, i8**) #1

declare dso_local i32 @usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
