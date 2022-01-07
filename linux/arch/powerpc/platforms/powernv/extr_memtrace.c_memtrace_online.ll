; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_memtrace.c_memtrace_online.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_memtrace.c_memtrace_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memtrace_entry = type { i64, i64, i64, i32, i64 }

@memtrace_array_nr = common dso_local global i32 0, align 4
@memtrace_array = common dso_local global %struct.memtrace_entry* null, align 8
@NUMA_NO_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to add trace memory to node %d\0A\00", align 1
@memhp_auto_online = common dso_local global i32 0, align 4
@online_mem_block = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Added trace memory back to node %d\0A\00", align 1
@memtrace_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @memtrace_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memtrace_online() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.memtrace_entry*, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @memtrace_array_nr, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %2, align 4
  br label %7

7:                                                ; preds = %82, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %85

10:                                               ; preds = %7
  %11 = load %struct.memtrace_entry*, %struct.memtrace_entry** @memtrace_array, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %11, i64 %13
  store %struct.memtrace_entry* %14, %struct.memtrace_entry** %4, align 8
  %15 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %16 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NUMA_NO_NODE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %82

21:                                               ; preds = %10
  %22 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %23 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %28 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iounmap(i64 %29)
  %31 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %32 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %35 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %38 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %41 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @add_memory(i64 %36, i64 %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %47 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %82

52:                                               ; preds = %33
  %53 = load i32, i32* @memhp_auto_online, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = call i32 (...) @lock_device_hotplug()
  %57 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %58 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %61 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @online_mem_block, align 4
  %64 = call i32 @walk_memory_blocks(i64 %59, i64 %62, i32* null, i32 %63)
  %65 = call i32 (...) @unlock_device_hotplug()
  br label %66

66:                                               ; preds = %55, %52
  %67 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %68 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @debugfs_remove_recursive(i32 %69)
  %71 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %72 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* @NUMA_NO_NODE, align 8
  %76 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %77 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %79 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %78, i32 0, i32 1
  store i64 %75, i64* %79, align 8
  %80 = load %struct.memtrace_entry*, %struct.memtrace_entry** %4, align 8
  %81 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %80, i32 0, i32 2
  store i64 %75, i64* %81, align 8
  br label %82

82:                                               ; preds = %66, %45, %20
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %2, align 4
  br label %7

85:                                               ; preds = %7
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* %3, align 4
  store i32 %89, i32* %1, align 4
  br label %93

90:                                               ; preds = %85
  %91 = load %struct.memtrace_entry*, %struct.memtrace_entry** @memtrace_array, align 8
  %92 = call i32 @kfree(%struct.memtrace_entry* %91)
  store %struct.memtrace_entry* null, %struct.memtrace_entry** @memtrace_array, align 8
  store i64 0, i64* @memtrace_size, align 8
  store i32 0, i32* @memtrace_array_nr, align 4
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %90, %88
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i32 @iounmap(i64) #1

declare dso_local i64 @add_memory(i64, i64, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @lock_device_hotplug(...) #1

declare dso_local i32 @walk_memory_blocks(i64, i64, i32*, i32) #1

declare dso_local i32 @unlock_device_hotplug(...) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @kfree(%struct.memtrace_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
