; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gdns.c_gdns_init.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gdns.c_gdns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@gdns_queue = common dso_local global i32 0, align 4
@QUEUE_SIZE = common dso_local global i32 0, align 4
@gdns_thread = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed init thread condition\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed init thread mutex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdns_init() #0 {
  %1 = call i32 @xmalloc(i32 4)
  store i32 %1, i32* @gdns_queue, align 4
  %2 = load i32, i32* @gdns_queue, align 4
  %3 = load i32, i32* @QUEUE_SIZE, align 4
  %4 = call i32 @gqueue_init(i32 %2, i32 %3)
  %5 = call i64 @pthread_cond_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdns_thread, i32 0, i32 2), i32* null)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @FATAL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i64 @pthread_cond_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdns_thread, i32 0, i32 1), i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @FATAL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = call i64 @pthread_mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdns_thread, i32 0, i32 0), i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @FATAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i32 @gqueue_init(i32, i32) #1

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @FATAL(i8*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
