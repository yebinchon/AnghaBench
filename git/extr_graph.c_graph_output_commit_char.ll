; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_output_commit_char.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_output_commit_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.strbuf = type { i32 }

@BOUNDARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*)* @graph_output_commit_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_output_commit_char(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %6 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BOUNDARY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %16 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %22 = call i32 @strbuf_addch(%struct.strbuf* %21, i8 signext 111)
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %25 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %26 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %29 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @get_revision_mark(%struct.TYPE_5__* %27, %struct.TYPE_6__* %30)
  %32 = call i32 @strbuf_addstr(%struct.strbuf* %24, i32 %31)
  br label %33

33:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @get_revision_mark(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
