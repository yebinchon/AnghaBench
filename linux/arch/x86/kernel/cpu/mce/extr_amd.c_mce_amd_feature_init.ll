; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_mce_amd_feature_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_mce_amd_feature_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.cpuinfo_x86 = type { i32 }

@mce_num_banks = common dso_local global i32 0, align 4
@mce_flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NR_BLOCKS = common dso_local global i32 0, align 4
@MASK_VALID_HI = common dso_local global i32 0, align 4
@MASK_CNTP_HI = common dso_local global i32 0, align 4
@MASK_LOCKED_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mce_amd_feature_init(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %10 = call i32 (...) @smp_processor_id()
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %75, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @mce_num_banks, align 4
  %14 = call i32 @this_cpu_read(i32 %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %78

16:                                               ; preds = %11
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mce_flags, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @smca_configure(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @disable_err_thresholding(%struct.cpuinfo_x86* %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %71, %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @NR_BLOCKS, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @get_block_address(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %74

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @rdmsr_safe(i32 %43, i32* %6, i32* %7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %74

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MASK_VALID_HI, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %71

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MASK_CNTP_HI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MASK_LOCKED_HI, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %53
  br label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @prepare_threshold_block(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %64, %63, %52
  %72 = load i32, i32* %4, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %27

74:                                               ; preds = %46, %41, %27
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %11

78:                                               ; preds = %11
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mce_flags, i32 0, i32 0), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %83 = call i32 @deferred_error_interrupt_enable(%struct.cpuinfo_x86* %82)
  br label %84

84:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @smca_configure(i32, i32) #1

declare dso_local i32 @disable_err_thresholding(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @get_block_address(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @rdmsr_safe(i32, i32*, i32*) #1

declare dso_local i32 @prepare_threshold_block(i32, i32, i32, i32, i32) #1

declare dso_local i32 @deferred_error_interrupt_enable(%struct.cpuinfo_x86*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
