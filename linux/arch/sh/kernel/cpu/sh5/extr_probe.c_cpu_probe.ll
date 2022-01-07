; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh5/extr_probe.c_cpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh5/extr_probe.c_cpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@CPU_SH5_103 = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CPU_SH5_101 = common dso_local global i32 0, align 4
@CPU_FAMILY_SH5 = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@SH_CACHE_MODE_WB = common dso_local global i32 0, align 4
@SH_CACHE_MODE_WT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_probe() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @peek_real_address_q(i32 218103816)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 20739
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @CPU_SH5_103, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 3), align 4
  br label %16

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = lshr i64 %9, 32
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 20962
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @CPU_SH5_101, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 3), align 4
  br label %15

15:                                               ; preds = %13, %8
  br label %16

16:                                               ; preds = %15, %6
  %17 = load i32, i32* @CPU_FAMILY_SH5, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 2), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 0), align 8
  store i32 256, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 1), align 4
  %18 = load i32, i32* @L1_CACHE_BYTES, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 2), align 8
  store i32 8192, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 3), align 4
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 4), align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 2), align 8
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 5), align 4
  store i32 8160, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1, i32 7), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @boot_cpu_data to i8*), i8* align 8 bitcast (%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 1) to i8*), i64 40, i1 false)
  %22 = call i32 (...) @sh64_tlb_init()
  ret void
}

declare dso_local i64 @peek_real_address_q(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sh64_tlb_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
