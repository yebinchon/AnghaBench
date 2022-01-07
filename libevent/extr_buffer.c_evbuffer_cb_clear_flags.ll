; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_cb_clear_flags.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_cb_clear_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_cb_entry = type { i32 }

@EVBUFFER_CB_INTERNAL_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_cb_clear_flags(%struct.evbuffer* %0, %struct.evbuffer_cb_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_cb_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_cb_entry* %1, %struct.evbuffer_cb_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @EVBUFFER_CB_INTERNAL_FLAGS, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %12 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %11)
  %13 = load i32, i32* %6, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %16 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %20 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %19)
  ret i32 0
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
