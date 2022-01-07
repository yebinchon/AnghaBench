; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_pe_inject_err.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_pe_inject_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.eeh_pe*, i32, i32, i64, i64)* }
%struct.eeh_pe = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EEH_ERR_TYPE_32 = common dso_local global i32 0, align 4
@EEH_ERR_TYPE_64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEH_ERR_FUNC_MIN = common dso_local global i32 0, align 4
@EEH_ERR_FUNC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeh_pe_inject_err(%struct.eeh_pe* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eeh_pe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.eeh_pe* %0, %struct.eeh_pe** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.eeh_pe*, %struct.eeh_pe** %7, align 8
  %13 = icmp ne %struct.eeh_pe* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %60

17:                                               ; preds = %5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.eeh_pe*, i32, i32, i64, i64)*, i32 (%struct.eeh_pe*, i32, i32, i64, i64)** %22, align 8
  %24 = icmp ne i32 (%struct.eeh_pe*, i32, i32, i64, i64)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %60

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EEH_ERR_TYPE_32, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EEH_ERR_TYPE_64, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %60

39:                                               ; preds = %32, %28
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EEH_ERR_FUNC_MIN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @EEH_ERR_FUNC_MAX, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %60

50:                                               ; preds = %43
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.eeh_pe*, i32, i32, i64, i64)*, i32 (%struct.eeh_pe*, i32, i32, i64, i64)** %52, align 8
  %54 = load %struct.eeh_pe*, %struct.eeh_pe** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 %53(%struct.eeh_pe* %54, i32 %55, i32 %56, i64 %57, i64 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %47, %36, %25, %14
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
