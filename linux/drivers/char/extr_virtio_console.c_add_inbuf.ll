; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_add_inbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_add_inbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.port_buffer = type { i32, i32 }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*, %struct.port_buffer*)* @add_inbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_inbuf(%struct.virtqueue* %0, %struct.port_buffer* %1) #0 {
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.port_buffer*, align 8
  %5 = alloca [1 x %struct.scatterlist], align 4
  %6 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  store %struct.port_buffer* %1, %struct.port_buffer** %4, align 8
  %7 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %5, i64 0, i64 0
  %8 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sg_init_one(%struct.scatterlist* %7, i32 %10, i32 %13)
  %15 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %16 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %5, i64 0, i64 0
  %17 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i32 @virtqueue_add_inbuf(%struct.virtqueue* %15, %struct.scatterlist* %16, i32 1, %struct.port_buffer* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %21 = call i32 @virtqueue_kick(%struct.virtqueue* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %26 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @virtqueue_add_inbuf(%struct.virtqueue*, %struct.scatterlist*, i32, %struct.port_buffer*, i32) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
