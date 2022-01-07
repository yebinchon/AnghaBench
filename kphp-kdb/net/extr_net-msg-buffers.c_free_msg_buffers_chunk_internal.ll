; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_free_msg_buffers_chunk_internal.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_free_msg_buffers_chunk_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_buffers_chunk = type { i64, i64, i64, i64*, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.msg_buffers_chunk* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@MSG_CHUNK_USED_MAGIC = common dso_local global i64 0, align 8
@MSG_CHUNK_HEAD_MAGIC = common dso_local global i64 0, align 8
@allocated_buffer_chunks = common dso_local global i32 0, align 4
@MSG_BUFFERS_CHUNK_SIZE = common dso_local global i64 0, align 8
@allocated_buffer_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_msg_buffers_chunk_internal(%struct.msg_buffers_chunk* %0, %struct.msg_buffers_chunk* %1) #0 {
  %3 = alloca %struct.msg_buffers_chunk*, align 8
  %4 = alloca %struct.msg_buffers_chunk*, align 8
  store %struct.msg_buffers_chunk* %0, %struct.msg_buffers_chunk** %3, align 8
  store %struct.msg_buffers_chunk* %1, %struct.msg_buffers_chunk** %4, align 8
  %5 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %6 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MSG_CHUNK_USED_MAGIC, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %4, align 8
  %13 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MSG_CHUNK_HEAD_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %20 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %4, align 8
  %23 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %29 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %32 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %31, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %30, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %4, align 8
  %40 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %41 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %40, i32 0, i32 8
  %42 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %41, align 8
  %43 = icmp eq %struct.msg_buffers_chunk* %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %47 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %49 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %48, i32 0, i32 8
  store %struct.msg_buffers_chunk* null, %struct.msg_buffers_chunk** %49, align 8
  %50 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %51 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %50, i32 0, i32 7
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %54 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %53, i32 0, i32 6
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %56, align 8
  %57 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %58 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %57, i32 0, i32 6
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %61 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %60, i32 0, i32 7
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %63, align 8
  %64 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %65 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %4, align 8
  %68 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %72 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %4, align 8
  %75 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %4, align 8
  %81 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %4, align 8
  %85 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* @allocated_buffer_chunks, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* @allocated_buffer_chunks, align 4
  %92 = load i64, i64* @MSG_BUFFERS_CHUNK_SIZE, align 8
  %93 = load i32, i32* @allocated_buffer_bytes, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* @allocated_buffer_bytes, align 4
  %97 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %98 = call i32 @memset(%struct.msg_buffers_chunk* %97, i32 0, i32 72)
  %99 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %3, align 8
  %100 = call i32 @free(%struct.msg_buffers_chunk* %99)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.msg_buffers_chunk*, i32, i32) #1

declare dso_local i32 @free(%struct.msg_buffers_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
