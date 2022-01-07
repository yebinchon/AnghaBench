; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer_iocp.c_evbuffer_overlapped_new_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer_iocp.c_evbuffer_overlapped_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, i32, i32, i32*, i32 }
%struct.evbuffer_overlapped = type { %struct.evbuffer, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evbuffer* @evbuffer_overlapped_new_(i32 %0) #0 {
  %2 = alloca %struct.evbuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer_overlapped*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.evbuffer_overlapped* @mm_calloc(i32 1, i32 40)
  store %struct.evbuffer_overlapped* %5, %struct.evbuffer_overlapped** %4, align 8
  %6 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %4, align 8
  %7 = icmp ne %struct.evbuffer_overlapped* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.evbuffer* null, %struct.evbuffer** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %4, align 8
  %11 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %11, i32 0, i32 4
  %13 = call i32 @LIST_INIT(i32* %12)
  %14 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %4, align 8
  %15 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %4, align 8
  %18 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %18, i32 0, i32 2
  %20 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %4, align 8
  %21 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %21, i32 0, i32 3
  store i32* %19, i32** %22, align 8
  %23 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %4, align 8
  %24 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %4, align 8
  %28 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %4, align 8
  %30 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %29, i32 0, i32 0
  store %struct.evbuffer* %30, %struct.evbuffer** %2, align 8
  br label %31

31:                                               ; preds = %9, %8
  %32 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  ret %struct.evbuffer* %32
}

declare dso_local %struct.evbuffer_overlapped* @mm_calloc(i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
