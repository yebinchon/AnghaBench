; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_same_paths_in_pathspec_and_range.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_same_paths_in_pathspec_and_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.line_log_data = type { i32, %struct.line_log_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec*, %struct.line_log_data*)* @same_paths_in_pathspec_and_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_paths_in_pathspec_and_range(%struct.pathspec* %0, %struct.line_log_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pathspec*, align 8
  %5 = alloca %struct.line_log_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line_log_data*, align 8
  store %struct.pathspec* %0, %struct.pathspec** %4, align 8
  store %struct.line_log_data* %1, %struct.line_log_data** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  store %struct.line_log_data* %8, %struct.line_log_data** %7, align 8
  br label %9

9:                                                ; preds = %36, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %12 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %17 = icmp ne %struct.line_log_data* %16, null
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i1 [ false, %9 ], [ %17, %15 ]
  br i1 %19, label %20, label %42

20:                                               ; preds = %18
  %21 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %22 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %30 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @strcmp(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %53

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %40 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %39, i32 0, i32 1
  %41 = load %struct.line_log_data*, %struct.line_log_data** %40, align 8
  store %struct.line_log_data* %41, %struct.line_log_data** %7, align 8
  br label %9

42:                                               ; preds = %18
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %45 = getelementptr inbounds %struct.pathspec, %struct.pathspec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load %struct.line_log_data*, %struct.line_log_data** %7, align 8
  %50 = icmp ne %struct.line_log_data* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %42
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %34
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
