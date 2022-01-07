; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_remove_memory_block_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_remove_memory_block_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { i64 }

@mem_sysfs_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_memory_block_devices(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.memory_block*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @PFN_DOWN(i64 %9)
  %11 = call i64 @pfn_to_block_id(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %12, %13
  %15 = call i32 @PFN_DOWN(i64 %14)
  %16 = call i64 @pfn_to_block_id(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 (...) @memory_block_size_bytes()
  %19 = call i32 @IS_ALIGNED(i64 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = call i32 (...) @memory_block_size_bytes()
  %24 = call i32 @IS_ALIGNED(i64 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ true, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %62

33:                                               ; preds = %27
  %34 = call i32 @mutex_lock(i32* @mem_sysfs_mutex)
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %57, %33
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = call %struct.memory_block* @find_memory_block_by_id(i64 %41)
  store %struct.memory_block* %42, %struct.memory_block** %7, align 8
  %43 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %44 = icmp ne %struct.memory_block* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %57

50:                                               ; preds = %40
  %51 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %52 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %54 = call i32 @unregister_memory_block_under_nodes(%struct.memory_block* %53)
  %55 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %56 = call i32 @unregister_memory(%struct.memory_block* %55)
  br label %57

57:                                               ; preds = %50, %49
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %36

60:                                               ; preds = %36
  %61 = call i32 @mutex_unlock(i32* @mem_sysfs_mutex)
  br label %62

62:                                               ; preds = %60, %32
  ret void
}

declare dso_local i64 @pfn_to_block_id(i32) #1

declare dso_local i32 @PFN_DOWN(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @memory_block_size_bytes(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.memory_block* @find_memory_block_by_id(i64) #1

declare dso_local i32 @unregister_memory_block_under_nodes(%struct.memory_block*) #1

declare dso_local i32 @unregister_memory(%struct.memory_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
