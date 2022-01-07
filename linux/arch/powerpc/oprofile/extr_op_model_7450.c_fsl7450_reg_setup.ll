; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_7450.c_fsl7450_reg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_7450.c_fsl7450_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_counter_config = type { i32, i64 }
%struct.op_system_config = type { i64, i64 }

@num_pmcs = common dso_local global i32 0, align 4
@reset_value = common dso_local global i64* null, align 8
@MMCR0_INIT = common dso_local global i32 0, align 4
@mmcr0_val = common dso_local global i32 0, align 4
@MMCR0_FCS = common dso_local global i32 0, align 4
@MMCR0_FCP = common dso_local global i32 0, align 4
@mmcr1_val = common dso_local global i32 0, align 4
@mmcr2_val = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*, %struct.op_system_config*, i32)* @fsl7450_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl7450_reg_setup(%struct.op_counter_config* %0, %struct.op_system_config* %1, i32 %2) #0 {
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca %struct.op_system_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %4, align 8
  store %struct.op_system_config* %1, %struct.op_system_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* @num_pmcs, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %14, i64 %16
  %18 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 2147483648, %19
  %21 = load i64*, i64** @reset_value, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 %20, i64* %24, align 8
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load i32, i32* @MMCR0_INIT, align 4
  %30 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %31 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %30, i64 0
  %32 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mmcr0_event1(i32 %33)
  %35 = or i32 %29, %34
  %36 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %37 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %36, i64 1
  %38 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mmcr0_event2(i32 %39)
  %41 = or i32 %35, %40
  store i32 %41, i32* @mmcr0_val, align 4
  %42 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %43 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %28
  %47 = load i32, i32* @MMCR0_FCS, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @mmcr0_val, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* @mmcr0_val, align 4
  br label %51

51:                                               ; preds = %46, %28
  %52 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %53 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @MMCR0_FCP, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* @mmcr0_val, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* @mmcr0_val, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %63 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %62, i64 2
  %64 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mmcr1_event3(i32 %65)
  %67 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %68 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %67, i64 3
  %69 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mmcr1_event4(i32 %70)
  %72 = or i32 %66, %71
  store i32 %72, i32* @mmcr1_val, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %73, 4
  br i1 %74, label %75, label %89

75:                                               ; preds = %61
  %76 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %77 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %76, i64 4
  %78 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mmcr1_event5(i32 %79)
  %81 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %82 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %81, i64 5
  %83 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @mmcr1_event6(i32 %84)
  %86 = or i32 %80, %85
  %87 = load i32, i32* @mmcr1_val, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* @mmcr1_val, align 4
  br label %89

89:                                               ; preds = %75, %61
  store i64 0, i64* @mmcr2_val, align 8
  ret i32 0
}

declare dso_local i32 @mmcr0_event1(i32) #1

declare dso_local i32 @mmcr0_event2(i32) #1

declare dso_local i32 @mmcr1_event3(i32) #1

declare dso_local i32 @mmcr1_event4(i32) #1

declare dso_local i32 @mmcr1_event5(i32) #1

declare dso_local i32 @mmcr1_event6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
