; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_object_map_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_object_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32*, i32 }

@OBJ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, i64)* @__rbd_object_map_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rbd_object_map_get(%struct.rbd_device* %0, i64 %1) #0 {
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %8 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @__rbd_object_map_index(%struct.rbd_device* %10, i64 %11, i64* %5, i32* %6)
  %13 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @OBJ_MASK, align 4
  %22 = and i32 %20, %21
  ret i32 %22
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__rbd_object_map_index(%struct.rbd_device*, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
