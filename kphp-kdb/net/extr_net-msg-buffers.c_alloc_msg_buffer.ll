; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_alloc_msg_buffer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_alloc_msg_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.msg_buffer = type { i32 }

@buffer_size_values = common dso_local global i32 0, align 4
@ChunkHeaders = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msg_buffer* @alloc_msg_buffer(%struct.msg_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.msg_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msg_buffer* %0, %struct.msg_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @buffer_size_values, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 (...) @init_buffer_chunk_headers()
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* @buffer_size_values, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ChunkHeaders, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %26, %27
  br label %29

29:                                               ; preds = %19, %16
  %30 = phi i1 [ false, %16 ], [ %28, %19 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  br label %16

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %10
  %36 = load %struct.msg_buffer*, %struct.msg_buffer** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ChunkHeaders, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = call %struct.msg_buffer* @alloc_msg_buffer_internal(%struct.msg_buffer* %36, %struct.TYPE_3__* %40)
  ret %struct.msg_buffer* %41
}

declare dso_local i32 @init_buffer_chunk_headers(...) #1

declare dso_local %struct.msg_buffer* @alloc_msg_buffer_internal(%struct.msg_buffer*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
