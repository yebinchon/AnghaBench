; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_perf_event_print_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_perf_event_print_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@MAX_HWEVENTS = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Performance monitor hardware not registered.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"CPU: %d PMU registers, ppmu = %s n_counters = %d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"PMC1:  %08x PMC2: %08x PMC3: %08x PMC4: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"PMC5:  %08x PMC6: %08x PMC7: %08x PMC8: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"MMCR0: %016lx MMCR1: %016lx MMCRA: %016lx\0A\00", align 1
@SPRN_MMCR0 = common dso_local global i32 0, align 4
@SPRN_MMCR1 = common dso_local global i32 0, align 4
@SPRN_MMCRA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"SIAR:  %016lx SDAR:  %016lx SIER:  %016lx\0A\00", align 1
@SPRN_SIAR = common dso_local global i32 0, align 4
@PPMU_ARCH_207S = common dso_local global i32 0, align 4
@PPMU_HAS_SIER = common dso_local global i32 0, align 4
@SPRN_BESCR = common dso_local global i32 0, align 4
@SPRN_EBBHR = common dso_local global i32 0, align 4
@SPRN_EBBRR = common dso_local global i32 0, align 4
@SPRN_MMCR2 = common dso_local global i32 0, align 4
@SPRN_SDAR = common dso_local global i32 0, align 4
@SPRN_SIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_print_debug() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_HWEVENTS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %101

16:                                               ; preds = %0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %101

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = call i64 (...) @smp_processor_id()
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %25, i64 %28, i64 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %47, %22
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @read_pmc(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %11, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %33

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %59, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MAX_HWEVENTS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %11, i64 %57
  store i32 -559038737, i32* %58, align 4
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %51

62:                                               ; preds = %51
  %63 = getelementptr inbounds i32, i32* %11, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = getelementptr inbounds i32, i32* %11, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds i32, i32* %11, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds i32, i32* %11, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %66, i32 %68, i32 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ugt i64 %74, 4
  br i1 %75, label %76, label %86

76:                                               ; preds = %62
  %77 = getelementptr inbounds i32, i32* %11, i64 4
  %78 = load i32, i32* %77, align 16
  %79 = getelementptr inbounds i32, i32* %11, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds i32, i32* %11, i64 6
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds i32, i32* %11, i64 7
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %80, i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %76, %62
  %87 = load i32, i32* @SPRN_MMCR0, align 4
  %88 = call i64 @mfspr(i32 %87)
  %89 = load i32, i32* @SPRN_MMCR1, align 4
  %90 = call i64 @mfspr(i32 %89)
  %91 = load i32, i32* @SPRN_MMCRA, align 4
  %92 = call i64 @mfspr(i32 %91)
  %93 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %88, i64 %90, i64 %92)
  store i64 0, i64* %2, align 8
  store i64 0, i64* %1, align 8
  %94 = load i32, i32* @SPRN_SIAR, align 4
  %95 = call i64 @mfspr(i32 %94)
  %96 = load i64, i64* %1, align 8
  %97 = load i64, i64* %2, align 8
  %98 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %95, i64 %96, i64 %97)
  %99 = load i64, i64* %3, align 8
  %100 = call i32 @local_irq_restore(i64 %99)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %86, %21, %14
  %102 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %7, align 4
  switch i32 %103, label %105 [
    i32 0, label %104
    i32 1, label %104
  ]

104:                                              ; preds = %101, %101
  ret void

105:                                              ; preds = %101
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local i64 @smp_processor_id(...) #2

declare dso_local i32 @read_pmc(i32) #2

declare dso_local i64 @mfspr(i32) #2

declare dso_local i32 @local_irq_restore(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
