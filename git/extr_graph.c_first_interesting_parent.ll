; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_first_interesting_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_first_interesting_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { i32 }
%struct.git_graph = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.commit_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.git_graph*)* @first_interesting_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @first_interesting_parent(%struct.git_graph* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.commit_list*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  %5 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %6 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  store %struct.commit_list* %9, %struct.commit_list** %4, align 8
  %10 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.commit_list* null, %struct.commit_list** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %15 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %16 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @graph_is_interesting(%struct.git_graph* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %21, %struct.commit_list** %2, align 8
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %24 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %25 = call %struct.commit_list* @next_interesting_parent(%struct.git_graph* %23, %struct.commit_list* %24)
  store %struct.commit_list* %25, %struct.commit_list** %2, align 8
  br label %26

26:                                               ; preds = %22, %20, %12
  %27 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  ret %struct.commit_list* %27
}

declare dso_local i64 @graph_is_interesting(%struct.git_graph*, i32) #1

declare dso_local %struct.commit_list* @next_interesting_parent(%struct.git_graph*, %struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
