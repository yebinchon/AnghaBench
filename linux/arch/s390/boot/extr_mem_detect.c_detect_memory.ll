; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_mem_detect.c_detect_memory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_mem_detect.c_detect_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@max_physmem_end = common dso_local global i64 0, align 8
@MEM_DETECT_SCLP_STOR_INFO = common dso_local global i32 0, align 4
@mem_detect = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MEM_DETECT_DIAG260 = common dso_local global i32 0, align 4
@MEM_DETECT_SCLP_READ_INFO = common dso_local global i32 0, align 4
@MEM_DETECT_BIN_SEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_memory() #0 {
  %1 = call i32 @sclp_early_get_memsize(i64* @max_physmem_end)
  %2 = call i32 (...) @sclp_early_read_storage_info()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @MEM_DETECT_SCLP_STOR_INFO, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_detect, i32 0, i32 0), align 4
  br label %22

6:                                                ; preds = %0
  %7 = call i32 (...) @diag260()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @MEM_DETECT_DIAG260, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_detect, i32 0, i32 0), align 4
  br label %22

11:                                               ; preds = %6
  %12 = load i64, i64* @max_physmem_end, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* @max_physmem_end, align 8
  %16 = call i32 @add_mem_detect_block(i32 0, i64 %15)
  %17 = load i32, i32* @MEM_DETECT_SCLP_READ_INFO, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_detect, i32 0, i32 0), align 4
  br label %22

18:                                               ; preds = %11
  %19 = call i32 (...) @search_mem_end()
  %20 = load i32, i32* @MEM_DETECT_BIN_SEARCH, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mem_detect, i32 0, i32 0), align 4
  %21 = call i64 (...) @get_mem_detect_end()
  store i64 %21, i64* @max_physmem_end, align 8
  br label %22

22:                                               ; preds = %18, %14, %9, %4
  ret void
}

declare dso_local i32 @sclp_early_get_memsize(i64*) #1

declare dso_local i32 @sclp_early_read_storage_info(...) #1

declare dso_local i32 @diag260(...) #1

declare dso_local i32 @add_mem_detect_block(i32, i64) #1

declare dso_local i32 @search_mem_end(...) #1

declare dso_local i64 @get_mem_detect_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
