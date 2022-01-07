; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_remote.c_parse_subcmd.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_remote.c_parse_subcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i32, i8** }

@.str = private unnamed_addr constant [21 x i8] c"no command specified\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@subcmd_add = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@subcmd_remove = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@subcmd_rename = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"set-url\00", align 1
@subcmd_seturl = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@subcmd_show = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"command is not valid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opts*, i32, i8**)* @parse_subcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_subcmd(%struct.opts* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.opts* %0, %struct.opts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* null)
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @subcmd_add, align 4
  store i32 %21, i32* %8, align 4
  br label %53

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @subcmd_remove, align 4
  store i32 %27, i32* %8, align 4
  br label %52

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @subcmd_rename, align 4
  store i32 %33, i32* %8, align 4
  br label %51

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @subcmd_seturl, align 4
  store i32 %39, i32* %8, align 4
  br label %50

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @subcmd_show, align 4
  store i32 %45, i32* %8, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %32
  br label %52

52:                                               ; preds = %51, %26
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.opts*, %struct.opts** %4, align 8
  %56 = getelementptr inbounds %struct.opts, %struct.opts* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 2
  %59 = load %struct.opts*, %struct.opts** %4, align 8
  %60 = getelementptr inbounds %struct.opts, %struct.opts* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i8**, i8*** %6, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load %struct.opts*, %struct.opts** %4, align 8
  %64 = getelementptr inbounds %struct.opts, %struct.opts* %63, i32 0, i32 2
  store i8** %62, i8*** %64, align 8
  ret void
}

declare dso_local i32 @usage(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
