; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndump.c_svndump_deinit.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndump.c_svndump_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@rev_ctx = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@node_ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@input = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Input error\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Output error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svndump_deinit() #0 {
  %1 = call i32 (...) @fast_export_deinit()
  %2 = call i32 @reset_dump_ctx(i32* null)
  %3 = call i32 @reset_rev_ctx(i32 0)
  %4 = call i32 @reset_node_ctx(i32* null)
  %5 = call i32 @strbuf_release(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rev_ctx, i32 0, i32 2))
  %6 = call i32 @strbuf_release(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rev_ctx, i32 0, i32 1))
  %7 = call i32 @strbuf_release(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rev_ctx, i32 0, i32 0))
  %8 = call i32 @strbuf_release(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_ctx, i32 0, i32 1))
  %9 = call i32 @strbuf_release(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_ctx, i32 0, i32 0))
  %10 = call i64 @buffer_deinit(i32* @input)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* @stdout, align 4
  %17 = call i64 @ferror(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @fast_export_deinit(...) #1

declare dso_local i32 @reset_dump_ctx(i32*) #1

declare dso_local i32 @reset_rev_ctx(i32) #1

declare dso_local i32 @reset_node_ctx(i32*) #1

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i64 @buffer_deinit(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
