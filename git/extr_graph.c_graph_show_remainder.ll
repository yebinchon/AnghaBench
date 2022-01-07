; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_show_remainder.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_show_remainder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.git_graph = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@default_diffopt = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @graph_show_remainder(%struct.git_graph* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.git_graph*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %3, align 8
  %6 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @default_diffopt, align 8
  %8 = call i32 @graph_show_line_prefix(%struct.TYPE_5__* %7)
  %9 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %10 = icmp ne %struct.git_graph* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %14 = call i64 @graph_is_commit_finished(%struct.git_graph* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %54

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %50, %17
  %19 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %20 = call i32 @graph_next_line(%struct.git_graph* %19, %struct.strbuf* %4)
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %26 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fwrite(i32 %22, i32 1, i32 %24, i32 %30)
  %32 = call i32 @strbuf_setlen(%struct.strbuf* %4, i32 0)
  store i32 1, i32* %5, align 4
  %33 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %34 = call i64 @graph_is_commit_finished(%struct.git_graph* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %18
  %37 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %38 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @putc(i8 signext 10, i32 %42)
  %44 = load %struct.git_graph*, %struct.git_graph** %3, align 8
  %45 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @graph_show_line_prefix(%struct.TYPE_5__* %47)
  br label %50

49:                                               ; preds = %18
  br label %51

50:                                               ; preds = %36
  br label %18

51:                                               ; preds = %49
  %52 = call i32 @strbuf_release(%struct.strbuf* %4)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %16, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @graph_show_line_prefix(%struct.TYPE_5__*) #2

declare dso_local i64 @graph_is_commit_finished(%struct.git_graph*) #2

declare dso_local i32 @graph_next_line(%struct.git_graph*, %struct.strbuf*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @putc(i8 signext, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
