; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_insert_into_new_columns.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_insert_into_new_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.commit* }
%struct.commit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, %struct.commit*, i32*)* @graph_insert_into_new_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_insert_into_new_columns(%struct.git_graph* %0, %struct.commit* %1, i32* %2) #0 {
  %4 = alloca %struct.git_graph*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %38, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %11 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %16 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.commit*, %struct.commit** %21, align 8
  %23 = load %struct.commit*, %struct.commit** %5, align 8
  %24 = icmp eq %struct.commit* %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %28 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %26, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %34, align 4
  br label %81

37:                                               ; preds = %14
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load %struct.commit*, %struct.commit** %5, align 8
  %43 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %44 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %47 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.commit* %42, %struct.commit** %51, align 8
  %52 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %53 = load %struct.commit*, %struct.commit** %5, align 8
  %54 = call i32 @graph_find_commit_color(%struct.git_graph* %52, %struct.commit* %53)
  %55 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %56 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %59 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %54, i32* %63, align 8
  %64 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %65 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %68 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %66, i32* %73, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %74, align 4
  %77 = load %struct.git_graph*, %struct.git_graph** %4, align 8
  %78 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %41, %25
  ret void
}

declare dso_local i32 @graph_find_commit_color(%struct.git_graph*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
