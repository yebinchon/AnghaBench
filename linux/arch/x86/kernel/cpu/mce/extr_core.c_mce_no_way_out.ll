; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_no_way_out.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_no_way_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.mce = type { i32, i32 }
%struct.pt_regs = type { i32 }

@mce_num_banks = common dso_local global i32 0, align 4
@msr_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@MCI_STATUS_VAL = common dso_local global i32 0, align 4
@mca_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MCE_PANIC_SEVERITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mce*, i8**, i64*, %struct.pt_regs*)* @mce_no_way_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_no_way_out(%struct.mce* %0, i8** %1, i64* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mce*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.pt_regs*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %56, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @mce_num_banks, align 4
  %15 = call i32 @this_cpu_read(i32 %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %12
  %18 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msr_ops, i32 0, i32 0), align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 %18(i32 %19)
  %21 = call i32 @mce_rdmsrl(i32 %20)
  %22 = load %struct.mce*, %struct.mce** %6, align 8
  %23 = getelementptr inbounds %struct.mce, %struct.mce* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mce*, %struct.mce** %6, align 8
  %25 = getelementptr inbounds %struct.mce, %struct.mce* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MCI_STATUS_VAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %56

31:                                               ; preds = %17
  %32 = load i32, i32* %11, align 4
  %33 = load i64*, i64** %8, align 8
  %34 = call i32 @__set_bit(i32 %32, i64* %33)
  br i1 true, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.mce*, %struct.mce** %6, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %39 = call i32 @quirk_no_way_out(i32 %36, %struct.mce* %37, %struct.pt_regs* %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.mce*, %struct.mce** %6, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mca_cfg, i32 0, i32 0), align 4
  %43 = call i64 @mce_severity(%struct.mce* %41, i32 %42, i8** %10, i32 1)
  %44 = load i64, i64* @MCE_PANIC_SEVERITY, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.mce*, %struct.mce** %6, align 8
  %49 = getelementptr inbounds %struct.mce, %struct.mce* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mce*, %struct.mce** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mce_read_aux(%struct.mce* %50, i32 %51)
  %53 = load i8*, i8** %10, align 8
  %54 = load i8**, i8*** %7, align 8
  store i8* %53, i8** %54, align 8
  store i32 1, i32* %5, align 4
  br label %60

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %12

59:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @mce_rdmsrl(i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @quirk_no_way_out(i32, %struct.mce*, %struct.pt_regs*) #1

declare dso_local i64 @mce_severity(%struct.mce*, i32, i8**, i32) #1

declare dso_local i32 @mce_read_aux(%struct.mce*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
