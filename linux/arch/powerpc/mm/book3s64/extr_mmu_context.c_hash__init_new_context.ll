; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_mmu_context.c_hash__init_new_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_mmu_context.c_hash__init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.mm_struct = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*)* @hash__init_new_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash__init_new_context(%struct.mm_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kmalloc(i32 4, i32 %5)
  %7 = bitcast i8* %6 to %struct.TYPE_12__*
  %8 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %10, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %62

19:                                               ; preds = %1
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = call i32 @memset(%struct.TYPE_12__* %29, i32 0, i32 4)
  %31 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %32 = call i32 @slice_init_new_context_exec(%struct.mm_struct* %31)
  br label %45

33:                                               ; preds = %19
  %34 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = call i32 @memcpy(%struct.TYPE_12__* %37, %struct.TYPE_13__* %43, i32 4)
  br label %45

45:                                               ; preds = %33, %25
  %46 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  %48 = call i32 @realloc_context_ids(%struct.TYPE_11__* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i32 @kfree(%struct.TYPE_12__* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %45
  %59 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %60 = call i32 @pkey_mm_init(%struct.mm_struct* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %51, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @slice_init_new_context_exec(%struct.mm_struct*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @realloc_context_ids(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

declare dso_local i32 @pkey_mm_init(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
