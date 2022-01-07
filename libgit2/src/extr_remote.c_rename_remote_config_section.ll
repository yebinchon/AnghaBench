; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_rename_remote_config_section.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_rename_remote_config_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"remote.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @rename_remote_config_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rename_remote_config_section(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @git_buf_printf(i32* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %35

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @git_buf_printf(i32* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %35

24:                                               ; preds = %19, %16
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @git_buf_cstr(i32* %7)
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32* @git_buf_cstr(i32* %8)
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32* [ %30, %29 ], [ null, %31 ]
  %34 = call i32 @git_config_rename_section(i32* %25, i32* %26, i32* %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %23, %15
  %36 = call i32 @git_buf_dispose(i32* %7)
  %37 = call i32 @git_buf_dispose(i32* %8)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i64 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_rename_section(i32*, i32*, i32*) #1

declare dso_local i32* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
