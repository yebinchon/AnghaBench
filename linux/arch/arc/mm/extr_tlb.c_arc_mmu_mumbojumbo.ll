; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_arc_mmu_mumbojumbo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_arc_mmu_mumbojumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cpuinfo_arc_mmu }
%struct.cpuinfo_arc_mmu = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@cpuinfo_arc700 = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"%dM Super Page %s\00", align 1
@CONFIG_TRANSPARENT_HUGEPAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"MMU [v%x]\09: %dk PAGE, %sJTLB %d (%dx%d), uDTLB %d, uITLB %d%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c", PAE40 \00", align 1
@CONFIG_ARC_HAS_PAE40 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arc_mmu_mumbojumbo(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpuinfo_arc_mmu*, align 8
  %9 = alloca [64 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuinfo_arc700, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.cpuinfo_arc_mmu* %14, %struct.cpuinfo_arc_mmu** %8, align 8
  %15 = bitcast [64 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 64, i1 false)
  %16 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %22 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %23 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @CONFIG_TRANSPARENT_HUGEPAGE, align 4
  %27 = call i32 @IS_USED_CFG(i32 %26)
  %28 = call i64 (i8*, i32, i8*, i32, i32, ...) @scnprintf(i8* %21, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %20, %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %38 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %41 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %44 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %48 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %52 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %55 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %58 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %61 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %8, align 8
  %64 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CONFIG_ARC_HAS_PAE40, align 4
  %67 = call i32 @IS_AVAIL2(i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = call i64 (i8*, i32, i8*, i32, i32, ...) @scnprintf(i8* %33, i32 %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i8* %43, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i8*, i8** %5, align 8
  ret i8* %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32, i32, ...) #2

declare dso_local i32 @IS_USED_CFG(i32) #2

declare dso_local i32 @IS_AVAIL2(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
