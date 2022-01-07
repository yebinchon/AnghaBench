; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_register_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_register_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@memory_subsys = common dso_local global i32 0, align 4
@sections_per_block = common dso_local global i32 0, align 4
@memory_block_release = common dso_local global i32 0, align 4
@memory_memblk_attr_groups = common dso_local global i32 0, align 4
@MEM_OFFLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_block*)* @register_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_memory(%struct.memory_block* %0) #0 {
  %2 = alloca %struct.memory_block*, align 8
  %3 = alloca i32, align 4
  store %struct.memory_block* %0, %struct.memory_block** %2, align 8
  %4 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %5 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i32* @memory_subsys, i32** %6, align 8
  %7 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %8 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @sections_per_block, align 4
  %11 = sdiv i32 %9, %10
  %12 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %13 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @memory_block_release, align 4
  %16 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %17 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @memory_memblk_attr_groups, align 4
  %20 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %21 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %24 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MEM_OFFLINE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %30 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %33 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %32, i32 0, i32 2
  %34 = call i32 @device_register(%struct.TYPE_3__* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.memory_block*, %struct.memory_block** %2, align 8
  %39 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %38, i32 0, i32 2
  %40 = call i32 @put_device(%struct.TYPE_3__* %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @device_register(%struct.TYPE_3__*) #1

declare dso_local i32 @put_device(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
