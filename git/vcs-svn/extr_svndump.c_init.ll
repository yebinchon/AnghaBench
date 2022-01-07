; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndump.c_init.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndump.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@dump_ctx = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@rev_ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@node_ctx = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @fast_export_init(i32 %3)
  %5 = call i32 @strbuf_init(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dump_ctx, i32 0, i32 1), i32 4096)
  %6 = call i32 @strbuf_init(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dump_ctx, i32 0, i32 0), i32 4096)
  %7 = call i32 @strbuf_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rev_ctx, i32 0, i32 2), i32 4096)
  %8 = call i32 @strbuf_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rev_ctx, i32 0, i32 1), i32 4096)
  %9 = call i32 @strbuf_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rev_ctx, i32 0, i32 0), i32 4096)
  %10 = call i32 @strbuf_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @node_ctx, i32 0, i32 1), i32 4096)
  %11 = call i32 @strbuf_init(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @node_ctx, i32 0, i32 0), i32 4096)
  %12 = call i32 @reset_dump_ctx(i32* null)
  %13 = call i32 @reset_rev_ctx(i32 0)
  %14 = call i32 @reset_node_ctx(i32* null)
  ret void
}

declare dso_local i32 @fast_export_init(i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @reset_dump_ctx(i32*) #1

declare dso_local i32 @reset_rev_ctx(i32) #1

declare dso_local i32 @reset_node_ctx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
