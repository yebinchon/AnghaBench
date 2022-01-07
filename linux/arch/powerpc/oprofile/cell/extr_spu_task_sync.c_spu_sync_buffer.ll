; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/cell/extr_spu_task_sync.c_spu_sync_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/cell/extr_spu_task_sync.c_spu_sync_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.vma_to_fileoffset_map = type { i32 }
%struct.spu = type { i32 }
%struct.cached_info = type { %struct.spu*, %struct.vma_to_fileoffset_map* }

@cache_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"SPU_PROF: No cached SPU contex for SPU #%d. Dropping samples.\0A\00", align 1
@buffer_lock = common dso_local global i32 0, align 4
@spu_buff = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_sync_buffer(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vma_to_fileoffset_map*, align 8
  %11 = alloca %struct.spu*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cached_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = shl i64 %19, 32
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* @cache_lock, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.cached_info* @get_cached_info(i32* null, i32 %23)
  store %struct.cached_info* %24, %struct.cached_info** %14, align 8
  %25 = load %struct.cached_info*, %struct.cached_info** %14, align 8
  %26 = icmp ne %struct.cached_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %94

30:                                               ; preds = %3
  %31 = load %struct.cached_info*, %struct.cached_info** %14, align 8
  %32 = getelementptr inbounds %struct.cached_info, %struct.cached_info* %31, i32 0, i32 1
  %33 = load %struct.vma_to_fileoffset_map*, %struct.vma_to_fileoffset_map** %32, align 8
  store %struct.vma_to_fileoffset_map* %33, %struct.vma_to_fileoffset_map** %10, align 8
  %34 = load %struct.cached_info*, %struct.cached_info** %14, align 8
  %35 = getelementptr inbounds %struct.cached_info, %struct.cached_info* %34, i32 0, i32 0
  %36 = load %struct.spu*, %struct.spu** %35, align 8
  store %struct.spu* %36, %struct.spu** %11, align 8
  %37 = call i32 @spin_lock(i32* @buffer_lock)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %89, %30
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %92

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %7, align 8
  %48 = load i32, i32* %15, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %89

51:                                               ; preds = %42
  %52 = load %struct.vma_to_fileoffset_map*, %struct.vma_to_fileoffset_map** %10, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.spu*, %struct.spu** %11, align 8
  %55 = call i64 @vma_map_lookup(%struct.vma_to_fileoffset_map* %52, i32 %53, %struct.spu* %54, i32* %16)
  store i64 %55, i64* %7, align 8
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_buff, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %59, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_buff, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  br label %92

74:                                               ; preds = %58, %51
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_buff, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %13, align 8
  %85 = or i64 %83, %84
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @spu_buff_add(i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %74
  br label %89

89:                                               ; preds = %88, %50
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %38

92:                                               ; preds = %67, %38
  %93 = call i32 @spin_unlock(i32* @buffer_lock)
  br label %94

94:                                               ; preds = %92, %27
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* @cache_lock, i64 %95)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.cached_info* @get_cached_info(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @vma_map_lookup(%struct.vma_to_fileoffset_map*, i32, %struct.spu*, i32*) #1

declare dso_local i32 @spu_buff_add(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
