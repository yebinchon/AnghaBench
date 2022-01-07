; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_get_current_column_color.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_get_current_column_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i16, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@column_colors_max = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.git_graph*)* @graph_get_current_column_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @graph_get_current_column_color(%struct.git_graph* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.git_graph*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  %4 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %5 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @want_color(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i16, i16* @column_colors_max, align 2
  store i16 %13, i16* %2, align 2
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %16 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  store i16 %17, i16* %2, align 2
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i16, i16* %2, align 2
  ret i16 %19
}

declare dso_local i32 @want_color(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
