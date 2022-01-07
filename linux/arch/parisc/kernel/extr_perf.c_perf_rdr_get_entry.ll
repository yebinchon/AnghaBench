; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_rdr_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_rdr_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdr_tbl_ent = type { i32 }

@perf_processor_interface = common dso_local global i64 0, align 8
@ONYX_INTF = common dso_local global i64 0, align 8
@perf_rdr_tbl_U = common dso_local global %struct.rdr_tbl_ent* null, align 8
@perf_rdr_tbl_W = common dso_local global %struct.rdr_tbl_ent* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdr_tbl_ent* (i64)* @perf_rdr_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdr_tbl_ent* @perf_rdr_get_entry(i64 %0) #0 {
  %2 = alloca %struct.rdr_tbl_ent*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* @perf_processor_interface, align 8
  %5 = load i64, i64* @ONYX_INTF, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** @perf_rdr_tbl_U, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %8, i64 %9
  store %struct.rdr_tbl_ent* %10, %struct.rdr_tbl_ent** %2, align 8
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** @perf_rdr_tbl_W, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %12, i64 %13
  store %struct.rdr_tbl_ent* %14, %struct.rdr_tbl_ent** %2, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** %2, align 8
  ret %struct.rdr_tbl_ent* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
