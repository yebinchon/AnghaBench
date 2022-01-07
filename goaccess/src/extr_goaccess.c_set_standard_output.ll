; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_set_standard_output.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_set_standard_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@gwswriter = common dso_local global i32 0, align 4
@gwsreader = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"html\00", align 1
@conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to open FIFO for read.\0A\00", align 1
@parsing_spinner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_standard_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_standard_output() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @new_gwswriter()
  store i32 %2, i32* @gwswriter, align 4
  %3 = call %struct.TYPE_5__* (...) @new_gwsreader()
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** @gwsreader, align 8
  %4 = call i64 @find_output_type(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 0), align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  store i32 1, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 2), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = call i32 (...) @open_fifoout()
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gwsreader, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = icmp eq i32 %17, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %36

23:                                               ; preds = %16
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 1), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @daemonize()
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* @gwswriter, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @gwsreader, align 8
  %31 = call i32 @setup_ws_server(i32 %29, %struct.TYPE_5__* %30)
  br label %32

32:                                               ; preds = %28, %13, %10
  %33 = call i32 (...) @setup_thread_signals()
  %34 = load i32, i32* @parsing_spinner, align 4
  %35 = call i32 @ui_spinner_create(i32 %34)
  br label %36

36:                                               ; preds = %32, %21
  ret void
}

declare dso_local i32 @new_gwswriter(...) #1

declare dso_local %struct.TYPE_5__* @new_gwsreader(...) #1

declare dso_local i64 @find_output_type(i32*, i8*, i32) #1

declare dso_local i32 @open_fifoout(...) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @daemonize(...) #1

declare dso_local i32 @setup_ws_server(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @setup_thread_signals(...) #1

declare dso_local i32 @ui_spinner_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
