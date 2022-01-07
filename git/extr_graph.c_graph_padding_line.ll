; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_padding_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_padding_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i64, i32, i64, i32, i32, %struct.column* }
%struct.column = type { i64 }
%struct.strbuf = type { i32 }

@GRAPH_COMMIT = common dso_local global i64 0, align 8
@GRAPH_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*)* @graph_padding_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_padding_line(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.column*, align 8
  %8 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %10 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GRAPH_COMMIT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = call i32 @graph_next_line(%struct.git_graph* %15, %struct.strbuf* %16)
  br label %78

18:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %67, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %22 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %19
  %26 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %27 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %26, i32 0, i32 5
  %28 = load %struct.column*, %struct.column** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.column, %struct.column* %28, i64 %30
  store %struct.column* %31, %struct.column** %7, align 8
  %32 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %33 = load %struct.column*, %struct.column** %7, align 8
  %34 = call i32 @strbuf_write_column(%struct.strbuf* %32, %struct.column* %33, i8 signext 124)
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load %struct.column*, %struct.column** %7, align 8
  %38 = getelementptr inbounds %struct.column, %struct.column* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %41 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %25
  %45 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %46 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %51 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 2
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %8, align 4
  %55 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @strbuf_addchars(%struct.strbuf* %55, i8 signext 32, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %66

61:                                               ; preds = %44, %25
  %62 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %63 = call i32 @strbuf_addch(%struct.strbuf* %62, i8 signext 32)
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %19

70:                                               ; preds = %19
  %71 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %72 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @graph_pad_horizontally(%struct.git_graph* %71, %struct.strbuf* %72, i32 %73)
  %75 = load i32, i32* @GRAPH_PADDING, align 4
  %76 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %77 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %14
  ret void
}

declare dso_local i32 @graph_next_line(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_write_column(%struct.strbuf*, %struct.column*, i8 signext) #1

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @graph_pad_horizontally(%struct.git_graph*, %struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
