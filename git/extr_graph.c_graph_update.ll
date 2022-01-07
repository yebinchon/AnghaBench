; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_update.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32, i32, i64, i32, i64, %struct.commit* }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }

@GRAPH_PADDING = common dso_local global i64 0, align 8
@GRAPH_SKIP = common dso_local global i64 0, align 8
@GRAPH_PRE_COMMIT = common dso_local global i64 0, align 8
@GRAPH_COMMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @graph_update(%struct.git_graph* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %6 = load %struct.commit*, %struct.commit** %4, align 8
  %7 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %8 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %7, i32 0, i32 6
  store %struct.commit* %6, %struct.commit** %8, align 8
  %9 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %10 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %12 = call %struct.commit_list* @first_interesting_parent(%struct.git_graph* %11)
  store %struct.commit_list* %12, %struct.commit_list** %5, align 8
  br label %13

13:                                               ; preds = %21, %2
  %14 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %15 = icmp ne %struct.commit_list* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %18 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %16
  %22 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %23 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %24 = call %struct.commit_list* @next_interesting_parent(%struct.git_graph* %22, %struct.commit_list* %23)
  store %struct.commit_list* %24, %struct.commit_list** %5, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %27 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %30 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %32 = call i32 @graph_update_columns(%struct.git_graph* %31)
  %33 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %34 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %36 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GRAPH_PADDING, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i64, i64* @GRAPH_SKIP, align 8
  %42 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %43 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  br label %67

44:                                               ; preds = %25
  %45 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %46 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %47, 3
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %51 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %54 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i64, i64* @GRAPH_PRE_COMMIT, align 8
  %60 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %61 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  br label %66

62:                                               ; preds = %49, %44
  %63 = load i64, i64* @GRAPH_COMMIT, align 8
  %64 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %65 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %40
  ret void
}

declare dso_local %struct.commit_list* @first_interesting_parent(%struct.git_graph*) #1

declare dso_local %struct.commit_list* @next_interesting_parent(%struct.git_graph*, %struct.commit_list*) #1

declare dso_local i32 @graph_update_columns(%struct.git_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
