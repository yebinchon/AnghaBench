; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_amd.c_op_amd_check_ctrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_amd.c_op_amd_check_ctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.op_msrs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i64* null, align 8
@OP_CTR_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.op_msrs*)* @op_amd_check_ctrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_amd_check_ctrs(%struct.pt_regs* %0, %struct.op_msrs* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_msrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_msrs* %1, %struct.op_msrs** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @num_counters, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @op_x86_phys_to_virt(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i64*, i64** @reset_value, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %58

22:                                               ; preds = %12
  %23 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %24 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @rdmsrl(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @OP_CTR_OVERFLOW, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %58

38:                                               ; preds = %22
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @oprofile_add_sample(%struct.pt_regs* %39, i32 %40)
  %42 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %43 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64*, i64** @reset_value, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = sub nsw i32 0, %55
  %57 = call i32 @wrmsrl(i32 %49, i32 %56)
  br label %58

58:                                               ; preds = %38, %37, %21
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %8

61:                                               ; preds = %8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %63 = load %struct.op_msrs*, %struct.op_msrs** %4, align 8
  %64 = call i32 @op_amd_handle_ibs(%struct.pt_regs* %62, %struct.op_msrs* %63)
  ret i32 1
}

declare dso_local i32 @op_x86_phys_to_virt(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @op_amd_handle_ibs(%struct.pt_regs*, %struct.op_msrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
