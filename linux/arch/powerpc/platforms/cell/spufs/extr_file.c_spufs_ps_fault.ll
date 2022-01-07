; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_ps_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_ps_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.vm_fault = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.spu_context* }
%struct.spu_context = type { i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@spufs_ps_fault__enter = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_11__* null, align 8
@SPU_STATE_SAVED = common dso_local global i64 0, align 8
@spufs_ps_fault__sleep = common dso_local global i32 0, align 4
@SPU_STATE_RUNNABLE = common dso_local global i64 0, align 8
@spufs_ps_fault__wake = common dso_local global i32 0, align 4
@spufs_ps_fault__insert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*, i64, i64)* @spufs_ps_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_ps_fault(%struct.vm_fault* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spu_context*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.spu_context*, %struct.spu_context** %18, align 8
  store %struct.spu_context* %19, %struct.spu_context** %8, align 8
  %20 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = shl i64 %22, %23
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @spufs_ps_fault__enter, align 4
  %27 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %28 = call i32 @spu_context_nospu_trace(i32 %26, %struct.spu_context* %27)
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %33, i32* %4, align 4
  br label %120

34:                                               ; preds = %3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %36 = call i64 @fatal_signal_pending(%struct.TYPE_11__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %39, i32* %4, align 4
  br label %120

40:                                               ; preds = %34
  %41 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %42 = call i32 @get_spu_context(%struct.spu_context* %41)
  %43 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %44 = call i64 @spu_acquire(%struct.spu_context* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %116

47:                                               ; preds = %40
  %48 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %49 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SPU_STATE_SAVED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %47
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @up_read(i32* %57)
  %59 = load i32, i32* @spufs_ps_fault__sleep, align 4
  %60 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %61 = call i32 @spu_context_nospu_trace(i32 %59, %struct.spu_context* %60)
  %62 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %63 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %66 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SPU_STATE_RUNNABLE, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @spufs_wait(i32 %64, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @spufs_ps_fault__wake, align 4
  %73 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %74 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %75 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @spu_context_trace(i32 %72, %struct.spu_context* %73, %struct.TYPE_10__* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 @down_read(i32* %81)
  br label %109

83:                                               ; preds = %47
  %84 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %85 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %88, %89
  store i64 %90, i64* %9, align 8
  %91 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %92 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %95 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %97, %98
  %100 = load i64, i64* @PAGE_SHIFT, align 8
  %101 = lshr i64 %99, %100
  %102 = call i32 @vmf_insert_pfn(%struct.TYPE_9__* %93, i32 %96, i64 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* @spufs_ps_fault__insert, align 4
  %104 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %105 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %106 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = call i32 @spu_context_trace(i32 %103, %struct.spu_context* %104, %struct.TYPE_10__* %107)
  br label %109

109:                                              ; preds = %83, %53
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %114 = call i32 @spu_release(%struct.spu_context* %113)
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %46
  %117 = load %struct.spu_context*, %struct.spu_context** %8, align 8
  %118 = call i32 @put_spu_context(%struct.spu_context* %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %116, %38, %32
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @spu_context_nospu_trace(i32, %struct.spu_context*) #1

declare dso_local i64 @fatal_signal_pending(%struct.TYPE_11__*) #1

declare dso_local i32 @get_spu_context(%struct.spu_context*) #1

declare dso_local i64 @spu_acquire(%struct.spu_context*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @spufs_wait(i32, i32) #1

declare dso_local i32 @spu_context_trace(i32, %struct.spu_context*, %struct.TYPE_10__*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @vmf_insert_pfn(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

declare dso_local i32 @put_spu_context(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
