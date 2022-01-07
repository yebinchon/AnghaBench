; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_next_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_next_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32 }
%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @graph_next_line(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.git_graph*, align 8
  %5 = alloca %struct.strbuf*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %6 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %7 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %33 [
    i32 131, label %9
    i32 128, label %13
    i32 129, label %17
    i32 132, label %21
    i32 130, label %25
    i32 133, label %29
  ]

9:                                                ; preds = %2
  %10 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %12 = call i32 @graph_output_padding_line(%struct.git_graph* %10, %struct.strbuf* %11)
  store i32 0, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %16 = call i32 @graph_output_skip_line(%struct.git_graph* %14, %struct.strbuf* %15)
  store i32 0, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = call i32 @graph_output_pre_commit_line(%struct.git_graph* %18, %struct.strbuf* %19)
  store i32 0, i32* %3, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = call i32 @graph_output_commit_line(%struct.git_graph* %22, %struct.strbuf* %23)
  store i32 1, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %27 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %28 = call i32 @graph_output_post_merge_line(%struct.git_graph* %26, %struct.strbuf* %27)
  store i32 0, i32* %3, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %31 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %32 = call i32 @graph_output_collapsing_line(%struct.git_graph* %30, %struct.strbuf* %31)
  store i32 0, i32* %3, align 4
  br label %35

33:                                               ; preds = %2
  %34 = call i32 @assert(i32 0)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %29, %25, %21, %17, %13, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @graph_output_padding_line(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i32 @graph_output_skip_line(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i32 @graph_output_pre_commit_line(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i32 @graph_output_commit_line(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i32 @graph_output_post_merge_line(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i32 @graph_output_collapsing_line(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
