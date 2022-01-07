; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_create_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_generic.c_agp_create_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i64, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AGP_NORMAL_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agp_memory* @agp_create_memory(i32 %0) #0 {
  %2 = alloca %struct.agp_memory*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_memory*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.agp_memory* @kzalloc(i32 24, i32 %5)
  store %struct.agp_memory* %6, %struct.agp_memory** %4, align 8
  %7 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %8 = icmp eq %struct.agp_memory* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.agp_memory* null, %struct.agp_memory** %2, align 8
  br label %46

10:                                               ; preds = %1
  %11 = call i64 (...) @agp_get_key()
  %12 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %13 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %15 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %20 = call i32 @kfree(%struct.agp_memory* %19)
  store %struct.agp_memory* null, %struct.agp_memory** %2, align 8
  br label %46

21:                                               ; preds = %10
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %26 = call i32 @agp_alloc_page_array(i32 %24, %struct.agp_memory* %25)
  %27 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %28 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %33 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @agp_free_key(i64 %34)
  %36 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %37 = call i32 @kfree(%struct.agp_memory* %36)
  store %struct.agp_memory* null, %struct.agp_memory** %2, align 8
  br label %46

38:                                               ; preds = %21
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %41 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @AGP_NORMAL_MEMORY, align 4
  %43 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  %44 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  store %struct.agp_memory* %45, %struct.agp_memory** %2, align 8
  br label %46

46:                                               ; preds = %38, %31, %18, %9
  %47 = load %struct.agp_memory*, %struct.agp_memory** %2, align 8
  ret %struct.agp_memory* %47
}

declare dso_local %struct.agp_memory* @kzalloc(i32, i32) #1

declare dso_local i64 @agp_get_key(...) #1

declare dso_local i32 @kfree(%struct.agp_memory*) #1

declare dso_local i32 @agp_alloc_page_array(i32, %struct.agp_memory*) #1

declare dso_local i32 @agp_free_key(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
