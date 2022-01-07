; ModuleID = '/home/carl/AnghaBench/libevent/extr_event_tagging.c_evtag_unmarshal_header.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event_tagging.c_evtag_unmarshal_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evtag_unmarshal_header(%struct.evbuffer* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %9 = call i32 @decode_tag_internal(i64* %7, %struct.evbuffer* %8, i32 1)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %14 = call i32 @evtag_decode_int(i64* %6, %struct.evbuffer* %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %26

17:                                               ; preds = %12
  %18 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %19 = call i64 @evbuffer_get_length(%struct.evbuffer* %18)
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %22, %16, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @decode_tag_internal(i64*, %struct.evbuffer*, i32) #1

declare dso_local i32 @evtag_decode_int(i64*, %struct.evbuffer*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
