; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_ppro.c_ppro_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_ppro.c_ppro_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_msrs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i64* null, align 8
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_msrs*)* @ppro_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppro_start(%struct.op_msrs* %0) #0 {
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
  %10 = load i64*, i64** @reset_value, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %9
  %17 = load %struct.op_msrs*, %struct.op_msrs** %2, align 8
  %18 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @rdmsrl(i32 %24, i32 %25)
  %27 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.op_msrs*, %struct.op_msrs** %2, align 8
  %31 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @wrmsrl(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %16, %9
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %5

44:                                               ; preds = %5
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
