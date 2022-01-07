; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_child_sig_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_child_sig_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ev_loop = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Child (pid: %d) unexpectedly exited with status %d\0A\00", align 1
@child = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"status_command is not executable (exit %d)\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"status_command not found or is missing a library dependency (exit %d)\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"status_command process exited unexpectedly (exit %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ev_loop*, %struct.TYPE_4__*, i32)* @child_sig_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child_sig_cb(%struct.ev_loop* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.ev_loop*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ev_loop* %0, %struct.ev_loop** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @WEXITSTATUS(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @child, i32 0, i32 0), align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ELOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 126
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @set_statusline_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %30

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 127
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @set_statusline_error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @set_statusline_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %17
  %31 = call i32 (...) @cleanup()
  %32 = call i32 @draw_bars(i32 0)
  ret void
}

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @ELOG(i8*, i32, i32) #1

declare dso_local i32 @set_statusline_error(i8*, i32) #1

declare dso_local i32 @cleanup(...) #1

declare dso_local i32 @draw_bars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
