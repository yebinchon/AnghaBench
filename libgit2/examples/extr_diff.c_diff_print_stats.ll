; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_diff.c_diff_print_stats.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_diff.c_diff_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"generating stats for diff\00", align 1
@OUTPUT_STAT = common dso_local global i32 0, align 4
@GIT_DIFF_STATS_FULL = common dso_local global i32 0, align 4
@OUTPUT_SHORTSTAT = common dso_local global i32 0, align 4
@GIT_DIFF_STATS_SHORT = common dso_local global i32 0, align 4
@OUTPUT_NUMSTAT = common dso_local global i32 0, align 4
@GIT_DIFF_STATS_NUMBER = common dso_local global i32 0, align 4
@OUTPUT_SUMMARY = common dso_local global i32 0, align 4
@GIT_DIFF_STATS_INCLUDE_SUMMARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"formatting stats\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.opts*)* @diff_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_print_stats(i32* %0, %struct.opts* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.opts* %1, %struct.opts** %4, align 8
  %8 = call i32 @GIT_BUF_INIT_CONST(i32* null, i32 0)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @git_diff_get_stats(i32** %5, i32* %10)
  %12 = call i32 @check_lg2(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* null)
  %13 = load %struct.opts*, %struct.opts** %4, align 8
  %14 = getelementptr inbounds %struct.opts, %struct.opts* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OUTPUT_STAT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @GIT_DIFF_STATS_FULL, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.opts*, %struct.opts** %4, align 8
  %25 = getelementptr inbounds %struct.opts, %struct.opts* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OUTPUT_SHORTSTAT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @GIT_DIFF_STATS_SHORT, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.opts*, %struct.opts** %4, align 8
  %36 = getelementptr inbounds %struct.opts, %struct.opts* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OUTPUT_NUMSTAT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @GIT_DIFF_STATS_NUMBER, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.opts*, %struct.opts** %4, align 8
  %47 = getelementptr inbounds %struct.opts, %struct.opts* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OUTPUT_SUMMARY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @GIT_DIFF_STATS_INCLUDE_SUMMARY, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @git_diff_stats_to_buf(%struct.TYPE_5__* %6, i32* %57, i32 %58, i32 80)
  %60 = call i32 @check_lg2(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fputs(i32 %62, i32 %63)
  %65 = call i32 @git_buf_dispose(%struct.TYPE_5__* %6)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @git_diff_stats_free(i32* %66)
  ret void
}

declare dso_local i32 @GIT_BUF_INIT_CONST(i32*, i32) #1

declare dso_local i32 @check_lg2(i32, i8*, i32*) #1

declare dso_local i32 @git_diff_get_stats(i32**, i32*) #1

declare dso_local i32 @git_diff_stats_to_buf(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #1

declare dso_local i32 @git_diff_stats_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
