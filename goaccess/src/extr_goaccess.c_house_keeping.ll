; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_house_keeping.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_house_keeping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i64 }

@dash = common dso_local global i64 0, align 8
@conf = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@glog = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Closing invalid requests log.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Bye.\0A\00", align 1
@parsing_spinner = common dso_local global %struct.TYPE_8__* null, align 8
@gwswriter = common dso_local global %struct.TYPE_8__* null, align 8
@gwsreader = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @house_keeping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @house_keeping() #0 {
  %1 = call i32 (...) @house_keeping_holder()
  %2 = load i64, i64* @dash, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 2), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @dash, align 8
  %9 = call i32 @free_dashboard(i64 %8)
  %10 = call i32 (...) @reset_find()
  br label %11

11:                                               ; preds = %7, %4, %0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @glog, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @glog, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @fclose(i64 %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @glog, align 8
  %23 = call i32 @free_logerrors(%struct.TYPE_8__* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @glog, align 8
  %25 = call i32 @free(%struct.TYPE_8__* %24)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 1), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 (...) @invalid_log_close()
  br label %31

31:                                               ; preds = %28, %21
  %32 = call i32 (...) @free_formats()
  %33 = call i32 (...) @free_browsers_hash()
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @conf, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (...) @dbg_log_close()
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @parsing_spinner, align 8
  %41 = call i32 @free(%struct.TYPE_8__* %40)
  %42 = call i32 (...) @free_color_lists()
  %43 = call i32 (...) @free_cmd_args()
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gwswriter, align 8
  %45 = call i32 @free(%struct.TYPE_8__* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gwsreader, align 8
  %47 = call i32 @free(%struct.TYPE_8__* %46)
  ret void
}

declare dso_local i32 @house_keeping_holder(...) #1

declare dso_local i32 @free_dashboard(i64) #1

declare dso_local i32 @reset_find(...) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @free_logerrors(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @LOG_DEBUG(i8*) #1

declare dso_local i32 @invalid_log_close(...) #1

declare dso_local i32 @free_formats(...) #1

declare dso_local i32 @free_browsers_hash(...) #1

declare dso_local i32 @dbg_log_close(...) #1

declare dso_local i32 @free_color_lists(...) #1

declare dso_local i32 @free_cmd_args(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
