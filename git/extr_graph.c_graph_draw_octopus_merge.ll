; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_draw_octopus_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_draw_octopus_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_graph = type { i32, i32, i32, i32, i32* }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_graph*, %struct.strbuf*)* @graph_draw_octopus_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_draw_octopus_merge(%struct.git_graph* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  store i32 2, i32* %5, align 4
  %11 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %12 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %16 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %19 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %23 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %28 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 2
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %65, %2
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %39 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %40 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = call i32 @strbuf_write_column(%struct.strbuf* %38, i32* %46, i8 signext 45)
  %48 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %49 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %50 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 46, i32 45
  %63 = trunc i32 %62 to i8
  %64 = call i32 @strbuf_write_column(%struct.strbuf* %48, i32* %56, i8 signext %63)
  br label %65

65:                                               ; preds = %37
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 2, %69
  ret i32 %70
}

declare dso_local i32 @strbuf_write_column(%struct.strbuf*, i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
