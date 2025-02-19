; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pdt.c_get_info_pat_cell.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_pdt.c_get_info_pat_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.pdc_pat_mem_cell_pdt_retinfo = type { i32, i32, i32, i32 }

@parisc_cell_num = common dso_local global i32 0, align 4
@PDC_BAD_PROC = common dso_local global i32 0, align 4
@pdt_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_info_pat_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_info_pat_cell() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pdc_pat_mem_cell_pdt_retinfo, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @is_pdc_pat()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @parisc_cell_num, align 4
  %8 = call i32 @pdc_pat_mem_pdt_cell_info(%struct.pdc_pat_mem_cell_pdt_retinfo* %2, i32 %7)
  store i32 %8, i32* %3, align 4
  br label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @PDC_BAD_PROC, align 4
  store i32 %10, i32* %1, align 4
  br label %21

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pdc_pat_mem_cell_pdt_retinfo, %struct.pdc_pat_mem_cell_pdt_retinfo* %2, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdt_status, i32 0, i32 4), align 4
  %14 = getelementptr inbounds %struct.pdc_pat_mem_cell_pdt_retinfo, %struct.pdc_pat_mem_cell_pdt_retinfo* %2, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdt_status, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdt_status, i32 0, i32 2), align 8
  %16 = getelementptr inbounds %struct.pdc_pat_mem_cell_pdt_retinfo, %struct.pdc_pat_mem_cell_pdt_retinfo* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdt_status, i32 0, i32 1), align 4
  %18 = getelementptr inbounds %struct.pdc_pat_mem_cell_pdt_retinfo, %struct.pdc_pat_mem_cell_pdt_retinfo* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pdt_status, i32 0, i32 0), align 8
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %11, %9
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i64 @is_pdc_pat(...) #1

declare dso_local i32 @pdc_pat_mem_pdt_cell_info(%struct.pdc_pat_mem_cell_pdt_retinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
