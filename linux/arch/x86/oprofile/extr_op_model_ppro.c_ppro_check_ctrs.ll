; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_ppro.c_ppro_check_ctrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_ppro.c_ppro_check_ctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.op_msrs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i32* null, align 8
@counter_width = common dso_local global i32 0, align 4
@APIC_LVTPC = common dso_local global i32 0, align 4
@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.op_msrs*)* @ppro_check_ctrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppro_check_ctrs(%struct.pt_regs* %0, %struct.op_msrs* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_msrs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_msrs* %1, %struct.op_msrs** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %57, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @num_counters, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %7
  %12 = load i32*, i32** @reset_value, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %57

19:                                               ; preds = %11
  %20 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %21 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @rdmsrl(i32 %27, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @counter_width, align 4
  %32 = sub nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = shl i64 1, %33
  %35 = and i64 %30, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %57

38:                                               ; preds = %19
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @oprofile_add_sample(%struct.pt_regs* %39, i32 %40)
  %42 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %43 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @reset_value, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @wrmsrl(i32 %49, i32 %55)
  br label %57

57:                                               ; preds = %38, %37, %18
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %7

60:                                               ; preds = %7
  %61 = load i32, i32* @APIC_LVTPC, align 4
  %62 = load i32, i32* @APIC_LVTPC, align 4
  %63 = call i32 @apic_read(i32 %62)
  %64 = load i32, i32* @APIC_LVT_MASKED, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @apic_write(i32 %61, i32 %66)
  ret i32 1
}

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @apic_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
