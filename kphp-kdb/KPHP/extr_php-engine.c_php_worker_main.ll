; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_php_worker_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64 }

@conn_wait_net = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_worker_main(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %25 [
    i32 128, label %10
    i32 130, label %13
    i32 129, label %16
    i32 131, label %19
    i32 132, label %22
  ]

10:                                               ; preds = %6
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @php_worker_try_start(%struct.TYPE_10__* %11)
  br label %25

13:                                               ; preds = %6
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i32 @php_worker_init_script(%struct.TYPE_10__* %14)
  br label %25

16:                                               ; preds = %6
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = call i32 @php_worker_run(%struct.TYPE_10__* %17)
  br label %25

19:                                               ; preds = %6
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call i32 @php_worker_free_script(%struct.TYPE_10__* %20)
  br label %25

22:                                               ; preds = %6
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i32 @php_worker_finish(%struct.TYPE_10__* %23)
  store i32 1, i32* %2, align 4
  br label %42

25:                                               ; preds = %6, %19, %16, %13, %10
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %6, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @conn_wait_net, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %32, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @php_worker_try_start(%struct.TYPE_10__*) #1

declare dso_local i32 @php_worker_init_script(%struct.TYPE_10__*) #1

declare dso_local i32 @php_worker_run(%struct.TYPE_10__*) #1

declare dso_local i32 @php_worker_free_script(%struct.TYPE_10__*) #1

declare dso_local i32 @php_worker_finish(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
