; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_rdr_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_perf.c_perf_rdr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdr_tbl_ent = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"perf_rdr_write\0A\00", align 1
@perf_processor_interface = common dso_local global i64 0, align 8
@ONYX_INTF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"perf_rdr_write done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @perf_rdr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_rdr_write(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rdr_tbl_ent*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.rdr_tbl_ent* @perf_rdr_get_entry(i32 %8)
  store %struct.rdr_tbl_ent* %9, %struct.rdr_tbl_ent** %5, align 8
  %10 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** %5, align 8
  %11 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.rdr_tbl_ent*, %struct.rdr_tbl_ent** %5, align 8
  %17 = getelementptr inbounds %struct.rdr_tbl_ent, %struct.rdr_tbl_ent* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %41, %15
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %6, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i64, i64* @perf_processor_interface, align 8
  %25 = load i64, i64* @ONYX_INTF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @perf_rdr_shift_out_U(i32 %28, i32 %32)
  br label %41

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @perf_rdr_shift_out_W(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  br label %19

42:                                               ; preds = %19
  %43 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %14
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.rdr_tbl_ent* @perf_rdr_get_entry(i32) #1

declare dso_local i32 @perf_rdr_shift_out_U(i32, i32) #1

declare dso_local i32 @perf_rdr_shift_out_W(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
