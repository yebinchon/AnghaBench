; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_rdr_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_rdr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdr_tbl_ent = type { i64, i32 }

@perf_processor_interface = common dso_local global i64 0, align 8
@ONYX_INTF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @perf_rdr_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_rdr_clear(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdr_tbl_ent*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rdr_tbl_ent* @perf_rdr_get_entry(i32 %6)
  store %struct.rdr_tbl_ent* %7, %struct.rdr_tbl_ent** %4, align 8
  %8 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** %4, align 8
  %9 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** %4, align 8
  %15 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %31, %13
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i64, i64* @perf_processor_interface, align 8
  %23 = load i64, i64* @ONYX_INTF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @perf_rdr_shift_out_U(i32 %26, i64 0)
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @perf_rdr_shift_out_W(i32 %29, i64 0)
  br label %31

31:                                               ; preds = %28, %25
  br label %17

32:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.rdr_tbl_ent* @perf_rdr_get_entry(i32) #1

declare dso_local i32 @perf_rdr_shift_out_U(i32, i64) #1

declare dso_local i32 @perf_rdr_shift_out_W(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
