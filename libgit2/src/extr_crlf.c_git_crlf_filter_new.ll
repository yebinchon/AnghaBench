; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_crlf.c_git_crlf_filter_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_crlf.c_git_crlf_filter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crlf_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32*, i32 }

@GIT_FILTER_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"crlf eol text\00", align 1
@git_filter_free = common dso_local global i32 0, align 4
@crlf_check = common dso_local global i32 0, align 4
@crlf_apply = common dso_local global i32 0, align 4
@crlf_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @git_crlf_filter_new() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.crlf_filter*, align 8
  %3 = call %struct.crlf_filter* @git__calloc(i32 1, i32 40)
  store %struct.crlf_filter* %3, %struct.crlf_filter** %2, align 8
  %4 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %5 = icmp eq %struct.crlf_filter* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %36

7:                                                ; preds = %0
  %8 = load i32, i32* @GIT_FILTER_VERSION, align 4
  %9 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %10 = getelementptr inbounds %struct.crlf_filter, %struct.crlf_filter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  store i32 %8, i32* %11, align 8
  %12 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %13 = getelementptr inbounds %struct.crlf_filter, %struct.crlf_filter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %16 = getelementptr inbounds %struct.crlf_filter, %struct.crlf_filter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @git_filter_free, align 4
  %19 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %20 = getelementptr inbounds %struct.crlf_filter, %struct.crlf_filter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @crlf_check, align 4
  %23 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %24 = getelementptr inbounds %struct.crlf_filter, %struct.crlf_filter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @crlf_apply, align 4
  %27 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %28 = getelementptr inbounds %struct.crlf_filter, %struct.crlf_filter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @crlf_cleanup, align 4
  %31 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %32 = getelementptr inbounds %struct.crlf_filter, %struct.crlf_filter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.crlf_filter*, %struct.crlf_filter** %2, align 8
  %35 = bitcast %struct.crlf_filter* %34 to i32*
  store i32* %35, i32** %1, align 8
  br label %36

36:                                               ; preds = %7, %6
  %37 = load i32*, i32** %1, align 8
  ret i32* %37
}

declare dso_local %struct.crlf_filter* @git__calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
