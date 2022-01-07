; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_output_padding_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_output_padding_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32*, i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*)* @graph_output_padding_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_output_padding_line(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %6 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %7 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %40

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %15 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %21 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @strbuf_write_column(%struct.strbuf* %19, i32* %25, i8 signext 124)
  %27 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %28 = call i32 @strbuf_addch(%struct.strbuf* %27, i8 signext 32)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %35 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %36 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 2
  %39 = call i32 @graph_pad_horizontally(%struct.git_graph* %33, %struct.strbuf* %34, i32 %38)
  br label %40

40:                                               ; preds = %32, %10
  ret void
}

declare dso_local i32 @strbuf_write_column(%struct.strbuf*, i32*, i8 signext) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @graph_pad_horizontally(%struct.git_graph*, %struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
