; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_next_reflog_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_next_reflog_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.reflog_walk_info = type { i64, %struct.commit_reflog*, %struct.commit_reflog** }
%struct.commit_reflog = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @next_reflog_entry(%struct.reflog_walk_info* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.reflog_walk_info*, align 8
  %4 = alloca %struct.commit_reflog*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.commit_reflog*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.reflog_walk_info* %0, %struct.reflog_walk_info** %3, align 8
  store %struct.commit_reflog* null, %struct.commit_reflog** %4, align 8
  store %struct.commit* null, %struct.commit** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %3, align 8
  %12 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %9
  %16 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %3, align 8
  %17 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %16, i32 0, i32 2
  %18 = load %struct.commit_reflog**, %struct.commit_reflog*** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.commit_reflog*, %struct.commit_reflog** %18, i64 %19
  %21 = load %struct.commit_reflog*, %struct.commit_reflog** %20, align 8
  store %struct.commit_reflog* %21, %struct.commit_reflog** %7, align 8
  %22 = load %struct.commit_reflog*, %struct.commit_reflog** %7, align 8
  %23 = call %struct.commit* @next_reflog_commit(%struct.commit_reflog* %22)
  store %struct.commit* %23, %struct.commit** %8, align 8
  %24 = load %struct.commit*, %struct.commit** %8, align 8
  %25 = icmp ne %struct.commit* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %40

27:                                               ; preds = %15
  %28 = load %struct.commit_reflog*, %struct.commit_reflog** %4, align 8
  %29 = icmp ne %struct.commit_reflog* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.commit_reflog*, %struct.commit_reflog** %7, align 8
  %32 = call i64 @log_timestamp(%struct.commit_reflog* %31)
  %33 = load %struct.commit_reflog*, %struct.commit_reflog** %4, align 8
  %34 = call i64 @log_timestamp(%struct.commit_reflog* %33)
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %27
  %37 = load %struct.commit_reflog*, %struct.commit_reflog** %7, align 8
  store %struct.commit_reflog* %37, %struct.commit_reflog** %4, align 8
  %38 = load %struct.commit*, %struct.commit** %8, align 8
  store %struct.commit* %38, %struct.commit** %5, align 8
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %9

43:                                               ; preds = %9
  %44 = load %struct.commit_reflog*, %struct.commit_reflog** %4, align 8
  %45 = icmp ne %struct.commit_reflog* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.commit_reflog*, %struct.commit_reflog** %4, align 8
  %48 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.commit_reflog*, %struct.commit_reflog** %4, align 8
  %52 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %3, align 8
  %53 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %52, i32 0, i32 1
  store %struct.commit_reflog* %51, %struct.commit_reflog** %53, align 8
  %54 = load %struct.commit*, %struct.commit** %5, align 8
  store %struct.commit* %54, %struct.commit** %2, align 8
  br label %56

55:                                               ; preds = %43
  store %struct.commit* null, %struct.commit** %2, align 8
  br label %56

56:                                               ; preds = %55, %46
  %57 = load %struct.commit*, %struct.commit** %2, align 8
  ret %struct.commit* %57
}

declare dso_local %struct.commit* @next_reflog_commit(%struct.commit_reflog*) #1

declare dso_local i64 @log_timestamp(%struct.commit_reflog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
