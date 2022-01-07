; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c___send_to_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c___send_to_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.TYPE_2__, i32, %struct.virtqueue* }
%struct.TYPE_2__ = type { i64 }
%struct.virtqueue = type { i64 }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.port*, %struct.scatterlist*, i32, i64, i8*, i32)* @__send_to_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__send_to_port(%struct.port* %0, %struct.scatterlist* %1, i32 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.port*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.virtqueue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.port*, %struct.port** %7, align 8
  %18 = getelementptr inbounds %struct.port, %struct.port* %17, i32 0, i32 3
  %19 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  store %struct.virtqueue* %19, %struct.virtqueue** %13, align 8
  %20 = load %struct.port*, %struct.port** %7, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 2
  %22 = load i64, i64* %15, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.port*, %struct.port** %7, align 8
  %25 = call i32 @reclaim_consumed_buffers(%struct.port* %24)
  %26 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i32 @virtqueue_add_outbuf(%struct.virtqueue* %26, %struct.scatterlist* %27, i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %33 = call i32 @virtqueue_kick(%struct.virtqueue* %32)
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  store i64 0, i64* %10, align 8
  br label %64

37:                                               ; preds = %6
  %38 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %39 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.port*, %struct.port** %7, align 8
  %44 = getelementptr inbounds %struct.port, %struct.port* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %64

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %61, %49
  %51 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %52 = call i32 @virtqueue_get_buf(%struct.virtqueue* %51, i32* %16)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load %struct.virtqueue*, %struct.virtqueue** %13, align 8
  %56 = call i32 @virtqueue_is_broken(%struct.virtqueue* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i1 [ false, %50 ], [ %58, %54 ]
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = call i32 (...) @cpu_relax()
  br label %50

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %48, %36
  %65 = load %struct.port*, %struct.port** %7, align 8
  %66 = getelementptr inbounds %struct.port, %struct.port* %65, i32 0, i32 2
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.port*, %struct.port** %7, align 8
  %71 = getelementptr inbounds %struct.port, %struct.port* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %69
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %10, align 8
  ret i64 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reclaim_consumed_buffers(%struct.port*) #1

declare dso_local i32 @virtqueue_add_outbuf(%struct.virtqueue*, %struct.scatterlist*, i32, i8*, i32) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @virtqueue_is_broken(%struct.virtqueue*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
