; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_pp_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_pp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parallel_processes = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, i64, i64, i64, i64, i64, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"run_processes_parallel: preparing to run up to %d tasks\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"you need to specify a get_next_task function\00", align 1
@default_start_failure = common dso_local global i64 0, align 8
@default_task_finished = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@pp_for_signal = common dso_local global %struct.parallel_processes* null, align 8
@handle_children_on_signal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parallel_processes*, i32, i64, i64, i64, i8*)* @pp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_init(%struct.parallel_processes* %0, i32 %1, i64 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.parallel_processes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.parallel_processes* %0, %struct.parallel_processes** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = call i32 (...) @online_cpus()
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %16, %6
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %21 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @trace_printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %26 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = call i32 @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %34 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %33, i32 0, i32 9
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  br label %41

39:                                               ; preds = %31
  %40 = load i64, i64* @default_start_failure, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %44 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %43, i32 0, i32 8
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* %11, align 8
  br label %51

49:                                               ; preds = %41
  %50 = load i64, i64* @default_task_finished, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %54 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %53, i32 0, i32 7
  store i64 %52, i64* %54, align 8
  %55 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %56 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %58 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %60 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @xcalloc(i32 %61, i32 8)
  %63 = bitcast i8* %62 to %struct.TYPE_3__*
  %64 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %65 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %64, i32 0, i32 2
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i8* @xcalloc(i32 %66, i32 8)
  %68 = bitcast i8* %67 to %struct.TYPE_4__*
  %69 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %70 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %69, i32 0, i32 1
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %72 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %71, i32 0, i32 3
  %73 = call i32 @strbuf_init(i32* %72, i32 0)
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %112, %51
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %115

78:                                               ; preds = %74
  %79 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %80 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = call i32 @strbuf_init(i32* %85, i32 0)
  %87 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %88 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = call i32 @child_process_init(i32* %93)
  %95 = load i32, i32* @POLLIN, align 4
  %96 = load i32, i32* @POLLHUP, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %99 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  %105 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  %106 = getelementptr inbounds %struct.parallel_processes, %struct.parallel_processes* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 -1, i32* %111, align 4
  br label %112

112:                                              ; preds = %78
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %74

115:                                              ; preds = %74
  %116 = load %struct.parallel_processes*, %struct.parallel_processes** %7, align 8
  store %struct.parallel_processes* %116, %struct.parallel_processes** @pp_for_signal, align 8
  %117 = load i32, i32* @handle_children_on_signal, align 4
  %118 = call i32 @sigchain_push_common(i32 %117)
  ret void
}

declare dso_local i32 @online_cpus(...) #1

declare dso_local i32 @trace_printf(i8*, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @child_process_init(i32*) #1

declare dso_local i32 @sigchain_push_common(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
