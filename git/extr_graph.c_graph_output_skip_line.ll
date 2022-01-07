; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_output_skip_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_output_skip_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32, i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@GRAPH_PRE_COMMIT = common dso_local global i32 0, align 4
@GRAPH_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*)* @graph_output_skip_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_output_skip_line(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %6 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %9 = call i32 @graph_pad_horizontally(%struct.git_graph* %7, %struct.strbuf* %8, i32 3)
  %10 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %11 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 3
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %16 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %19 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %25 = load i32, i32* @GRAPH_PRE_COMMIT, align 4
  %26 = call i32 @graph_update_state(%struct.git_graph* %24, i32 %25)
  br label %31

27:                                               ; preds = %14, %2
  %28 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %29 = load i32, i32* @GRAPH_COMMIT, align 4
  %30 = call i32 @graph_update_state(%struct.git_graph* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @graph_pad_horizontally(%struct.git_graph*, %struct.strbuf*, i32) #1

declare dso_local i32 @graph_update_state(%struct.git_graph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
