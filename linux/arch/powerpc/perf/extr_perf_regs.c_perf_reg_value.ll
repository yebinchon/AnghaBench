; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_perf_regs.c_perf_reg_value.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_perf_regs.c_perf_reg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@PERF_REG_POWERPC_MAX = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_SIER = common dso_local global i32 0, align 4
@CONFIG_FSL_EMB_PERF_EVENT = common dso_local global i32 0, align 4
@CONFIG_PPC32 = common dso_local global i32 0, align 4
@PERF_REG_POWERPC_MMCRA = common dso_local global i32 0, align 4
@pt_regs_offset = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_reg_value(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PERF_REG_POWERPC_MAX, align 4
  %8 = icmp sge i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON_ONCE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PERF_REG_POWERPC_SIER, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* @CONFIG_FSL_EMB_PERF_EVENT, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @CONFIG_PPC32, align 4
  %23 = call i64 @IS_ENABLED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call i32 (...) @is_sier_available()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %21, %17
  store i32 0, i32* %3, align 4
  br label %50

29:                                               ; preds = %25, %13
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PERF_REG_POWERPC_MMCRA, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @CONFIG_FSL_EMB_PERF_EVENT, align 4
  %35 = call i64 @IS_ENABLED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @CONFIG_PPC32, align 4
  %39 = call i64 @IS_ENABLED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  store i32 0, i32* %3, align 4
  br label %50

42:                                               ; preds = %37, %29
  %43 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %44 = load i32*, i32** @pt_regs_offset, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regs_get_register(%struct.pt_regs* %43, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %41, %28, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @is_sier_available(...) #1

declare dso_local i32 @regs_get_register(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
