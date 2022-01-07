; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_get_inbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_get_inbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_buffer = type { i32, i64 }
%struct.port = type { %struct.TYPE_2__, i32, %struct.port_buffer* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.port_buffer* (%struct.port*)* @get_inbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.port_buffer* @get_inbuf(%struct.port* %0) #0 {
  %2 = alloca %struct.port_buffer*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.port_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %3, align 8
  %6 = load %struct.port*, %struct.port** %3, align 8
  %7 = getelementptr inbounds %struct.port, %struct.port* %6, i32 0, i32 2
  %8 = load %struct.port_buffer*, %struct.port_buffer** %7, align 8
  %9 = icmp ne %struct.port_buffer* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.port*, %struct.port** %3, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 2
  %13 = load %struct.port_buffer*, %struct.port_buffer** %12, align 8
  store %struct.port_buffer* %13, %struct.port_buffer** %2, align 8
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.port*, %struct.port** %3, align 8
  %16 = getelementptr inbounds %struct.port, %struct.port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.port_buffer* @virtqueue_get_buf(i32 %17, i32* %5)
  store %struct.port_buffer* %18, %struct.port_buffer** %4, align 8
  %19 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  %20 = icmp ne %struct.port_buffer* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.port*, %struct.port** %3, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add i32 %31, %27
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %21, %14
  %34 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  store %struct.port_buffer* %34, %struct.port_buffer** %2, align 8
  br label %35

35:                                               ; preds = %33, %10
  %36 = load %struct.port_buffer*, %struct.port_buffer** %2, align 8
  ret %struct.port_buffer* %36
}

declare dso_local %struct.port_buffer* @virtqueue_get_buf(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
