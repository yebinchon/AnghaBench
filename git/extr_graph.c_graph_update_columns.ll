; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_update_columns.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_update_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32, i32, i32, i32*, i32, %struct.commit*, %struct.TYPE_2__*, i32 }
%struct.commit = type { i32 }
%struct.TYPE_2__ = type { %struct.commit* }
%struct.commit_list = type { %struct.commit* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*)* @graph_update_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_update_columns(%struct.git_graph* %0) #0 {
  %2 = alloca %struct.git_graph*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit*, align 8
  %10 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %2, align 8
  %11 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %12 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %11, i32 0, i32 7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %15 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @SWAP(%struct.TYPE_2__* %13, i32 %16)
  %18 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %19 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %22 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %24 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %26 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %29 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %4, align 4
  %32 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @graph_ensure_capacity(%struct.git_graph* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 2, %35
  %37 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %38 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %52, %1
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %42 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %47 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 -1, i32* %51, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %39

55:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %135, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %59 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %138

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %65 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %138

72:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  %73 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %74 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %73, i32 0, i32 6
  %75 = load %struct.commit*, %struct.commit** %74, align 8
  store %struct.commit* %75, %struct.commit** %9, align 8
  br label %85

76:                                               ; preds = %62
  %77 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %78 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %77, i32 0, i32 7
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.commit*, %struct.commit** %83, align 8
  store %struct.commit* %84, %struct.commit** %9, align 8
  br label %85

85:                                               ; preds = %76, %72
  %86 = load %struct.commit*, %struct.commit** %9, align 8
  %87 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %88 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %87, i32 0, i32 6
  %89 = load %struct.commit*, %struct.commit** %88, align 8
  %90 = icmp eq %struct.commit* %86, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %85
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %10, align 4
  store i32 1, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %95 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %97 = call %struct.commit_list* @first_interesting_parent(%struct.git_graph* %96)
  store %struct.commit_list* %97, %struct.commit_list** %3, align 8
  br label %98

98:                                               ; preds = %118, %91
  %99 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %100 = icmp ne %struct.commit_list* %99, null
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %103 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %111 = call i32 @graph_increment_column_color(%struct.git_graph* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %114 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %115 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %114, i32 0, i32 0
  %116 = load %struct.commit*, %struct.commit** %115, align 8
  %117 = call i32 @graph_insert_into_new_columns(%struct.git_graph* %113, %struct.commit* %116, i32* %5)
  br label %118

118:                                              ; preds = %112
  %119 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %120 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %121 = call %struct.commit_list* @next_interesting_parent(%struct.git_graph* %119, %struct.commit_list* %120)
  store %struct.commit_list* %121, %struct.commit_list** %3, align 8
  br label %98

122:                                              ; preds = %98
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %122
  br label %134

130:                                              ; preds = %85
  %131 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %132 = load %struct.commit*, %struct.commit** %9, align 8
  %133 = call i32 @graph_insert_into_new_columns(%struct.git_graph* %131, %struct.commit* %132, i32* %5)
  br label %134

134:                                              ; preds = %130, %129
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %56

138:                                              ; preds = %71, %56
  br label %139

139:                                              ; preds = %158, %138
  %140 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %141 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %146 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %149 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %154, 0
  br label %156

156:                                              ; preds = %144, %139
  %157 = phi i1 [ false, %139 ], [ %155, %144 ]
  br i1 %157, label %158, label %163

158:                                              ; preds = %156
  %159 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %160 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %160, align 4
  br label %139

163:                                              ; preds = %156
  %164 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @graph_update_width(%struct.git_graph* %164, i32 %165)
  ret void
}

declare dso_local i32 @SWAP(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @graph_ensure_capacity(%struct.git_graph*, i32) #1

declare dso_local %struct.commit_list* @first_interesting_parent(%struct.git_graph*) #1

declare dso_local i32 @graph_increment_column_color(%struct.git_graph*) #1

declare dso_local i32 @graph_insert_into_new_columns(%struct.git_graph*, %struct.commit*, i32*) #1

declare dso_local %struct.commit_list* @next_interesting_parent(%struct.git_graph*, %struct.commit_list*) #1

declare dso_local i32 @graph_update_width(%struct.git_graph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
