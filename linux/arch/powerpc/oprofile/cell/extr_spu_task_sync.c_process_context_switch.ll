; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/cell/extr_spu_task_sync.c_process_context_switch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/cell/extr_spu_task_sync.c_process_context_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.spu = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@buffer_lock = common dso_local global i32 0, align 4
@ESCAPE_CODE = common dso_local global i32 0, align 4
@SPU_CTX_SWITCH_CODE = common dso_local global i32 0, align 4
@spu_buff = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu*, i64)* @process_context_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_context_switch(%struct.spu* %0, i64 %1) #0 {
  %3 = alloca %struct.spu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.spu* %0, %struct.spu** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load %struct.spu*, %struct.spu** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @prepare_cached_spu_info(%struct.spu* %10, i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.spu*, %struct.spu** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @get_exec_dcookie_and_offset(%struct.spu* %17, i32* %7, i64* %8, i64 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %89

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @buffer_lock, i64 %29)
  %31 = load i32, i32* @ESCAPE_CODE, align 4
  %32 = load %struct.spu*, %struct.spu** %3, align 8
  %33 = getelementptr inbounds %struct.spu, %struct.spu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spu_buff_add(i32 %31, i32 %34)
  %36 = load i32, i32* @SPU_CTX_SWITCH_CODE, align 4
  %37 = load %struct.spu*, %struct.spu** %3, align 8
  %38 = getelementptr inbounds %struct.spu, %struct.spu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @spu_buff_add(i32 %36, i32 %39)
  %41 = load %struct.spu*, %struct.spu** %3, align 8
  %42 = getelementptr inbounds %struct.spu, %struct.spu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.spu*, %struct.spu** %3, align 8
  %45 = getelementptr inbounds %struct.spu, %struct.spu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @spu_buff_add(i32 %43, i32 %46)
  %48 = load %struct.spu*, %struct.spu** %3, align 8
  %49 = getelementptr inbounds %struct.spu, %struct.spu* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.spu*, %struct.spu** %3, align 8
  %52 = getelementptr inbounds %struct.spu, %struct.spu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @spu_buff_add(i32 %50, i32 %53)
  %55 = load %struct.spu*, %struct.spu** %3, align 8
  %56 = getelementptr inbounds %struct.spu, %struct.spu* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.spu*, %struct.spu** %3, align 8
  %59 = getelementptr inbounds %struct.spu, %struct.spu* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @spu_buff_add(i32 %57, i32 %60)
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.spu*, %struct.spu** %3, align 8
  %65 = getelementptr inbounds %struct.spu, %struct.spu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spu_buff_add(i32 %63, i32 %66)
  %68 = load i64, i64* %8, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.spu*, %struct.spu** %3, align 8
  %71 = getelementptr inbounds %struct.spu, %struct.spu* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @spu_buff_add(i32 %69, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.spu*, %struct.spu** %3, align 8
  %76 = getelementptr inbounds %struct.spu, %struct.spu* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @spu_buff_add(i32 %74, i32 %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_buff, align 8
  %80 = load %struct.spu*, %struct.spu** %3, align 8
  %81 = getelementptr inbounds %struct.spu, %struct.spu* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* @buffer_lock, i64 %86)
  %88 = call i32 (...) @smp_wmb()
  br label %89

89:                                               ; preds = %28, %25, %15
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @prepare_cached_spu_info(%struct.spu*, i64) #1

declare dso_local i64 @get_exec_dcookie_and_offset(%struct.spu*, i32*, i64*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spu_buff_add(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
