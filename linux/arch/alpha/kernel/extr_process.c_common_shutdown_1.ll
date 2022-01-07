; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_process.c_common_shutdown_1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_process.c_common_shutdown_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 (i64)* }
%struct.halt_info = type { i64, i32 }
%struct.percpu_struct = type { i64 }

@hwrpb = common dso_local global %struct.TYPE_3__* null, align 8
@LINUX_REBOOT_CMD_RESTART = common dso_local global i64 0, align 8
@alpha_using_srm = common dso_local global i64 0, align 8
@srm_hae = common dso_local global i32 0, align 4
@alpha_mv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_NR_CONSOLES = common dso_local global i64 0, align 8
@boot_cpuid = common dso_local global i32 0, align 4
@cpu_present_mask = common dso_local global i32 0, align 4
@dummy_con = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @common_shutdown_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_shutdown_1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.halt_info*, align 8
  %4 = alloca %struct.percpu_struct*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.halt_info*
  store %struct.halt_info* %9, %struct.halt_info** %3, align 8
  %10 = call i32 (...) @smp_processor_id()
  store i32 %10, i32* %7, align 4
  %11 = call i32 (...) @local_irq_disable()
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hwrpb, align 8
  %13 = ptrtoint %struct.TYPE_3__* %12 to i64
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hwrpb, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hwrpb, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add i64 %17, %23
  %25 = inttoptr i64 %24 to %struct.percpu_struct*
  store %struct.percpu_struct* %25, %struct.percpu_struct** %4, align 8
  %26 = load %struct.percpu_struct*, %struct.percpu_struct** %4, align 8
  %27 = getelementptr inbounds %struct.percpu_struct, %struct.percpu_struct* %26, i32 0, i32 0
  store i64* %27, i64** %5, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = and i64 %30, -16711682
  store i64 %31, i64* %6, align 8
  %32 = load %struct.halt_info*, %struct.halt_info** %3, align 8
  %33 = getelementptr inbounds %struct.halt_info, %struct.halt_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LINUX_REBOOT_CMD_RESTART, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %1
  %38 = load %struct.halt_info*, %struct.halt_info** %3, align 8
  %39 = getelementptr inbounds %struct.halt_info, %struct.halt_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = or i64 %43, 131072
  store i64 %44, i64* %6, align 8
  br label %48

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  %47 = or i64 %46, 196608
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %52

49:                                               ; preds = %1
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, 262144
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64*, i64** %5, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i64, i64* @alpha_using_srm, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = call i32 (...) @pci_restore_srm_config()
  %59 = load i32, i32* @srm_hae, align 4
  %60 = call i32 @set_hae(i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alpha_mv, i32 0, i32 0), align 8
  %63 = icmp ne i32 (i64)* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @alpha_mv, i32 0, i32 0), align 8
  %66 = load %struct.halt_info*, %struct.halt_info** %3, align 8
  %67 = getelementptr inbounds %struct.halt_info, %struct.halt_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 %65(i64 %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i64, i64* @alpha_using_srm, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load %struct.halt_info*, %struct.halt_info** %3, align 8
  %75 = getelementptr inbounds %struct.halt_info, %struct.halt_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LINUX_REBOOT_CMD_RESTART, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %87

80:                                               ; preds = %73, %70
  %81 = load i64, i64* @alpha_using_srm, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (...) @srm_paging_stop()
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 (...) @halt()
  br label %87

87:                                               ; preds = %85, %79
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @pci_restore_srm_config(...) #1

declare dso_local i32 @set_hae(i32) #1

declare dso_local i32 @srm_paging_stop(...) #1

declare dso_local i32 @halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
