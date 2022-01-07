; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_walk_linearmapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_walk_linearmapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pg_state = type { i32 }

@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@mmu_linear_psize = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*)* @walk_linearmapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_linearmapping(%struct.pg_state* %0) #0 {
  %2 = alloca %struct.pg_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %6 = load i64, i64* @mmu_linear_psize, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 1, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @PAGE_OFFSET, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %24, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @PAGE_OFFSET, align 8
  %16 = call i64 (...) @memblock_end_of_DRAM()
  %17 = add i64 %15, %16
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.pg_state*, %struct.pg_state** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @mmu_linear_psize, align 8
  %23 = call i32 @hpte_find(%struct.pg_state* %20, i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %13

28:                                               ; preds = %13
  ret void
}

declare dso_local i64 @memblock_end_of_DRAM(...) #1

declare dso_local i32 @hpte_find(%struct.pg_state*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
