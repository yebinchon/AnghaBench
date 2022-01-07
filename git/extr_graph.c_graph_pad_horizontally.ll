; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_pad_horizontally.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_pad_horizontally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*, i32)* @graph_pad_horizontally to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_pad_horizontally(%struct.git_graph* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.git_graph*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %9 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %14 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %15 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @strbuf_addchars(%struct.strbuf* %13, i8 signext 32, i32 %18)
  br label %20

20:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
