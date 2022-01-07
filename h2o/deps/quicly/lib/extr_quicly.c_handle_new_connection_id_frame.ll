; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_handle_new_connection_id_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_handle_new_connection_id_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_handle_payload_state_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.st_quicly_handle_payload_state_t*)* @handle_new_connection_id_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_new_connection_id_frame(i32* %0, %struct.st_quicly_handle_payload_state_t* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.st_quicly_handle_payload_state_t*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.st_quicly_handle_payload_state_t* %1, %struct.st_quicly_handle_payload_state_t** %4, align 8
  %6 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %4, align 8
  %7 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %6, i32 0, i32 1
  %8 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %4, align 8
  %9 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @quicly_decode_new_connection_id_frame(i32* %7, i32 %10, i32* %5)
  ret i32 %11
}

declare dso_local i32 @quicly_decode_new_connection_id_frame(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
