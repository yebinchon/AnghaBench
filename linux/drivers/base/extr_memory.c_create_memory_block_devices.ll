; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_create_memory_block_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_create_memory_block_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@mem_sysfs_mutex = common dso_local global i32 0, align 4
@MEM_OFFLINE = common dso_local global i32 0, align 4
@sections_per_block = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_memory_block_devices(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.memory_block*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @PFN_DOWN(i64 %11)
  %13 = call i8* @pfn_to_block_id(i32 %12)
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @PFN_DOWN(i64 %17)
  %19 = call i8* @pfn_to_block_id(i32 %18)
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 (...) @memory_block_size_bytes()
  %23 = call i32 @IS_ALIGNED(i64 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (...) @memory_block_size_bytes()
  %28 = call i32 @IS_ALIGNED(i64 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %2
  %32 = phi i1 [ true, %2 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %84

39:                                               ; preds = %31
  %40 = call i32 @mutex_lock(i32* @mem_sysfs_mutex)
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %57, %39
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* @MEM_OFFLINE, align 4
  %49 = call i32 @init_memory_block(%struct.memory_block** %8, i64 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %60

53:                                               ; preds = %46
  %54 = load i64, i64* @sections_per_block, align 8
  %55 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %56 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %42

60:                                               ; preds = %52, %42
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %77, %63
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = call %struct.memory_block* @find_memory_block_by_id(i64 %71)
  store %struct.memory_block* %72, %struct.memory_block** %8, align 8
  %73 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %74 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.memory_block*, %struct.memory_block** %8, align 8
  %76 = call i32 @unregister_memory(%struct.memory_block* %75)
  br label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %66

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %60
  %82 = call i32 @mutex_unlock(i32* @mem_sysfs_mutex)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %36
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @pfn_to_block_id(i32) #1

declare dso_local i32 @PFN_DOWN(i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @memory_block_size_bytes(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_memory_block(%struct.memory_block**, i64, i32) #1

declare dso_local %struct.memory_block* @find_memory_block_by_id(i64) #1

declare dso_local i32 @unregister_memory(%struct.memory_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
