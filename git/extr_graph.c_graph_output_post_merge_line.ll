; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_output_post_merge_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_output_post_merge_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32, %struct.commit*, %struct.commit_list* }
%struct.commit = type { i32 }
%struct.commit_list = type { i32, %struct.commit* }
%struct.strbuf = type { i32 }
%struct.column = type { i32, %struct.commit* }

@GRAPH_PADDING = common dso_local global i32 0, align 4
@GRAPH_COLLAPSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.strbuf*)* @graph_output_post_merge_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_output_post_merge_line(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.column*, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca %struct.commit_list*, align 8
  %12 = alloca %struct.column*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %129, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %16 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %132

19:                                               ; preds = %13
  %20 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %21 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %20, i32 0, i32 3
  %22 = load %struct.commit_list*, %struct.commit_list** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %22, i64 %24
  %26 = bitcast %struct.commit_list* %25 to %struct.column*
  store %struct.column* %26, %struct.column** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %29 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %132

36:                                               ; preds = %32
  %37 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %38 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %37, i32 0, i32 2
  %39 = load %struct.commit*, %struct.commit** %38, align 8
  store %struct.commit* %39, %struct.commit** %10, align 8
  br label %44

40:                                               ; preds = %19
  %41 = load %struct.column*, %struct.column** %9, align 8
  %42 = getelementptr inbounds %struct.column, %struct.column* %41, i32 0, i32 1
  %43 = load %struct.commit*, %struct.commit** %42, align 8
  store %struct.commit* %43, %struct.commit** %10, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.commit*, %struct.commit** %10, align 8
  %46 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %47 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %46, i32 0, i32 2
  %48 = load %struct.commit*, %struct.commit** %47, align 8
  %49 = icmp eq %struct.commit* %45, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %44
  store %struct.commit_list* null, %struct.commit_list** %11, align 8
  store i32 1, i32* %5, align 4
  %51 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %52 = call %struct.commit_list* @first_interesting_parent(%struct.git_graph* %51)
  store %struct.commit_list* %52, %struct.commit_list** %11, align 8
  %53 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %54 = call i32 @assert(%struct.commit_list* %53)
  %55 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %56 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %57 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.commit_list* @find_new_column_by_commit(%struct.git_graph* %55, i32 %58)
  %60 = bitcast %struct.commit_list* %59 to %struct.column*
  store %struct.column* %60, %struct.column** %12, align 8
  %61 = load %struct.column*, %struct.column** %12, align 8
  %62 = bitcast %struct.column* %61 to %struct.commit_list*
  %63 = call i32 @assert(%struct.commit_list* %62)
  %64 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %65 = load %struct.column*, %struct.column** %12, align 8
  %66 = bitcast %struct.column* %65 to %struct.commit_list*
  %67 = call i32 @strbuf_write_column(%struct.strbuf* %64, %struct.commit_list* %66, i8 signext 124)
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %98, %50
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %73 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %79 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %80 = call %struct.commit_list* @next_interesting_parent(%struct.git_graph* %78, %struct.commit_list* %79)
  store %struct.commit_list* %80, %struct.commit_list** %11, align 8
  %81 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %82 = call i32 @assert(%struct.commit_list* %81)
  %83 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %84 = load %struct.commit_list*, %struct.commit_list** %11, align 8
  %85 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.commit_list* @find_new_column_by_commit(%struct.git_graph* %83, i32 %86)
  %88 = bitcast %struct.commit_list* %87 to %struct.column*
  store %struct.column* %88, %struct.column** %12, align 8
  %89 = load %struct.column*, %struct.column** %12, align 8
  %90 = bitcast %struct.column* %89 to %struct.commit_list*
  %91 = call i32 @assert(%struct.commit_list* %90)
  %92 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %93 = load %struct.column*, %struct.column** %12, align 8
  %94 = bitcast %struct.column* %93 to %struct.commit_list*
  %95 = call i32 @strbuf_write_column(%struct.strbuf* %92, %struct.commit_list* %94, i8 signext 92)
  %96 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %97 = call i32 @strbuf_addch(%struct.strbuf* %96, i8 signext 32)
  br label %98

98:                                               ; preds = %77
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %70

101:                                              ; preds = %70
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %102, 2
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %128

106:                                              ; preds = %44
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %111 = load %struct.column*, %struct.column** %9, align 8
  %112 = bitcast %struct.column* %111 to %struct.commit_list*
  %113 = call i32 @strbuf_write_column(%struct.strbuf* %110, %struct.commit_list* %112, i8 signext 92)
  %114 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %115 = call i32 @strbuf_addch(%struct.strbuf* %114, i8 signext 32)
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %8, align 4
  br label %127

118:                                              ; preds = %106
  %119 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %120 = load %struct.column*, %struct.column** %9, align 8
  %121 = bitcast %struct.column* %120 to %struct.commit_list*
  %122 = call i32 @strbuf_write_column(%struct.strbuf* %119, %struct.commit_list* %121, i8 signext 124)
  %123 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %124 = call i32 @strbuf_addch(%struct.strbuf* %123, i8 signext 32)
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %118, %109
  br label %128

128:                                              ; preds = %127, %101
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %13

132:                                              ; preds = %35, %13
  %133 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %134 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @graph_pad_horizontally(%struct.git_graph* %133, %struct.strbuf* %134, i32 %135)
  %137 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %138 = call i64 @graph_is_mapping_correct(%struct.git_graph* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %142 = load i32, i32* @GRAPH_PADDING, align 4
  %143 = call i32 @graph_update_state(%struct.git_graph* %141, i32 %142)
  br label %148

144:                                              ; preds = %132
  %145 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %146 = load i32, i32* @GRAPH_COLLAPSING, align 4
  %147 = call i32 @graph_update_state(%struct.git_graph* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %140
  ret void
}

declare dso_local %struct.commit_list* @first_interesting_parent(%struct.git_graph*) #1

declare dso_local i32 @assert(%struct.commit_list*) #1

declare dso_local %struct.commit_list* @find_new_column_by_commit(%struct.git_graph*, i32) #1

declare dso_local i32 @strbuf_write_column(%struct.strbuf*, %struct.commit_list*, i8 signext) #1

declare dso_local %struct.commit_list* @next_interesting_parent(%struct.git_graph*, %struct.commit_list*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @graph_pad_horizontally(%struct.git_graph*, %struct.strbuf*, i32) #1

declare dso_local i64 @graph_is_mapping_correct(%struct.git_graph*) #1

declare dso_local i32 @graph_update_state(%struct.git_graph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
