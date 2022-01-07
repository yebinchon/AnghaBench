; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_read_worktree_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_read_worktree_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository_format = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"core.bare\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @read_worktree_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_worktree_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.repository_format*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.repository_format*
  store %struct.repository_format* %10, %struct.repository_format** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @git_config_bool(i8* %15, i8* %16)
  %18 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %19 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @config_error_nonbool(i8* %28)
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %32 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @free(i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @xstrdup(i8* %35)
  %37 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %38 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %20
  br label %40

40:                                               ; preds = %39, %14
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
