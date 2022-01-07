; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spu_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spu_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.spu_context*)* }

@SPU_STATUS_INVALID_INSTR = common dso_local global i32 0, align 4
@SPU_STATUS_SINGLE_STEP = common dso_local global i32 0, align 4
@SPU_STATUS_STOPPED_BY_HALT = common dso_local global i32 0, align 4
@SPU_STATUS_STOPPED_BY_STOP = common dso_local global i32 0, align 4
@SPU_STATUS_RUNNING = common dso_local global i32 0, align 4
@SPU_SCHED_NOTIFY_ACTIVE = common dso_local global i32 0, align 4
@MFC_DSISR_PTE_NOT_FOUND = common dso_local global i32 0, align 4
@MFC_DSISR_ACCESS_DENIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spu_stopped(%struct.spu_context* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @SPU_STATUS_INVALID_INSTR, align 4
  %9 = load i32, i32* @SPU_STATUS_SINGLE_STEP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SPU_STATUS_STOPPED_BY_HALT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %35, %2
  %16 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %17 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.spu_context*)*, i32 (%struct.spu_context*)** %19, align 8
  %21 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %22 = call i32 %20(%struct.spu_context* %21)
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %15
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SPU_STATUS_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %15

36:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %64

37:                                               ; preds = %15
  %38 = load i32, i32* @SPU_SCHED_NOTIFY_ACTIVE, align 4
  %39 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %40 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %64

44:                                               ; preds = %37
  %45 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %46 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MFC_DSISR_PTE_NOT_FOUND, align 4
  %51 = load i32, i32* @MFC_DSISR_ACCESS_DENIED, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %64

56:                                               ; preds = %44
  %57 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %58 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %55, %43, %36
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
