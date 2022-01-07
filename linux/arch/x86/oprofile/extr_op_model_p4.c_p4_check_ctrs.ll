; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_p4.c_p4_check_ctrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_p4.c_p4_check_ctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }
%struct.op_msrs = type { i32 }

@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i64* null, align 8
@p4_counters = common dso_local global %struct.TYPE_2__* null, align 8
@OP_CTR_OVERFLOW = common dso_local global i64 0, align 8
@APIC_LVTPC = common dso_local global i32 0, align 4
@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.op_msrs*)* @p4_check_ctrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_check_ctrs(%struct.pt_regs* %0, %struct.op_msrs* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_msrs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_msrs* %1, %struct.op_msrs** %4, align 8
  %11 = call i64 (...) @get_stagger()
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %93, %2
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @num_counters, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %96

16:                                               ; preds = %12
  %17 = load i64*, i64** @reset_value, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %93

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @VIRT_CTR(i64 %25, i32 %26)
  store i64 %27, i64* %9, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_counters, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @rdmsr(i32 %32, i64 %33, i64 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_counters, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @rdmsr(i32 %40, i64 %41, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @CCCR_OVF_P(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %24
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @OP_CTR_OVERFLOW, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %92, label %52

52:                                               ; preds = %47, %24
  %53 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @oprofile_add_sample(%struct.pt_regs* %53, i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_counters, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64*, i64** @reset_value, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = sub nsw i32 0, %66
  %68 = call i32 @wrmsrl(i32 %60, i32 %67)
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @CCCR_CLEAR_OVF(i64 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_counters, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @wrmsr(i32 %75, i64 %76, i64 %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @p4_counters, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64*, i64** @reset_value, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = sub nsw i32 0, %89
  %91 = call i32 @wrmsrl(i32 %83, i32 %90)
  br label %92

92:                                               ; preds = %52, %47
  br label %93

93:                                               ; preds = %92, %23
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %12

96:                                               ; preds = %12
  %97 = load i32, i32* @APIC_LVTPC, align 4
  %98 = load i32, i32* @APIC_LVTPC, align 4
  %99 = call i32 @apic_read(i32 %98)
  %100 = load i32, i32* @APIC_LVT_MASKED, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = call i32 @apic_write(i32 %97, i32 %102)
  ret i32 1
}

declare dso_local i64 @get_stagger(...) #1

declare dso_local i64 @VIRT_CTR(i64, i32) #1

declare dso_local i32 @rdmsr(i32, i64, i64) #1

declare dso_local i64 @CCCR_OVF_P(i64) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @CCCR_CLEAR_OVF(i64) #1

declare dso_local i32 @wrmsr(i32, i64, i64) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @apic_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
