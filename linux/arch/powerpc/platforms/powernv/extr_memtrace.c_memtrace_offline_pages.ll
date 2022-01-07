; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_memtrace.c_memtrace_offline_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_memtrace.c_memtrace_offline_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_memblock_online = common dso_local global i32 0, align 4
@MEM_GOING_OFFLINE = common dso_local global i64 0, align 8
@change_memblock_state = common dso_local global i32 0, align 4
@MEM_ONLINE = common dso_local global i64 0, align 8
@MEM_OFFLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @memtrace_offline_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memtrace_offline_pages(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @PFN_PHYS(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @PFN_PHYS(i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @check_memblock_online, align 4
  %17 = call i64 @walk_memory_blocks(i64 %14, i64 %15, i8* null, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @MEM_GOING_OFFLINE, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* @change_memblock_state, align 4
  %26 = call i64 @walk_memory_blocks(i64 %21, i64 %22, i8* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @offline_pages(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @MEM_ONLINE, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* @change_memblock_state, align 4
  %37 = call i64 @walk_memory_blocks(i64 %32, i64 %33, i8* %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %45

38:                                               ; preds = %20
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @MEM_OFFLINE, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32, i32* @change_memblock_state, align 4
  %44 = call i64 @walk_memory_blocks(i64 %39, i64 %40, i8* %42, i32 %43)
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %31, %19
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @PFN_PHYS(i32) #1

declare dso_local i64 @walk_memory_blocks(i64, i64, i8*, i32) #1

declare dso_local i64 @offline_pages(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
