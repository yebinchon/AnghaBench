; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_setup_line_prefix.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_setup_line_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i64 }

@default_diffopt = common dso_local global %struct.diff_options* null, align 8
@diff_output_prefix_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @graph_setup_line_prefix(%struct.diff_options* %0) #0 {
  %2 = alloca %struct.diff_options*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %2, align 8
  %3 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  store %struct.diff_options* %3, %struct.diff_options** @default_diffopt, align 8
  %4 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %5 = icmp ne %struct.diff_options* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %8 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load i64, i64* @diff_output_prefix_callback, align 8
  %13 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %14 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %11, %6, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
