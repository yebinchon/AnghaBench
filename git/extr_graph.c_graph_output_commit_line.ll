; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_output_commit_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_output_commit_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32, i64, i32, %struct.commit*, %struct.column* }
%struct.commit = type { i32 }
%struct.column = type { %struct.commit* }
%struct.strbuf = type { i32 }

@GRAPH_POST_MERGE = common dso_local global i64 0, align 8
@GRAPH_PADDING = common dso_local global i64 0, align 8
@GRAPH_COLLAPSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*)* @graph_output_commit_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_output_commit_line(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.column*, align 8
  %9 = alloca %struct.commit*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %128, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %13 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %131

16:                                               ; preds = %10
  %17 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %18 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %17, i32 0, i32 5
  %19 = load %struct.column*, %struct.column** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.column, %struct.column* %19, i64 %21
  store %struct.column* %22, %struct.column** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %25 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %131

32:                                               ; preds = %28
  %33 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %34 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %33, i32 0, i32 4
  %35 = load %struct.commit*, %struct.commit** %34, align 8
  store %struct.commit* %35, %struct.commit** %9, align 8
  br label %45

36:                                               ; preds = %16
  %37 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %38 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %37, i32 0, i32 5
  %39 = load %struct.column*, %struct.column** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.column, %struct.column* %39, i64 %41
  %43 = getelementptr inbounds %struct.column, %struct.column* %42, i32 0, i32 0
  %44 = load %struct.commit*, %struct.commit** %43, align 8
  store %struct.commit* %44, %struct.commit** %9, align 8
  br label %45

45:                                               ; preds = %36, %32
  %46 = load %struct.commit*, %struct.commit** %9, align 8
  %47 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %48 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %47, i32 0, i32 4
  %49 = load %struct.commit*, %struct.commit** %48, align 8
  %50 = icmp eq %struct.commit* %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  %52 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %53 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %54 = call i32 @graph_output_commit_char(%struct.git_graph* %52, %struct.strbuf* %53)
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %58 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %63 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %64 = call i64 @graph_draw_octopus_merge(%struct.git_graph* %62, %struct.strbuf* %63)
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %61, %51
  br label %123

70:                                               ; preds = %45
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %75 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 2
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %80 = load %struct.column*, %struct.column** %8, align 8
  %81 = call i32 @strbuf_write_column(%struct.strbuf* %79, %struct.column* %80, i8 signext 92)
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %122

84:                                               ; preds = %73, %70
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %84
  %88 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %89 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %94 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @GRAPH_POST_MERGE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %100 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %106 = load %struct.column*, %struct.column** %8, align 8
  %107 = call i32 @strbuf_write_column(%struct.strbuf* %105, %struct.column* %106, i8 signext 92)
  br label %112

108:                                              ; preds = %98, %92
  %109 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %110 = load %struct.column*, %struct.column** %8, align 8
  %111 = call i32 @strbuf_write_column(%struct.strbuf* %109, %struct.column* %110, i8 signext 124)
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %121

115:                                              ; preds = %87, %84
  %116 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %117 = load %struct.column*, %struct.column** %8, align 8
  %118 = call i32 @strbuf_write_column(%struct.strbuf* %116, %struct.column* %117, i8 signext 124)
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %115, %112
  br label %122

122:                                              ; preds = %121, %78
  br label %123

123:                                              ; preds = %122, %69
  %124 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %125 = call i32 @strbuf_addch(%struct.strbuf* %124, i8 signext 32)
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %10

131:                                              ; preds = %31, %10
  %132 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %133 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @graph_pad_horizontally(%struct.git_graph* %132, %struct.strbuf* %133, i32 %134)
  %136 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %137 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %144

140:                                              ; preds = %131
  %141 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %142 = load i64, i64* @GRAPH_POST_MERGE, align 8
  %143 = call i32 @graph_update_state(%struct.git_graph* %141, i64 %142)
  br label %157

144:                                              ; preds = %131
  %145 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %146 = call i64 @graph_is_mapping_correct(%struct.git_graph* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %150 = load i64, i64* @GRAPH_PADDING, align 8
  %151 = call i32 @graph_update_state(%struct.git_graph* %149, i64 %150)
  br label %156

152:                                              ; preds = %144
  %153 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %154 = load i64, i64* @GRAPH_COLLAPSING, align 8
  %155 = call i32 @graph_update_state(%struct.git_graph* %153, i64 %154)
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %140
  ret void
}

declare dso_local i32 @graph_output_commit_char(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i64 @graph_draw_octopus_merge(%struct.git_graph*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_write_column(%struct.strbuf*, %struct.column*, i8 signext) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @graph_pad_horizontally(%struct.git_graph*, %struct.strbuf*, i32) #1

declare dso_local i32 @graph_update_state(%struct.git_graph*, i64) #1

declare dso_local i64 @graph_is_mapping_correct(%struct.git_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
