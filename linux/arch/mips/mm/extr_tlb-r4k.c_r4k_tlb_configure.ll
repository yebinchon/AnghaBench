; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_r4k_tlb_configure.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_r4k_tlb_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PM_DEFAULT_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"MMU doesn't support PAGE_SIZE=0x%lx\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@CPU_R10000 = common dso_local global i64 0, align 8
@CPU_R12000 = common dso_local global i64 0, align 8
@CPU_R14000 = common dso_local global i64 0, align 8
@CPU_R16000 = common dso_local global i64 0, align 8
@cpu_has_rixi = common dso_local global i64 0, align 8
@PG_RIE = common dso_local global i32 0, align 4
@PG_XIE = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@temp_tlb_entry = common dso_local global i64 0, align 8
@PG_ELPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @r4k_tlb_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_tlb_configure() #0 {
  %1 = load i64, i64* @PM_DEFAULT_MASK, align 8
  %2 = call i32 @write_c0_pagemask(i64 %1)
  %3 = call i32 (...) @back_to_back_c0_hazard()
  %4 = call i64 (...) @read_c0_pagemask()
  %5 = load i64, i64* @PM_DEFAULT_MASK, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 @write_c0_wired(i32 0)
  %12 = call i64 (...) @current_cpu_type()
  %13 = load i64, i64* @CPU_R10000, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %10
  %16 = call i64 (...) @current_cpu_type()
  %17 = load i64, i64* @CPU_R12000, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = call i64 (...) @current_cpu_type()
  %21 = load i64, i64* @CPU_R14000, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = call i64 (...) @current_cpu_type()
  %25 = load i64, i64* @CPU_R16000, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19, %15, %10
  %28 = call i32 @write_c0_framemask(i32 0)
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i64, i64* @cpu_has_rixi, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @PG_RIE, align 4
  %34 = load i32, i32* @PG_XIE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @set_c0_pagegrain(i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %39 = sub nsw i64 %38, 1
  store i64 %39, i64* @temp_tlb_entry, align 8
  %40 = call i32 (...) @local_flush_tlb_all()
  ret void
}

declare dso_local i32 @write_c0_pagemask(i64) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i64 @read_c0_pagemask(...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @write_c0_wired(i32) #1

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @write_c0_framemask(i32) #1

declare dso_local i32 @set_c0_pagegrain(i32) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
