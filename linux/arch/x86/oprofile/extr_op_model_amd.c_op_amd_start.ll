; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_amd.c_op_amd_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_amd.c_op_amd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_msrs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i32* null, align 8
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_msrs*)* @op_amd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_amd_start(%struct.op_msrs* %0) #0 {
  %2 = alloca %struct.op_msrs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.op_msrs* %0, %struct.op_msrs** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @num_counters, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %44

9:                                                ; preds = %5
  %10 = load i32*, i32** @reset_value, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @op_x86_phys_to_virt(i32 %11)
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %41

17:                                               ; preds = %9
  %18 = load %struct.op_msrs*, %struct.op_msrs** %2, align 8
  %19 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @rdmsrl(i32 %25, i32 %26)
  %28 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.op_msrs*, %struct.op_msrs** %2, align 8
  %32 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @wrmsrl(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %17, %16
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %5

44:                                               ; preds = %5
  %45 = call i32 (...) @op_amd_start_ibs()
  ret void
}

declare dso_local i64 @op_x86_phys_to_virt(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @op_amd_start_ibs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
