; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_pSeries_system_reset_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_pSeries_system_reset_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64 }
%struct.rtas_error_log = type { i32 }

@MSR_LE = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@MSR_DR = common dso_local global i32 0, align 4
@MSR_IR = common dso_local global i32 0, align 4
@MSR_ME = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_ILE = common dso_local global i32 0, align 4
@MSR_HV = common dso_local global i32 0, align 4
@MSR_SF = common dso_local global i32 0, align 4
@fwnmi_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pSeries_system_reset_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.rtas_error_log*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @be64_to_cpu(i64 %7)
  %9 = load i32, i32* @MSR_LE, align 4
  %10 = load i32, i32* @MSR_RI, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MSR_DR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MSR_IR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MSR_ME, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MSR_PR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MSR_ILE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MSR_HV, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MSR_SF, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %8, %25
  %27 = load i32, i32* @MSR_DR, align 4
  %28 = load i32, i32* @MSR_SF, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = call i32 @be64_to_cpu(i64 %35)
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %31, %1
  %42 = load i64, i64* @fwnmi_active, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %46 = call %struct.rtas_error_log* @fwnmi_get_errinfo(%struct.pt_regs* %45)
  store %struct.rtas_error_log* %46, %struct.rtas_error_log** %4, align 8
  %47 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  %48 = icmp ne %struct.rtas_error_log* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %44
  %51 = call i32 (...) @fwnmi_release_errinfo()
  br label %52

52:                                               ; preds = %50, %41
  %53 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %54 = call i64 @smp_handle_nmi_ipi(%struct.pt_regs* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %58

57:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @be64_to_cpu(i64) #1

declare dso_local %struct.rtas_error_log* @fwnmi_get_errinfo(%struct.pt_regs*) #1

declare dso_local i32 @fwnmi_release_errinfo(...) #1

declare dso_local i64 @smp_handle_nmi_ipi(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
