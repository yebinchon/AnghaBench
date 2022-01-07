; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_invalidate_release_mem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_invalidate_release_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)* }

@fadump_mutex = common dso_local global i32 0, align 4
@fw_dump = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to setup kernel metadata!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fadump_invalidate_release_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fadump_invalidate_release_mem() #0 {
  %1 = call i32 @mutex_lock(i32* @fadump_mutex)
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 2), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @mutex_unlock(i32* @fadump_mutex)
  br label %30

6:                                                ; preds = %0
  %7 = call i32 (...) @fadump_cleanup()
  %8 = call i32 @mutex_unlock(i32* @fadump_mutex)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 1), align 8
  %10 = call i32 (...) @memblock_end_of_DRAM()
  %11 = call i32 @fadump_release_memory(i32 %9, i32 %10)
  %12 = call i32 (...) @fadump_free_cpu_notes_buf()
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64 (%struct.TYPE_6__*)*, i64 (%struct.TYPE_6__*)** %14, align 8
  %16 = icmp ne i64 (%struct.TYPE_6__*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %6
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_6__*)*, i64 (%struct.TYPE_6__*)** %19, align 8
  %21 = call i64 %20(%struct.TYPE_6__* @fw_dump)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17, %6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %27, align 8
  %29 = call i32 %28(%struct.TYPE_6__* @fw_dump)
  br label %30

30:                                               ; preds = %25, %4
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fadump_cleanup(...) #1

declare dso_local i32 @fadump_release_memory(i32, i32) #1

declare dso_local i32 @memblock_end_of_DRAM(...) #1

declare dso_local i32 @fadump_free_cpu_notes_buf(...) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
