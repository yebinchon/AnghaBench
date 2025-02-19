; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, i32, i32, i32*, i32 }

@EVBUFFER_MAX_READ_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evbuffer* @evbuffer_new() #0 {
  %1 = alloca %struct.evbuffer*, align 8
  %2 = alloca %struct.evbuffer*, align 8
  %3 = call %struct.evbuffer* @mm_calloc(i32 1, i32 32)
  store %struct.evbuffer* %3, %struct.evbuffer** %2, align 8
  %4 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %5 = icmp eq %struct.evbuffer* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.evbuffer* null, %struct.evbuffer** %1, align 8
  br label %21

7:                                                ; preds = %0
  %8 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %9 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %8, i32 0, i32 4
  %10 = call i32 @LIST_INIT(i32* %9)
  %11 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %12 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %14 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %13, i32 0, i32 2
  %15 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %16 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* @EVBUFFER_MAX_READ_DEFAULT, align 4
  %18 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %19 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  store %struct.evbuffer* %20, %struct.evbuffer** %1, align 8
  br label %21

21:                                               ; preds = %7, %6
  %22 = load %struct.evbuffer*, %struct.evbuffer** %1, align 8
  ret %struct.evbuffer* %22
}

declare dso_local %struct.evbuffer* @mm_calloc(i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
