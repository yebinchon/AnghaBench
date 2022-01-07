; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim.c_floppy_getgeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim.c_floppy_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.floppy_state* }
%struct.floppy_state = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }
%struct.floppy_struct = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @floppy_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floppy_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.hd_geometry*, align 8
  %6 = alloca %struct.floppy_state*, align 8
  %7 = alloca %struct.floppy_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %5, align 8
  %9 = load %struct.block_device*, %struct.block_device** %4, align 8
  %10 = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.floppy_state*, %struct.floppy_state** %12, align 8
  store %struct.floppy_state* %13, %struct.floppy_state** %6, align 8
  %14 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %15 = call i32 @get_floppy_geometry(%struct.floppy_state* %14, i32 0, %struct.floppy_struct** %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.floppy_struct*, %struct.floppy_struct** %7, align 8
  %22 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %25 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.floppy_struct*, %struct.floppy_struct** %7, align 8
  %27 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %30 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.floppy_struct*, %struct.floppy_struct** %7, align 8
  %32 = getelementptr inbounds %struct.floppy_struct, %struct.floppy_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %35 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %20, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @get_floppy_geometry(%struct.floppy_state*, i32, %struct.floppy_struct**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
