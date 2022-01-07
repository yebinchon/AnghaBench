; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_setcb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_setcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_cb_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EVBUFFER_CB_OBSOLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_setcb(%struct.evbuffer* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evbuffer_cb_entry*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %10 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %9)
  %11 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %12 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %11, i32 0, i32 0
  %13 = call i32 @LIST_EMPTY(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %17 = call i32 @evbuffer_remove_all_callbacks(%struct.evbuffer* %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call %struct.evbuffer_cb_entry* @evbuffer_add_cb(%struct.evbuffer* %22, i32* null, i8* %23)
  store %struct.evbuffer_cb_entry* %24, %struct.evbuffer_cb_entry** %8, align 8
  %25 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %8, align 8
  %26 = icmp ne %struct.evbuffer_cb_entry* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %29 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %28)
  store i32 -1, i32* %4, align 4
  br label %43

30:                                               ; preds = %21
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %8, align 8
  %33 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load i32, i32* @EVBUFFER_CB_OBSOLETE, align 4
  %36 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %8, align 8
  %37 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %30, %18
  %41 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %42 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %27
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @evbuffer_remove_all_callbacks(%struct.evbuffer*) #1

declare dso_local %struct.evbuffer_cb_entry* @evbuffer_add_cb(%struct.evbuffer*, i32*, i8*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
