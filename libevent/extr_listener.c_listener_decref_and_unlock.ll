; ModuleID = '/home/carl/AnghaBench/libevent/extr_listener.c_listener_decref_and_unlock.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_listener.c_listener_decref_and_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evconnlistener*)* @listener_decref_and_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listener_decref_and_unlock(%struct.evconnlistener* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evconnlistener*, align 8
  %4 = alloca i32, align 4
  store %struct.evconnlistener* %0, %struct.evconnlistener** %3, align 8
  %5 = load %struct.evconnlistener*, %struct.evconnlistener** %3, align 8
  %6 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %6, align 8
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.evconnlistener*, %struct.evconnlistener** %3, align 8
  %13 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.evconnlistener*)**
  %17 = load i32 (%struct.evconnlistener*)*, i32 (%struct.evconnlistener*)** %16, align 8
  %18 = load %struct.evconnlistener*, %struct.evconnlistener** %3, align 8
  %19 = call i32 %17(%struct.evconnlistener* %18)
  %20 = load %struct.evconnlistener*, %struct.evconnlistener** %3, align 8
  %21 = call i32 @UNLOCK(%struct.evconnlistener* %20)
  %22 = load %struct.evconnlistener*, %struct.evconnlistener** %3, align 8
  %23 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %26 = call i32 @EVTHREAD_FREE_LOCK(i32 %24, i32 %25)
  %27 = load %struct.evconnlistener*, %struct.evconnlistener** %3, align 8
  %28 = call i32 @mm_free(%struct.evconnlistener* %27)
  store i32 1, i32* %2, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.evconnlistener*, %struct.evconnlistener** %3, align 8
  %31 = call i32 @UNLOCK(%struct.evconnlistener* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @UNLOCK(%struct.evconnlistener*) #1

declare dso_local i32 @EVTHREAD_FREE_LOCK(i32, i32) #1

declare dso_local i32 @mm_free(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
