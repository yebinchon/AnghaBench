; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_output_pre_commit_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_output_pre_commit_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32, i32, i64, i64, i32, %struct.column* }
%struct.column = type { i64 }
%struct.strbuf = type { i32 }

@GRAPH_POST_MERGE = common dso_local global i64 0, align 8
@GRAPH_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*)* @graph_output_pre_commit_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_output_pre_commit_line(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.column*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %10 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %11 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 3
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %17 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 2
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %5, align 4
  %21 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %22 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 0, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %27 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %25, %2
  %32 = phi i1 [ false, %2 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %128, %31
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %38 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %131

41:                                               ; preds = %35
  %42 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %43 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %42, i32 0, i32 6
  %44 = load %struct.column*, %struct.column** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.column, %struct.column* %44, i64 %46
  store %struct.column* %47, %struct.column** %9, align 8
  %48 = load %struct.column*, %struct.column** %9, align 8
  %49 = getelementptr inbounds %struct.column, %struct.column* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %52 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  %56 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %57 = load %struct.column*, %struct.column** %9, align 8
  %58 = call i32 @strbuf_write_column(%struct.strbuf* %56, %struct.column* %57, i8 signext 124)
  %59 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %60 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %61 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strbuf_addchars(%struct.strbuf* %59, i8 signext 32, i32 %62)
  %64 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %65 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 1, %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %123

70:                                               ; preds = %41
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %70
  %74 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %75 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %80 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GRAPH_POST_MERGE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %86 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %92 = load %struct.column*, %struct.column** %9, align 8
  %93 = call i32 @strbuf_write_column(%struct.strbuf* %91, %struct.column* %92, i8 signext 92)
  br label %98

94:                                               ; preds = %84, %78
  %95 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %96 = load %struct.column*, %struct.column** %9, align 8
  %97 = call i32 @strbuf_write_column(%struct.strbuf* %95, %struct.column* %96, i8 signext 124)
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %122

101:                                              ; preds = %73, %70
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %106 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %111 = load %struct.column*, %struct.column** %9, align 8
  %112 = call i32 @strbuf_write_column(%struct.strbuf* %110, %struct.column* %111, i8 signext 92)
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %121

115:                                              ; preds = %104, %101
  %116 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %117 = load %struct.column*, %struct.column** %9, align 8
  %118 = call i32 @strbuf_write_column(%struct.strbuf* %116, %struct.column* %117, i8 signext 124)
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %115, %109
  br label %122

122:                                              ; preds = %121, %98
  br label %123

123:                                              ; preds = %122, %55
  %124 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %125 = call i32 @strbuf_addch(%struct.strbuf* %124, i8 signext 32)
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %35

131:                                              ; preds = %35
  %132 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %133 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @graph_pad_horizontally(%struct.git_graph* %132, %struct.strbuf* %133, i32 %134)
  %136 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %137 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %141 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %131
  %146 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %147 = load i32, i32* @GRAPH_COMMIT, align 4
  %148 = call i32 @graph_update_state(%struct.git_graph* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %131
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strbuf_write_column(%struct.strbuf*, %struct.column*, i8 signext) #1

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @graph_pad_horizontally(%struct.git_graph*, %struct.strbuf*, i32) #1

declare dso_local i32 @graph_update_state(%struct.git_graph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
