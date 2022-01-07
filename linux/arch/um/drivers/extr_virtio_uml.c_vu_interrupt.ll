; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_uml_vq_info* }
%struct.virtio_uml_vq_info = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"read returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vu_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vu_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca %struct.virtio_uml_vq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.virtqueue*
  store %struct.virtqueue* %11, %struct.virtqueue** %5, align 8
  %12 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %13 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %12, i32 0, i32 0
  %14 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %13, align 8
  store %struct.virtio_uml_vq_info* %14, %struct.virtio_uml_vq_info** %6, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %40, %2
  %17 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %6, align 8
  %18 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @os_read_file(i32 %19, i32* %7, i32 4)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %27 = call i32 @vring_interrupt(i32 %25, %struct.virtqueue* %26)
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %24, %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EINTR, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ true, %31 ], [ %39, %35 ]
  br i1 %41, label %16, label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @WARN(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @os_read_file(i32, i32*, i32) #1

declare dso_local i32 @vring_interrupt(i32, %struct.virtqueue*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
