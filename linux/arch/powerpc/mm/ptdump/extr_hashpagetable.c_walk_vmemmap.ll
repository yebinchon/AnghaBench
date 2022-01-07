; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_walk_vmemmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_walk_vmemmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmemmap_backing = type { %struct.vmemmap_backing*, i32 }
%struct.pg_state = type { i32 }

@vmemmap_list = common dso_local global %struct.vmemmap_backing* null, align 8
@CONFIG_SPARSEMEM_VMEMMAP = common dso_local global i32 0, align 4
@mmu_vmemmap_psize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"---[ vmemmap end ]---\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*)* @walk_vmemmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_vmemmap(%struct.pg_state* %0) #0 {
  %2 = alloca %struct.pg_state*, align 8
  %3 = alloca %struct.vmemmap_backing*, align 8
  store %struct.pg_state* %0, %struct.pg_state** %2, align 8
  %4 = load %struct.vmemmap_backing*, %struct.vmemmap_backing** @vmemmap_list, align 8
  store %struct.vmemmap_backing* %4, %struct.vmemmap_backing** %3, align 8
  %5 = load i32, i32* @CONFIG_SPARSEMEM_VMEMMAP, align 4
  %6 = call i32 @IS_ENABLED(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %30

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.vmemmap_backing*, %struct.vmemmap_backing** %3, align 8
  %12 = getelementptr inbounds %struct.vmemmap_backing, %struct.vmemmap_backing* %11, i32 0, i32 0
  %13 = load %struct.vmemmap_backing*, %struct.vmemmap_backing** %12, align 8
  %14 = icmp ne %struct.vmemmap_backing* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.pg_state*, %struct.pg_state** %2, align 8
  %17 = load %struct.vmemmap_backing*, %struct.vmemmap_backing** %3, align 8
  %18 = getelementptr inbounds %struct.vmemmap_backing, %struct.vmemmap_backing* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @mmu_vmemmap_psize, align 4
  %21 = call i32 @hpte_find(%struct.pg_state* %16, i32 %19, i32 %20)
  %22 = load %struct.vmemmap_backing*, %struct.vmemmap_backing** %3, align 8
  %23 = getelementptr inbounds %struct.vmemmap_backing, %struct.vmemmap_backing* %22, i32 0, i32 0
  %24 = load %struct.vmemmap_backing*, %struct.vmemmap_backing** %23, align 8
  store %struct.vmemmap_backing* %24, %struct.vmemmap_backing** %3, align 8
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.pg_state*, %struct.pg_state** %2, align 8
  %27 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_puts(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @hpte_find(%struct.pg_state*, i32, i32) #1

declare dso_local i32 @seq_puts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
