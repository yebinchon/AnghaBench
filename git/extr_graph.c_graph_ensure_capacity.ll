; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_ensure_capacity.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_ensure_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_graph*, i32)* @graph_ensure_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_ensure_capacity(%struct.git_graph* %0, i32 %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %6 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %54

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %14 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %19 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %12, label %23

23:                                               ; preds = %17
  %24 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %25 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %28 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @REALLOC_ARRAY(i32 %26, i32 %29)
  %31 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %32 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %35 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @REALLOC_ARRAY(i32 %33, i32 %36)
  %38 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %39 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %42 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 @REALLOC_ARRAY(i32 %40, i32 %44)
  %46 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %47 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %50 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  %53 = call i32 @REALLOC_ARRAY(i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %23, %10
  ret void
}

declare dso_local i32 @REALLOC_ARRAY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
