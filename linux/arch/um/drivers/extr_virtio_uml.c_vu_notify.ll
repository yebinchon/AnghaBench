; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_notify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_uml_vq_info* }
%struct.virtio_uml_vq_info = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"write returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*)* @vu_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vu_notify(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_uml_vq_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %6 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %7 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %6, i32 0, i32 0
  %8 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %7, align 8
  store %struct.virtio_uml_vq_info* %8, %struct.virtio_uml_vq_info** %3, align 8
  store i32 1, i32* %4, align 4
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @os_write_file(i32 %12, i32* %4, i32 4)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @EINTR, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %9, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @WARN(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @os_write_file(i32, i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
