; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_init_memory_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_init_memory_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { i64, i64, i32, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sections_per_block = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memory_block**, i64, i64)* @init_memory_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_memory_block(%struct.memory_block** %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.memory_block**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.memory_block*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.memory_block** %0, %struct.memory_block*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.memory_block* @find_memory_block_by_id(i64 %11)
  store %struct.memory_block* %12, %struct.memory_block** %8, align 8
  %13 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %14 = icmp ne %struct.memory_block* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %17 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %16, i32 0, i32 4
  %18 = call i32 @put_device(i32* %17)
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.memory_block* @kzalloc(i32 32, i32 %22)
  store %struct.memory_block* %23, %struct.memory_block** %8, align 8
  %24 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %25 = icmp ne %struct.memory_block* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %54

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @sections_per_block, align 8
  %32 = mul i64 %30, %31
  %33 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %34 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %37 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %39 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @section_nr_to_pfn(i64 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @arch_get_memory_phys_device(i64 %42)
  %44 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %45 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @NUMA_NO_NODE, align 4
  %47 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %48 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %50 = call i32 @register_memory(%struct.memory_block* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %52 = load %struct.memory_block**, %struct.memory_block*** %5, align 8
  store %struct.memory_block* %51, %struct.memory_block** %52, align 8
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %29, %26, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.memory_block* @find_memory_block_by_id(i64) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local %struct.memory_block* @kzalloc(i32, i32) #1

declare dso_local i64 @section_nr_to_pfn(i64) #1

declare dso_local i32 @arch_get_memory_phys_device(i64) #1

declare dso_local i32 @register_memory(%struct.memory_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
