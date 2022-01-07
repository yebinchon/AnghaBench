; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_defaults.c_link_stream.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_defaults.c_link_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_default_scheduler_state_t = type { %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_quicly_default_scheduler_state_t*, %struct.TYPE_8__*, i32)* @link_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_stream(%struct.st_quicly_default_scheduler_state_t* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.st_quicly_default_scheduler_state_t*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.st_quicly_default_scheduler_state_t* %0, %struct.st_quicly_default_scheduler_state_t** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @quicly_linklist_is_linked(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %3
  %15 = load %struct.st_quicly_default_scheduler_state_t*, %struct.st_quicly_default_scheduler_state_t** %4, align 8
  %16 = getelementptr inbounds %struct.st_quicly_default_scheduler_state_t, %struct.st_quicly_default_scheduler_state_t* %15, i32 0, i32 1
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = call i32 @quicly_sendstate_can_send(i32* %21, i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.st_quicly_default_scheduler_state_t*, %struct.st_quicly_default_scheduler_state_t** %4, align 8
  %26 = getelementptr inbounds %struct.st_quicly_default_scheduler_state_t, %struct.st_quicly_default_scheduler_state_t* %25, i32 0, i32 0
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %7, align 8
  br label %27

27:                                               ; preds = %24, %19, %14
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @quicly_linklist_insert(i32 %30, i32* %34)
  br label %36

36:                                               ; preds = %27, %3
  ret void
}

declare dso_local i32 @quicly_linklist_is_linked(i32*) #1

declare dso_local i32 @quicly_sendstate_can_send(i32*, i32*) #1

declare dso_local i32 @quicly_linklist_insert(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
