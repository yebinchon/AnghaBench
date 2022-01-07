; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_assign_p_sizes_qlim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_assign_p_sizes_qlim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.request_queue* }
%struct.p_sizes = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i8*, i8*, i8*, i8*, i8* }
%struct.request_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, %struct.p_sizes*, %struct.request_queue*)* @assign_p_sizes_qlim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_p_sizes_qlim(%struct.drbd_device* %0, %struct.p_sizes* %1, %struct.request_queue* %2) #0 {
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.p_sizes*, align 8
  %6 = alloca %struct.request_queue*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store %struct.p_sizes* %1, %struct.p_sizes** %5, align 8
  store %struct.request_queue* %2, %struct.request_queue** %6, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %8 = icmp ne %struct.request_queue* %7, null
  br i1 %8, label %9, label %63

9:                                                ; preds = %3
  %10 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %11 = call i32 @queue_physical_block_size(%struct.request_queue* %10)
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %14 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  store i8* %12, i8** %16, align 8
  %17 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %18 = call i32 @queue_logical_block_size(%struct.request_queue* %17)
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %21 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  store i8* %19, i8** %23, align 8
  %24 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %25 = call i32 @queue_alignment_offset(%struct.request_queue* %24)
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %28 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i8* %26, i8** %30, align 8
  %31 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %32 = call i32 @queue_io_min(%struct.request_queue* %31)
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %35 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i8* %33, i8** %37, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %39 = call i32 @queue_io_opt(%struct.request_queue* %38)
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %42 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i8* %40, i8** %44, align 8
  %45 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %46 = call i64 @blk_queue_discard(%struct.request_queue* %45)
  %47 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %48 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 %46, i64* %50, align 8
  %51 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %60 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  br label %107

63:                                               ; preds = %3
  %64 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %65 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %64, i32 0, i32 0
  %66 = load %struct.request_queue*, %struct.request_queue** %65, align 8
  store %struct.request_queue* %66, %struct.request_queue** %6, align 8
  %67 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %68 = call i32 @queue_physical_block_size(%struct.request_queue* %67)
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %71 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 6
  store i8* %69, i8** %73, align 8
  %74 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %75 = call i32 @queue_logical_block_size(%struct.request_queue* %74)
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %78 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  store i8* %76, i8** %80, align 8
  %81 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %82 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i8* null, i8** %84, align 8
  %85 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %86 = call i32 @queue_io_min(%struct.request_queue* %85)
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %89 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  store i8* %87, i8** %91, align 8
  %92 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %93 = call i32 @queue_io_opt(%struct.request_queue* %92)
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %96 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i8* %94, i8** %98, align 8
  %99 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %100 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.p_sizes*, %struct.p_sizes** %5, align 8
  %104 = getelementptr inbounds %struct.p_sizes, %struct.p_sizes* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  br label %107

107:                                              ; preds = %63, %9
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @queue_physical_block_size(%struct.request_queue*) #1

declare dso_local i32 @queue_logical_block_size(%struct.request_queue*) #1

declare dso_local i32 @queue_alignment_offset(%struct.request_queue*) #1

declare dso_local i32 @queue_io_min(%struct.request_queue*) #1

declare dso_local i32 @queue_io_opt(%struct.request_queue*) #1

declare dso_local i64 @blk_queue_discard(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
