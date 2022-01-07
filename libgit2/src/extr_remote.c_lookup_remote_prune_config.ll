; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_lookup_remote_prune_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_lookup_remote_prune_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"remote.%s.prune\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fetch.prune\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*)* @lookup_remote_prune_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_remote_prune_config(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @git_buf_printf(i32* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @git_buf_cstr(i32* %7)
  %16 = call i32 @git_config_get_bool(i32* %13, i32* %14, i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GIT_ENOTFOUND, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = call i32 (...) @git_error_clear()
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @git_config_get_bool(i32* %25, i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GIT_ENOTFOUND, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (...) @git_error_clear()
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %18
  br label %38

38:                                               ; preds = %37, %3
  %39 = call i32 @git_buf_dispose(i32* %7)
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_get_bool(i32*, i32*, i8*) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
