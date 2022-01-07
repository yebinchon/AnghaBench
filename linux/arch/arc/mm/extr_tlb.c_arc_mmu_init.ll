; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_arc_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_arc_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cpuinfo_arc_mmu }
%struct.cpuinfo_arc_mmu = type { i64, i64, i64, i32 }

@cpuinfo_arc700 = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CONFIG_ARC_KVADDR_SIZE = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@STACK_TOP = common dso_local global i32 0, align 4
@CONFIG_ARC_MMU_VER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"MMU ver %d doesn't match kernel built for %d...\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"MMU pg size != PAGE_SIZE (%luk)\0A\00", align 1
@CONFIG_TRANSPARENT_HUGEPAGE = common dso_local global i32 0, align 4
@HPAGE_PMD_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"MMU Super pg size != Linux HPAGE_PMD_SIZE (%luM)\0A\00", align 1
@CONFIG_ARC_HAS_PAE40 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Hardware doesn't support PAE40\0A\00", align 1
@ARC_REG_PID = common dso_local global i32 0, align 4
@MMU_ENABLE = common dso_local global i32 0, align 4
@ARC_REG_SCRATCH_DATA0 = common dso_local global i32 0, align 4
@swapper_pg_dir = common dso_local global i32 0, align 4
@ARC_REG_TLBPD1HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_mmu_init() #0 {
  %1 = alloca %struct.cpuinfo_arc_mmu*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuinfo_arc700, align 8
  %5 = call i64 (...) @smp_processor_id()
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.cpuinfo_arc_mmu* %7, %struct.cpuinfo_arc_mmu** %1, align 8
  store i32 0, i32* %3, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %9 = call i32 @arc_mmu_mumbojumbo(i32 0, i8* %8, i32 256)
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @CONFIG_ARC_KVADDR_SIZE, align 4
  %12 = shl i32 %11, 20
  %13 = load i32, i32* @PMD_SIZE, align 4
  %14 = call i32 @IS_ALIGNED(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load i32, i32* @STACK_TOP, align 4
  %20 = load i32, i32* @PMD_SIZE, align 4
  %21 = call i32 @IS_ALIGNED(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUILD_BUG_ON(i32 %24)
  %26 = call i64 (...) @is_isa_arcompact()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %0
  %29 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %1, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CONFIG_ARC_MMU_VER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %46

35:                                               ; preds = %28, %0
  %36 = call i64 (...) @is_isa_arcv2()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %1, align 8
  %40 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CONFIG_ARC_MMU_VER, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %38, %35
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %1, align 8
  %51 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CONFIG_ARC_MMU_VER, align 8
  %54 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %49, %46
  %56 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %1, align 8
  %57 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i64 @TO_KB(i32 %59)
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i64 @TO_KB(i32 %63)
  %65 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32, i32* @CONFIG_TRANSPARENT_HUGEPAGE, align 4
  %68 = call i64 @IS_ENABLED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %1, align 8
  %72 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @HPAGE_PMD_SIZE, align 4
  %75 = call i64 @TO_MB(i32 %74)
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @HPAGE_PMD_SIZE, align 4
  %79 = call i64 @TO_MB(i32 %78)
  %80 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %77, %70, %66
  %82 = load i32, i32* @CONFIG_ARC_HAS_PAE40, align 4
  %83 = call i64 @IS_ENABLED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %1, align 8
  %87 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85, %81
  %93 = load i32, i32* @ARC_REG_PID, align 4
  %94 = load i32, i32* @MMU_ENABLE, align 4
  %95 = call i32 @write_aux_reg(i32 %93, i32 %94)
  %96 = load i32, i32* @ARC_REG_SCRATCH_DATA0, align 4
  %97 = load i32, i32* @swapper_pg_dir, align 4
  %98 = call i32 @write_aux_reg(i32 %96, i32 %97)
  %99 = call i64 (...) @pae40_exist_but_not_enab()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* @ARC_REG_TLBPD1HI, align 4
  %103 = call i32 @write_aux_reg(i32 %102, i32 0)
  br label %104

104:                                              ; preds = %101, %92
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @arc_mmu_mumbojumbo(i32, i8*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @is_isa_arcompact(...) #1

declare dso_local i64 @is_isa_arcv2(...) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @TO_KB(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @TO_MB(i32) #1

declare dso_local i32 @write_aux_reg(i32, i32) #1

declare dso_local i64 @pae40_exist_but_not_enab(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
