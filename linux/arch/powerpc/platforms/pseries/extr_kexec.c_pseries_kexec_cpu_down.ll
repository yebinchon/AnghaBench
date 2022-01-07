; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_kexec.c_pseries_kexec_cpu_down.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_kexec.c_pseries_kexec_cpu_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FW_FEATURE_SPLPAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"WARNING: DTL deregistration for cpu %d (hw %d) failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"WARNING: SLB shadow buffer deregistration for cpu %d (hw %d) failed with %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"WARNING: VPA deregistration for cpu %d (hw %d) failed with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pseries_kexec_cpu_down(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @FW_FEATURE_SPLPAR, align 4
  %9 = call i64 @firmware_has_feature(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %53, label %14

14:                                               ; preds = %11
  %15 = call i32 (...) @smp_processor_id()
  store i32 %15, i32* %6, align 4
  %16 = call i32 (...) @hard_smp_processor_id()
  store i32 %16, i32* %7, align 4
  %17 = call %struct.TYPE_2__* (...) @get_lppaca()
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @unregister_dtl(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @unregister_slb_shadow(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @unregister_vpa(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %11, %2
  %54 = call i64 (...) @xive_enabled()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = call i32 (...) @xive_teardown_cpu()
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 (...) @xive_shutdown()
  br label %62

62:                                               ; preds = %60, %56
  br label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @xics_kexec_teardown_cpu(i32 %64)
  br label %66

66:                                               ; preds = %63, %62
  ret void
}

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local %struct.TYPE_2__* @get_lppaca(...) #1

declare dso_local i32 @unregister_dtl(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @unregister_slb_shadow(i32) #1

declare dso_local i32 @unregister_vpa(i32) #1

declare dso_local i64 @xive_enabled(...) #1

declare dso_local i32 @xive_teardown_cpu(...) #1

declare dso_local i32 @xive_shutdown(...) #1

declare dso_local i32 @xics_kexec_teardown_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
