; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_buffer = type { i32, i64, i64, i64, i32*, i32*, i32 }
%struct.virtio_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@sg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.port_buffer* (%struct.virtio_device*, i64, i32)* @alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.port_buffer* @alloc_buf(%struct.virtio_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.port_buffer*, align 8
  %5 = alloca %struct.virtio_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_buffer*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @reclaim_dma_bufs()
  %10 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %11 = load i32, i32* @sg, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @struct_size(%struct.port_buffer* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i64 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.port_buffer*
  store %struct.port_buffer* %16, %struct.port_buffer** %8, align 8
  %17 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %18 = icmp ne %struct.port_buffer* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %101

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %23 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %30 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  %31 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  store %struct.port_buffer* %31, %struct.port_buffer** %4, align 8
  br label %102

32:                                               ; preds = %20
  %33 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %34 = call i64 @is_rproc_serial(%struct.virtio_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %32
  %37 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %38 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %44 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42, %36
  br label %98

51:                                               ; preds = %42
  %52 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %53 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %59 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %58, i32 0, i32 5
  store i32* %57, i32** %59, align 8
  %60 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %61 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @get_device(i32* %62)
  %64 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %65 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %69 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %68, i32 0, i32 6
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32* @dma_alloc_coherent(i32* %66, i64 %67, i32* %69, i32 %70)
  %72 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %73 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %72, i32 0, i32 4
  store i32* %71, i32** %73, align 8
  br label %83

74:                                               ; preds = %32
  %75 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %76 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %75, i32 0, i32 5
  store i32* null, i32** %76, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kmalloc(i64 %77, i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %82 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %74, %51
  %84 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %85 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %98

89:                                               ; preds = %83
  %90 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %91 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %93 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %96 = getelementptr inbounds %struct.port_buffer, %struct.port_buffer* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  store %struct.port_buffer* %97, %struct.port_buffer** %4, align 8
  br label %102

98:                                               ; preds = %88, %50
  %99 = load %struct.port_buffer*, %struct.port_buffer** %8, align 8
  %100 = call i32 @kfree(%struct.port_buffer* %99)
  br label %101

101:                                              ; preds = %98, %19
  store %struct.port_buffer* null, %struct.port_buffer** %4, align 8
  br label %102

102:                                              ; preds = %101, %89, %26
  %103 = load %struct.port_buffer*, %struct.port_buffer** %4, align 8
  ret %struct.port_buffer* %103
}

declare dso_local i32 @reclaim_dma_bufs(...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @struct_size(%struct.port_buffer*, i32, i32) #1

declare dso_local i64 @is_rproc_serial(%struct.virtio_device*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.port_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
