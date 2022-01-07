; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_mipsxx.c_mipsxx_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_mipsxx.c_mipsxx_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@op_model_mipsxx_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@reg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mipsxx_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipsxx_cpu_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @op_model_mipsxx_ops, i32 0, i32 0), align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @smp_processor_id()
  %6 = call i64 @oprofile_skip_cpu(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %35 [
    i32 4, label %11
    i32 3, label %17
    i32 2, label %23
    i32 1, label %29
  ]

11:                                               ; preds = %9
  %12 = call i32 @w_c0_perfctrl3(i32 0)
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @w_c0_perfcntr3(i32 %15)
  br label %17

17:                                               ; preds = %9, %11
  %18 = call i32 @w_c0_perfctrl2(i32 0)
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @w_c0_perfcntr2(i32 %21)
  br label %23

23:                                               ; preds = %9, %17
  %24 = call i32 @w_c0_perfctrl1(i32 0)
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @w_c0_perfcntr1(i32 %27)
  br label %29

29:                                               ; preds = %9, %23
  %30 = call i32 @w_c0_perfctrl0(i32 0)
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @w_c0_perfcntr0(i32 %33)
  br label %35

35:                                               ; preds = %8, %29, %9
  ret void
}

declare dso_local i64 @oprofile_skip_cpu(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @w_c0_perfctrl3(i32) #1

declare dso_local i32 @w_c0_perfcntr3(i32) #1

declare dso_local i32 @w_c0_perfctrl2(i32) #1

declare dso_local i32 @w_c0_perfcntr2(i32) #1

declare dso_local i32 @w_c0_perfctrl1(i32) #1

declare dso_local i32 @w_c0_perfcntr1(i32) #1

declare dso_local i32 @w_c0_perfctrl0(i32) #1

declare dso_local i32 @w_c0_perfcntr0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
