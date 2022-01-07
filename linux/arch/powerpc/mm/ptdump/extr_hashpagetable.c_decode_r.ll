; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_decode_r.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_decode_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_psize_def = type { i32*, i64 }

@HPTE_R_RPN = common dso_local global i64 0, align 8
@HPTE_R_RPN_SHIFT = common dso_local global i64 0, align 8
@mmu_psize_defs = common dso_local global %struct.mmu_psize_def* null, align 8
@MMU_PAGE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64*, i32*, i64*)* @decode_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_r(i32 %0, i64 %1, i64* %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.mmu_psize_def, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 -2, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @HPTE_R_RPN, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @HPTE_R_RPN_SHIFT, align 8
  %22 = lshr i64 %20, %21
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = and i64 %23, 255
  store i64 %24, i64* %14, align 8
  %25 = load %struct.mmu_psize_def*, %struct.mmu_psize_def** @mmu_psize_defs, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mmu_psize_def, %struct.mmu_psize_def* %25, i64 %27
  %29 = bitcast %struct.mmu_psize_def* %11 to i8*
  %30 = bitcast %struct.mmu_psize_def* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  br label %31

31:                                               ; preds = %86, %5
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @MMU_PAGE_COUNT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mmu_psize_def, %struct.mmu_psize_def* %11, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %86

44:                                               ; preds = %35
  %45 = load %struct.mmu_psize_def*, %struct.mmu_psize_def** @mmu_psize_defs, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mmu_psize_def, %struct.mmu_psize_def* %45, i64 %47
  %49 = getelementptr inbounds %struct.mmu_psize_def, %struct.mmu_psize_def* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %44
  %53 = load %struct.mmu_psize_def*, %struct.mmu_psize_def** @mmu_psize_defs, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mmu_psize_def, %struct.mmu_psize_def* %53, i64 %55
  %57 = getelementptr inbounds %struct.mmu_psize_def, %struct.mmu_psize_def* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HPTE_R_RPN_SHIFT, align 8
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = shl i32 1, %62
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %13, align 8
  %68 = and i64 %66, %67
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %52
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @mmu_psize_to_shift(i32 %73)
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %13, align 8
  %78 = and i64 %76, %77
  %79 = load i64*, i64** %10, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i32, i32* %17, align 4
  %82 = zext i32 %81 to i64
  %83 = lshr i64 %80, %82
  %84 = load i64*, i64** %8, align 8
  store i64 %83, i64* %84, align 8
  br label %89

85:                                               ; preds = %52
  br label %86

86:                                               ; preds = %85, %44, %35
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %31

89:                                               ; preds = %72, %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mmu_psize_to_shift(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
