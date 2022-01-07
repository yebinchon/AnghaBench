; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c___send_control_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c___send_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ports_device = type { i32, %struct.TYPE_3__, i32, %struct.virtqueue* }
%struct.TYPE_3__ = type { i8*, i8*, i32 }
%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ports_device*, i32, i32, i32)* @__send_control_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__send_control_msg(%struct.ports_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ports_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.scatterlist], align 4
  %11 = alloca %struct.virtqueue*, align 8
  %12 = alloca i32, align 4
  store %struct.ports_device* %0, %struct.ports_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %14 = call i32 @use_multiport(%struct.ports_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

17:                                               ; preds = %4
  %18 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %19 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %18, i32 0, i32 3
  %20 = load %struct.virtqueue*, %struct.virtqueue** %19, align 8
  store %struct.virtqueue* %20, %struct.virtqueue** %11, align 8
  %21 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %22 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %25 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @cpu_to_virtio32(i32 %26, i32 %27)
  %29 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %30 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %33 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @cpu_to_virtio16(i32 %34, i32 %35)
  %37 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %38 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %41 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i8* @cpu_to_virtio16(i32 %42, i32 %43)
  %45 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %46 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %10, i64 0, i64 0
  %49 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %50 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %49, i32 0, i32 1
  %51 = call i32 @sg_init_one(%struct.scatterlist* %48, %struct.TYPE_3__* %50, i32 4)
  %52 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  %53 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %10, i64 0, i64 0
  %54 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %55 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %54, i32 0, i32 1
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call i64 @virtqueue_add_outbuf(%struct.virtqueue* %52, %struct.scatterlist* %53, i32 1, %struct.TYPE_3__* %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %17
  %60 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  %61 = call i32 @virtqueue_kick(%struct.virtqueue* %60)
  br label %62

62:                                               ; preds = %73, %59
  %63 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  %64 = call i32 @virtqueue_get_buf(%struct.virtqueue* %63, i32* %12)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  %68 = call i32 @virtqueue_is_broken(%struct.virtqueue* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i1 [ false, %62 ], [ %70, %66 ]
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = call i32 (...) @cpu_relax()
  br label %62

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %17
  %77 = load %struct.ports_device*, %struct.ports_device** %6, align 8
  %78 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %76, %16
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @use_multiport(%struct.ports_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_virtio32(i32, i32) #1

declare dso_local i8* @cpu_to_virtio16(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @virtqueue_add_outbuf(%struct.virtqueue*, %struct.scatterlist*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @virtqueue_is_broken(%struct.virtqueue*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
