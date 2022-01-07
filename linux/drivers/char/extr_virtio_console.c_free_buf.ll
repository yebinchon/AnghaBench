; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_free_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_free_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_buffer = type { i32, i32, i32, %struct.port_buffer*, i32, i32, i32* }
%struct.page = type { i32 }

@is_rproc_enabled = common dso_local global i64 0, align 8
@dma_bufs_lock = common dso_local global i32 0, align 4
@pending_free_dma_bufs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_buffer*, i32)* @free_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buf(%struct.port_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.port_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  store %struct.port_buffer* %0, %struct.port_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call %struct.page* @sg_page(i32* %20)
  store %struct.page* %21, %struct.page** %6, align 8
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = icmp ne %struct.page* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %31

25:                                               ; preds = %14
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = call i32 @put_page(%struct.page* %26)
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %24, %8
  %32 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %37, i32 0, i32 3
  %39 = load %struct.port_buffer*, %struct.port_buffer** %38, align 8
  %40 = call i32 @kfree(%struct.port_buffer* %39)
  br label %74

41:                                               ; preds = %31
  %42 = load i64, i64* @is_rproc_enabled, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_lock_irqsave(i32* @dma_bufs_lock, i64 %48)
  %50 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %50, i32 0, i32 5
  %52 = call i32 @list_add_tail(i32* %51, i32* @pending_free_dma_bufs)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @dma_bufs_lock, i64 %53)
  br label %77

55:                                               ; preds = %44
  %56 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %60 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %63 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %62, i32 0, i32 3
  %64 = load %struct.port_buffer*, %struct.port_buffer** %63, align 8
  %65 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %66 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_free_coherent(i32 %58, i32 %61, %struct.port_buffer* %64, i32 %67)
  %69 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %70 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @put_device(i32 %71)
  br label %73

73:                                               ; preds = %55, %41
  br label %74

74:                                               ; preds = %73, %36
  %75 = load %struct.port_buffer*, %struct.port_buffer** %3, align 8
  %76 = call i32 @kfree(%struct.port_buffer* %75)
  br label %77

77:                                               ; preds = %74, %47
  ret void
}

declare dso_local %struct.page* @sg_page(i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.port_buffer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.port_buffer*, i32) #1

declare dso_local i32 @put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
