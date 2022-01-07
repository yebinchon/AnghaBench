; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_process_ranges_arbitrary_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_process_ranges_arbitrary_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.line_log_data = type { i32 }

@TREESAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit*)* @process_ranges_arbitrary_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ranges_arbitrary_commit(%struct.rev_info* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.line_log_data*, align 8
  %6 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %8 = load %struct.commit*, %struct.commit** %4, align 8
  %9 = call %struct.line_log_data* @lookup_line_range(%struct.rev_info* %7, %struct.commit* %8)
  store %struct.line_log_data* %9, %struct.line_log_data** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %11 = icmp ne %struct.line_log_data* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.commit*, %struct.commit** %4, align 8
  %14 = getelementptr inbounds %struct.commit, %struct.commit* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.commit*, %struct.commit** %4, align 8
  %19 = getelementptr inbounds %struct.commit, %struct.commit* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %26 = load %struct.commit*, %struct.commit** %4, align 8
  %27 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %28 = call i32 @process_ranges_ordinary_commit(%struct.rev_info* %25, %struct.commit* %26, %struct.line_log_data* %27)
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %17
  %30 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %31 = load %struct.commit*, %struct.commit** %4, align 8
  %32 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %33 = call i32 @process_ranges_merge_commit(%struct.rev_info* %30, %struct.commit* %31, %struct.line_log_data* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @TREESAME, align 4
  %40 = load %struct.commit*, %struct.commit** %4, align 8
  %41 = getelementptr inbounds %struct.commit, %struct.commit* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.line_log_data* @lookup_line_range(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @process_ranges_ordinary_commit(%struct.rev_info*, %struct.commit*, %struct.line_log_data*) #1

declare dso_local i32 @process_ranges_merge_commit(%struct.rev_info*, %struct.commit*, %struct.line_log_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
