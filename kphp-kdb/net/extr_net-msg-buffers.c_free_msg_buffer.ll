; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_free_msg_buffer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_free_msg_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_buffer = type { %struct.msg_buffers_chunk*, i32 }
%struct.msg_buffers_chunk = type { i64, i32 (%struct.msg_buffers_chunk*, %struct.msg_buffer.0*)* }
%struct.msg_buffer.0 = type opaque

@MSG_CHUNK_USED_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_msg_buffer(%struct.msg_buffer* %0) #0 {
  %2 = alloca %struct.msg_buffer*, align 8
  %3 = alloca %struct.msg_buffers_chunk*, align 8
  store %struct.msg_buffer* %0, %struct.msg_buffer** %2, align 8
  %4 = load %struct.msg_buffer*, %struct.msg_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.msg_buffer*, %struct.msg_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %11, i32 0, i32 0
  %13 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %12, align 8
  store %struct.msg_buffers_chunk* %13, %struct.msg_buffers_chunk** %3, align 8
  %14 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %15 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MSG_CHUNK_USED_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %22 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %21, i32 0, i32 1
  %23 = load i32 (%struct.msg_buffers_chunk*, %struct.msg_buffer.0*)*, i32 (%struct.msg_buffers_chunk*, %struct.msg_buffer.0*)** %22, align 8
  %24 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %25 = load %struct.msg_buffer*, %struct.msg_buffer** %2, align 8
  %26 = bitcast %struct.msg_buffer* %25 to %struct.msg_buffer.0*
  %27 = call i32 %23(%struct.msg_buffers_chunk* %24, %struct.msg_buffer.0* %26)
  ret i32 %27
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
