; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_loongson2.c_loongson2_reg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_loongson2.c_loongson2_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }
%struct.op_counter_config = type { i64, i64, i64, i64, i32 }

@reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LOONGSON2_PERFCTRL_EXL = common dso_local global i32 0, align 4
@LOONGSON2_PERFCTRL_ENABLE = common dso_local global i32 0, align 4
@LOONGSON2_PERFCTRL_KERNEL = common dso_local global i32 0, align 4
@LOONGSON2_PERFCTRL_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_counter_config*)* @loongson2_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loongson2_reg_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 8
  %4 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %5 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %4, i64 0
  %6 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %11 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %10, i64 0
  %12 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @LOONGSON2_PERFCTRL_EVENT(i32 0, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %18 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %17, i64 0
  %19 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 2147483648, %20
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 4), align 8
  br label %22

22:                                               ; preds = %9, %1
  %23 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %24 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %23, i64 1
  %25 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %30 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %29, i64 1
  %31 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @LOONGSON2_PERFCTRL_EVENT(i32 1, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %37 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %36, i64 1
  %38 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 2147483648, %39
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 8
  br label %41

41:                                               ; preds = %28, %22
  %42 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %43 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %42, i64 0
  %44 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %49 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %48, i64 1
  %50 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @LOONGSON2_PERFCTRL_EXL, align 4
  %55 = load i32, i32* @LOONGSON2_PERFCTRL_ENABLE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %60 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %59, i64 0
  %61 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %53
  %65 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %66 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %65, i64 1
  %67 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %53
  %71 = load i32, i32* @LOONGSON2_PERFCTRL_KERNEL, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %76 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %75, i64 0
  %77 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %82 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %81, i64 1
  %83 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @LOONGSON2_PERFCTRL_USER, align 4
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %80
  br label %91

91:                                               ; preds = %90, %47
  %92 = load i32, i32* %3, align 4
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 8
  %93 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %94 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %93, i64 0
  %95 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  %97 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %98 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %97, i64 1
  %99 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @LOONGSON2_PERFCTRL_EVENT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
