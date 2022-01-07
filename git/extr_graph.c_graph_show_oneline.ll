; ModuleID = '/home/carl/AnghaBench/git/extr_graph.c_graph_show_oneline.c'
source_filename = "/home/carl/AnghaBench/git/extr_graph.c_graph_show_oneline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.git_graph = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@default_diffopt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @graph_show_oneline(%struct.git_graph* %0) #0 {
  %2 = alloca %struct.git_graph*, align 8
  %3 = alloca %struct.strbuf, align 4
  store %struct.git_graph* %0, %struct.git_graph** %2, align 8
  %4 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %5 = load i32, i32* @default_diffopt, align 4
  %6 = call i32 @graph_show_line_prefix(i32 %5)
  %7 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %8 = icmp ne %struct.git_graph* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %12 = call i32 @graph_next_line(%struct.git_graph* %11, %struct.strbuf* %3)
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.git_graph*, %struct.git_graph** %2, align 8
  %18 = getelementptr inbounds %struct.git_graph, %struct.git_graph* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fwrite(i32 %14, i32 1, i32 %16, i32 %22)
  %24 = call i32 @strbuf_release(%struct.strbuf* %3)
  br label %25

25:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @graph_show_line_prefix(i32) #2

declare dso_local i32 @graph_next_line(%struct.git_graph*, %struct.strbuf*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
