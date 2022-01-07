; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_get_mem_data_src.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_get_mem_data_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_mem_data_src = type { i32 }
%struct.pt_regs = type { i32 }

@PPMU_HAS_SIER = common dso_local global i32 0, align 4
@SPRN_SIER = common dso_local global i32 0, align 4
@ISA207_SIER_TYPE_MASK = common dso_local global i32 0, align 4
@ISA207_SIER_TYPE_SHIFT = common dso_local global i32 0, align 4
@ISA207_SIER_LDST_MASK = common dso_local global i32 0, align 4
@ISA207_SIER_LDST_SHIFT = common dso_local global i32 0, align 4
@ISA207_SIER_DATA_SRC_MASK = common dso_local global i32 0, align 4
@ISA207_SIER_DATA_SRC_SHIFT = common dso_local global i32 0, align 4
@OP = common dso_local global i32 0, align 4
@LOAD = common dso_local global i32 0, align 4
@STORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa207_get_mem_data_src(%union.perf_mem_data_src* %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %union.perf_mem_data_src*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %union.perf_mem_data_src* %0, %union.perf_mem_data_src** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PPMU_HAS_SIER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %union.perf_mem_data_src*, %union.perf_mem_data_src** %4, align 8
  %17 = bitcast %union.perf_mem_data_src* %16 to i32*
  store i32 0, i32* %17, align 4
  br label %63

18:                                               ; preds = %3
  %19 = load i32, i32* @SPRN_SIER, align 4
  %20 = call i32 @mfspr(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @ISA207_SIER_TYPE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @ISA207_SIER_TYPE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %63

31:                                               ; preds = %28, %18
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ISA207_SIER_LDST_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @ISA207_SIER_LDST_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ISA207_SIER_DATA_SRC_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @ISA207_SIER_DATA_SRC_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @isa207_find_source(i32 %42, i32 %43)
  %45 = load %union.perf_mem_data_src*, %union.perf_mem_data_src** %4, align 8
  %46 = bitcast %union.perf_mem_data_src* %45 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load i32, i32* @OP, align 4
  %51 = load i32, i32* @LOAD, align 4
  %52 = call i32 @P(i32 %50, i32 %51)
  br label %57

53:                                               ; preds = %31
  %54 = load i32, i32* @OP, align 4
  %55 = load i32, i32* @STORE, align 4
  %56 = call i32 @P(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %52, %49 ], [ %56, %53 ]
  %59 = load %union.perf_mem_data_src*, %union.perf_mem_data_src** %4, align 8
  %60 = bitcast %union.perf_mem_data_src* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %15, %57, %28
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @isa207_find_source(i32, i32) #1

declare dso_local i32 @P(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
