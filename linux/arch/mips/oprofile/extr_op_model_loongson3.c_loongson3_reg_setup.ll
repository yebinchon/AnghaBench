; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_loongson3.c_loongson3_reg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_loongson3.c_loongson3_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64 }
%struct.op_counter_config = type { i64, i64, i64, i64, i32 }

@reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LOONGSON3_PERFCTRL_ENABLE = common dso_local global i32 0, align 4
@LOONGSON3_PERFCTRL_KERNEL = common dso_local global i32 0, align 4
@LOONGSON3_PERFCTRL_USER = common dso_local global i32 0, align 4
@LOONGSON3_PERFCTRL_EXL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_counter_config*)* @loongson3_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loongson3_reg_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 4), align 8
  %5 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %6 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %5, i64 0
  %7 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %12 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %11, i64 0
  %13 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @LOONGSON3_PERFCTRL_EVENT(i32 0, i32 %14)
  %16 = load i32, i32* @LOONGSON3_PERFCTRL_ENABLE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %21 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %20, i64 0
  %22 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %10
  %26 = load i32, i32* @LOONGSON3_PERFCTRL_KERNEL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %10
  %30 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %31 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %30, i64 0
  %32 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @LOONGSON3_PERFCTRL_USER, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %41 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %40, i64 0
  %42 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 -9223372036854775808, %43
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 5), align 8
  br label %45

45:                                               ; preds = %39, %1
  %46 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %47 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %46, i64 1
  %48 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %45
  %52 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %53 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %52, i64 1
  %54 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @LOONGSON3_PERFCTRL_EVENT(i32 1, i32 %55)
  %57 = load i32, i32* @LOONGSON3_PERFCTRL_ENABLE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %62 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %61, i64 1
  %63 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = load i32, i32* @LOONGSON3_PERFCTRL_KERNEL, align 4
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %51
  %71 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %72 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %71, i64 1
  %73 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @LOONGSON3_PERFCTRL_USER, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %82 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %81, i64 1
  %83 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 -9223372036854775808, %84
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 4), align 8
  br label %86

86:                                               ; preds = %80, %45
  %87 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %88 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %87, i64 0
  %89 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @LOONGSON3_PERFCTRL_EXL, align 4
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %98 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %97, i64 1
  %99 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @LOONGSON3_PERFCTRL_EXL, align 4
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32, i32* %3, align 4
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 8
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  %109 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %110 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %109, i64 0
  %111 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 8
  %113 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %114 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %113, i64 1
  %115 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  ret void
}

declare dso_local i32 @LOONGSON3_PERFCTRL_EVENT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
