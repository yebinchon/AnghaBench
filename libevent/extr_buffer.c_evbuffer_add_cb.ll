; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_add_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_add_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_cb_entry = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.evbuffer = type { i32 }

@EVBUFFER_CB_ENABLED = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evbuffer_cb_entry* @evbuffer_add_cb(%struct.evbuffer* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.evbuffer_cb_entry*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evbuffer_cb_entry*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call %struct.evbuffer_cb_entry* @mm_calloc(i32 1, i32 24)
  store %struct.evbuffer_cb_entry* %9, %struct.evbuffer_cb_entry** %8, align 8
  %10 = icmp ne %struct.evbuffer_cb_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store %struct.evbuffer_cb_entry* null, %struct.evbuffer_cb_entry** %4, align 8
  br label %33

12:                                               ; preds = %3
  %13 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %14 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %8, align 8
  %17 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %8, align 8
  %21 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %23 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %8, align 8
  %24 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %26 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %25, i32 0, i32 0
  %27 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %8, align 8
  %28 = load i32, i32* @next, align 4
  %29 = call i32 @LIST_INSERT_HEAD(i32* %26, %struct.evbuffer_cb_entry* %27, i32 %28)
  %30 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %31 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %30)
  %32 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %8, align 8
  store %struct.evbuffer_cb_entry* %32, %struct.evbuffer_cb_entry** %4, align 8
  br label %33

33:                                               ; preds = %12, %11
  %34 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %4, align 8
  ret %struct.evbuffer_cb_entry* %34
}

declare dso_local %struct.evbuffer_cb_entry* @mm_calloc(i32, i32) #1

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.evbuffer_cb_entry*, i32) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
