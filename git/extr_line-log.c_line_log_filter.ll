; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_line_log_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_line_log_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.commit_list* }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { i32 }

@line_log_rewrite_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_log_filter(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list**, align 8
  %7 = alloca %struct.commit_list*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  %8 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %9 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %8, i32 0, i32 0
  %10 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  store %struct.commit_list* %10, %struct.commit_list** %4, align 8
  store %struct.commit_list* null, %struct.commit_list** %5, align 8
  store %struct.commit_list** %5, %struct.commit_list*** %6, align 8
  br label %11

11:                                               ; preds = %29, %1
  %12 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %13 = icmp ne %struct.commit_list* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  store %struct.commit_list* null, %struct.commit_list** %7, align 8
  %15 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %16 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %15, i32 0, i32 0
  %17 = load %struct.commit*, %struct.commit** %16, align 8
  store %struct.commit* %17, %struct.commit** %3, align 8
  %18 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %19 = load %struct.commit*, %struct.commit** %3, align 8
  %20 = call i64 @process_ranges_arbitrary_commit(%struct.rev_info* %18, %struct.commit* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %24 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  store %struct.commit_list* %23, %struct.commit_list** %24, align 8
  %25 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %26 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %25, i32 0, i32 1
  store %struct.commit_list** %26, %struct.commit_list*** %6, align 8
  br label %29

27:                                               ; preds = %14
  %28 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %28, %struct.commit_list** %7, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %31 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %30, i32 0, i32 1
  %32 = load %struct.commit_list*, %struct.commit_list** %31, align 8
  store %struct.commit_list* %32, %struct.commit_list** %4, align 8
  %33 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %34 = call i32 @free(%struct.commit_list* %33)
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  store %struct.commit_list* null, %struct.commit_list** %36, align 8
  %37 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %37, %struct.commit_list** %4, align 8
  br label %38

38:                                               ; preds = %48, %35
  %39 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %40 = icmp ne %struct.commit_list* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %43 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %44 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %43, i32 0, i32 0
  %45 = load %struct.commit*, %struct.commit** %44, align 8
  %46 = load i32, i32* @line_log_rewrite_one, align 4
  %47 = call i32 @rewrite_parents(%struct.rev_info* %42, %struct.commit* %45, i32 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %50 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %49, i32 0, i32 1
  %51 = load %struct.commit_list*, %struct.commit_list** %50, align 8
  store %struct.commit_list* %51, %struct.commit_list** %4, align 8
  br label %38

52:                                               ; preds = %38
  %53 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %54 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %55 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %54, i32 0, i32 0
  store %struct.commit_list* %53, %struct.commit_list** %55, align 8
  ret i32 0
}

declare dso_local i64 @process_ranges_arbitrary_commit(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @free(%struct.commit_list*) #1

declare dso_local i32 @rewrite_parents(%struct.rev_info*, %struct.commit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
