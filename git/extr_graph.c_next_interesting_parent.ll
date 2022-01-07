; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_next_interesting_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_next_interesting_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.commit_list = type { i32, %struct.commit_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.git_graph*, %struct.commit_list*)* @next_interesting_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @next_interesting_parent(%struct.git_graph* %0, %struct.commit_list* %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.git_graph*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  store %struct.git_graph* %0, %struct.git_graph** %4, align 8
  store %struct.commit_list* %1, %struct.commit_list** %5, align 8
  %7 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %8 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.commit_list* null, %struct.commit_list** %3, align 8
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %16 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %15, i32 0, i32 1
  %17 = load %struct.commit_list*, %struct.commit_list** %16, align 8
  store %struct.commit_list* %17, %struct.commit_list** %6, align 8
  br label %18

18:                                               ; preds = %31, %14
  %19 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %20 = icmp ne %struct.commit_list* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %23 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %24 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @graph_is_interesting(%struct.git_graph* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %29, %struct.commit_list** %3, align 8
  br label %36

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %33 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %32, i32 0, i32 1
  %34 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  store %struct.commit_list* %34, %struct.commit_list** %6, align 8
  br label %18

35:                                               ; preds = %18
  store %struct.commit_list* null, %struct.commit_list** %3, align 8
  br label %36

36:                                               ; preds = %35, %28, %13
  %37 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  ret %struct.commit_list* %37
}

declare dso_local i64 @graph_is_interesting(%struct.git_graph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
