; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_add_memory_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_add_memory_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_block = type { i32 }

@sections_per_block = common dso_local global i64 0, align 8
@MEM_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @add_memory_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_memory_block(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.memory_block*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @sections_per_block, align 8
  %13 = add i64 %11, %12
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @present_section_nr(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  br label %9

26:                                               ; preds = %9
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %43

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @base_memory_block_id(i64 %31)
  %33 = load i32, i32* @MEM_ONLINE, align 4
  %34 = call i32 @init_memory_block(%struct.memory_block** %6, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.memory_block*, %struct.memory_block** %6, align 8
  %42 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %37, %29
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @present_section_nr(i64) #1

declare dso_local i32 @init_memory_block(%struct.memory_block**, i32, i32) #1

declare dso_local i32 @base_memory_block_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
