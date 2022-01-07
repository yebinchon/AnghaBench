; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_multithread.c_test_lib__common__multithread_c.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_multithread.c_test_lib__common__multithread_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@main_thread = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@on_pong = common dso_local global i32 0, align 4
@on_shutdown = common dso_local global i32 0, align 4
@worker_thread = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@on_ping = common dso_local global i32 0, align 4
@worker_main = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@UV_RUN_ONCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lib__common__multithread_c() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* (...) @create_loop()
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 0), align 8
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 0), align 8
  %4 = call i8* @h2o_multithread_create_queue(i8* %3)
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 1), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 1), align 8
  %6 = load i32, i32* @on_pong, align 4
  %7 = call i32 @h2o_multithread_register_receiver(i8* %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 3), i32 %6)
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 1), align 8
  %9 = load i32, i32* @on_shutdown, align 4
  %10 = call i32 @h2o_multithread_register_receiver(i8* %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 2), i32 %9)
  %11 = call i8* (...) @create_loop()
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 0), align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 0), align 8
  %13 = call i8* @h2o_multithread_create_queue(i8* %12)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 1), align 8
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 1), align 8
  %15 = load i32, i32* @on_ping, align 4
  %16 = call i32 @h2o_multithread_register_receiver(i8* %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 2), i32 %15)
  %17 = load i32, i32* @worker_main, align 4
  %18 = call i32 @pthread_create(i32* %1, i32* null, i32 %17, i32* null)
  %19 = call i32 @send_empty_message(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 2))
  br label %20

20:                                               ; preds = %24, %0
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 4), align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 0), align 8
  %26 = load i32, i32* @INT32_MAX, align 4
  %27 = call i32 @h2o_evloop_run(i8* %25, i32 %26)
  br label %20

28:                                               ; preds = %20
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @pthread_join(i32 %29, i32* null)
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 1), align 8
  %32 = call i32 @h2o_multithread_unregister_receiver(i8* %31, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 2))
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 1), align 8
  %34 = call i32 @h2o_multithread_destroy_queue(i8* %33)
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @worker_thread, i32 0, i32 0), align 8
  %36 = call i32 @destroy_loop(i8* %35)
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 1), align 8
  %38 = call i32 @h2o_multithread_unregister_receiver(i8* %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 3))
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 1), align 8
  %40 = call i32 @h2o_multithread_unregister_receiver(i8* %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 2))
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 1), align 8
  %42 = call i32 @h2o_multithread_destroy_queue(i8* %41)
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_thread, i32 0, i32 0), align 8
  %44 = call i32 @destroy_loop(i8* %43)
  %45 = call i32 @ok(i32 1)
  ret void
}

declare dso_local i8* @create_loop(...) #1

declare dso_local i8* @h2o_multithread_create_queue(i8*) #1

declare dso_local i32 @h2o_multithread_register_receiver(i8*, i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @send_empty_message(i32*) #1

declare dso_local i32 @h2o_evloop_run(i8*, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @h2o_multithread_unregister_receiver(i8*, i32*) #1

declare dso_local i32 @h2o_multithread_destroy_queue(i8*) #1

declare dso_local i32 @destroy_loop(i8*) #1

declare dso_local i32 @ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
