; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_show_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_show_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.git_graph = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@default_diffopt = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @graph_show_commit(%struct.git_graph* %0) #0 {
  %2 = alloca %struct.git_graph*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i32, align 4
  store %struct.git_graph* %0, %struct.git_graph** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @default_diffopt, align 8
  %7 = call i32 @graph_show_line_prefix(%struct.TYPE_5__* %6)
  %8 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %9 = icmp ne %struct.git_graph* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %13 = call i64 @graph_is_commit_finished(%struct.git_graph* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %17 = call i32 @graph_show_padding(%struct.git_graph* %16)
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %11
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %24 = call i64 @graph_is_commit_finished(%struct.git_graph* %23)
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %60

29:                                               ; preds = %27
  %30 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %31 = call i32 @graph_next_line(%struct.git_graph* %30, %struct.strbuf* %3)
  store i32 %31, i32* %4, align 4
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %37 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fwrite(i32 %33, i32 1, i32 %35, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %29
  %46 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %47 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @putc(i8 signext 10, i32 %51)
  %53 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %54 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @graph_show_line_prefix(%struct.TYPE_5__* %56)
  br label %58

58:                                               ; preds = %45, %29
  %59 = call i32 @strbuf_setlen(%struct.strbuf* %3, i32 0)
  br label %19

60:                                               ; preds = %27
  %61 = call i32 @strbuf_release(%struct.strbuf* %3)
  br label %62

62:                                               ; preds = %60, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @graph_show_line_prefix(%struct.TYPE_5__*) #2

declare dso_local i64 @graph_is_commit_finished(%struct.git_graph*) #2

declare dso_local i32 @graph_show_padding(%struct.git_graph*) #2

declare dso_local i32 @graph_next_line(%struct.git_graph*, %struct.strbuf*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32) #2

declare dso_local i32 @putc(i8 signext, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
