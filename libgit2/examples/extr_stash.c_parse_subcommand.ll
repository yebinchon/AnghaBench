; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_stash.c_parse_subcommand.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_stash.c_parse_subcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i32, i8** }

@.str = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@SUBCMD_APPLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@SUBCMD_LIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@SUBCMD_POP = common dso_local global i32 0, align 4
@SUBCMD_PUSH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid command %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opts*, i32, i8**)* @parse_subcommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_subcommand(%struct.opts* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.opts* %0, %struct.opts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %16

12:                                               ; preds = %3
  %13 = load i8**, i8*** %6, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %11 ], [ %15, %12 ]
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @SUBCMD_APPLY, align 4
  store i32 %22, i32* %8, align 4
  br label %47

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @SUBCMD_LIST, align 4
  store i32 %28, i32* %8, align 4
  br label %46

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @SUBCMD_POP, align 4
  store i32 %34, i32* %8, align 4
  br label %45

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @SUBCMD_PUSH, align 4
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @usage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %66

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %27
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.opts*, %struct.opts** %4, align 8
  %50 = getelementptr inbounds %struct.opts, %struct.opts* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 1
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 2
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i32 [ %55, %53 ], [ %58, %56 ]
  %61 = load %struct.opts*, %struct.opts** %4, align 8
  %62 = getelementptr inbounds %struct.opts, %struct.opts* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i8**, i8*** %6, align 8
  %64 = load %struct.opts*, %struct.opts** %4, align 8
  %65 = getelementptr inbounds %struct.opts, %struct.opts* %64, i32 0, i32 2
  store i8** %63, i8*** %65, align 8
  br label %66

66:                                               ; preds = %59, %41
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
