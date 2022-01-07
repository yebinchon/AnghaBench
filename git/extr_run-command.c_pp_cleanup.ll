; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_pp_cleanup.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_pp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parallel_processes = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"run_processes_parallel: done\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parallel_processes*)* @pp_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cleanup(%struct.parallel_processes* %0) #0 {
  %2 = alloca %struct.parallel_processes*, align 8
  %3 = alloca i32, align 4
  store %struct.parallel_processes* %0, %struct.parallel_processes** %2, align 8
  %4 = call i32 @trace_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %8 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %13 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @strbuf_release(i32* %18)
  %20 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %21 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @child_process_clear(i32* %26)
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %5

31:                                               ; preds = %5
  %32 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %33 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @free(%struct.TYPE_2__* %34)
  %36 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %37 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @free(%struct.TYPE_2__* %38)
  %40 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %41 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %40, i32 0, i32 1
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @strbuf_write(i32* %41, i32 %42)
  %44 = load %struct.parallel_processes*, %struct.parallel_processes** %2, align 8
  %45 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %44, i32 0, i32 1
  %46 = call i32 @strbuf_release(i32* %45)
  %47 = call i32 (...) @sigchain_pop_common()
  ret void
}

declare dso_local i32 @trace_printf(i8*) #1

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i32 @child_process_clear(i32*) #1

declare dso_local i32 @free(%struct.TYPE_2__*) #1

declare dso_local i32 @strbuf_write(i32*, i32) #1

declare dso_local i32 @sigchain_pop_common(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
