; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_pa6t.c_pa6t_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_pa6t.c_pa6t_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.op_counter_config = type { i64 }

@SPRN_PA6T_SIAR = common dso_local global i32 0, align 4
@SPRN_PA6T_MMCR0 = common dso_local global i32 0, align 4
@PA6T_MMCR0_HANDDIS = common dso_local global i32 0, align 4
@cur_cpu_spec = common dso_local global %struct.TYPE_2__* null, align 8
@oprofile_running = common dso_local global i64 0, align 8
@PA6T_MMCR0_SIARLOG = common dso_local global i32 0, align 4
@reset_value = common dso_local global i64* null, align 8
@mmcr0_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.op_counter_config*)* @pa6t_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pa6t_handle_interrupt(%struct.pt_regs* %0, %struct.op_counter_config* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %4, align 8
  %10 = load i32, i32* @SPRN_PA6T_SIAR, align 4
  %11 = call i8* @mfspr(i32 %10)
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @is_kernel_addr(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @SPRN_PA6T_MMCR0, align 4
  %16 = call i8* @mfspr(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @SPRN_PA6T_MMCR0, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PA6T_MMCR0_HANDDIS, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @mtspr(i32 %18, i32 %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %71, %2
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ctr_read(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, 549755813888
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %29
  %37 = load i64, i64* @oprofile_running, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %40, i64 %42
  %44 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @PA6T_MMCR0_SIARLOG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @oprofile_add_ext_sample(i64 %53, %struct.pt_regs* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %8, align 4
  %60 = load i64*, i64** @reset_value, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ctr_write(i32 %59, i64 %64)
  br label %69

66:                                               ; preds = %39, %36
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ctr_write(i32 %67, i64 0)
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %29
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %23

74:                                               ; preds = %23
  %75 = load i32, i32* @mmcr0_val, align 4
  %76 = load i32, i32* @PA6T_MMCR0_HANDDIS, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @SPRN_PA6T_MMCR0, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mtspr(i32 %78, i32 %79)
  ret void
}

declare dso_local i8* @mfspr(i32) #1

declare dso_local i32 @is_kernel_addr(i64) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @ctr_read(i32) #1

declare dso_local i32 @oprofile_add_ext_sample(i64, %struct.pt_regs*, i32, i32) #1

declare dso_local i32 @ctr_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
