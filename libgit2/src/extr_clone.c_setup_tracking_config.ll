; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_clone.c_setup_tracking_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_clone.c_setup_tracking_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"branch.%s.remote\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"branch.%s.merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*)* @setup_tracking_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_tracking_config(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %15, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @git_repository_config__weakptr(i32** %10, i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %49

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @git_buf_printf(i32* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %45

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @git_buf_printf(i32* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @git_buf_cstr(i32* %11)
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @git_config_set_string(i32* %31, i32 %32, i8* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %45

37:                                               ; preds = %30
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @git_buf_cstr(i32* %12)
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @git_config_set_string(i32* %38, i32 %39, i8* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %45

44:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %43, %36, %29, %24
  %46 = call i32 @git_buf_dispose(i32* %11)
  %47 = call i32 @git_buf_dispose(i32* %12)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @git_repository_config__weakptr(i32**, i32*) #1

declare dso_local i64 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i64 @git_config_set_string(i32*, i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
