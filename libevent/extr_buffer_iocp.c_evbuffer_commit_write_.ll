; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer_iocp.c_evbuffer_commit_write_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer_iocp.c_evbuffer_commit_write_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_overlapped = type { i64, i32 }

@EVBUFFER_MEM_PINNED_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evbuffer_commit_write_(%struct.evbuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer_overlapped*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = call %struct.evbuffer_overlapped* @upcast_evbuffer(%struct.evbuffer* %6)
  store %struct.evbuffer_overlapped* %7, %struct.evbuffer_overlapped** %5, align 8
  %8 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %9 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %8)
  %10 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %5, align 8
  %11 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %5, align 8
  %16 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ false, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @EVUTIL_ASSERT(i32 %22)
  %24 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %25 = call i32 @evbuffer_unfreeze(%struct.evbuffer* %24, i32 1)
  %26 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @evbuffer_drain(%struct.evbuffer* %26, i32 %27)
  %29 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %5, align 8
  %30 = load i32, i32* @EVBUFFER_MEM_PINNED_W, align 4
  %31 = call i32 @pin_release(%struct.evbuffer_overlapped* %29, i32 %30)
  %32 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %5, align 8
  %33 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %35 = call i32 @evbuffer_decref_and_unlock_(%struct.evbuffer* %34)
  ret void
}

declare dso_local %struct.evbuffer_overlapped* @upcast_evbuffer(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evbuffer_unfreeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @pin_release(%struct.evbuffer_overlapped*, i32) #1

declare dso_local i32 @evbuffer_decref_and_unlock_(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
