; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_collect_cpu_info_early.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_collect_cpu_info_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_cpu_info = type { i32, %struct.cpu_signature }
%struct.cpu_signature = type { i32, i32, i32, i32 }

@MSR_IA32_PLATFORM_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucode_cpu_info*)* @collect_cpu_info_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_cpu_info_early(%struct.ucode_cpu_info* %0) #0 {
  %2 = alloca %struct.ucode_cpu_info*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_signature, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ucode_cpu_info* %0, %struct.ucode_cpu_info** %2, align 8
  %11 = bitcast %struct.cpu_signature* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %2, align 8
  %13 = call i32 @memset(%struct.ucode_cpu_info* %12, i32 0, i32 20)
  store i32 1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = call i32 @native_cpuid(i32* %7, i32* %8, i32* %9, i32* %10)
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.cpu_signature, %struct.cpu_signature* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @x86_family(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @x86_model(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp uge i32 %21, 5
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp ugt i32 %24, 6
  br i1 %25, label %26, label %39

26:                                               ; preds = %23, %1
  %27 = load i32, i32* @MSR_IA32_PLATFORM_ID, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @native_rdmsr(i32 %27, i32 %29, i32 %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = lshr i32 %34, 18
  %36 = and i32 %35, 7
  %37 = shl i32 1, %36
  %38 = getelementptr inbounds %struct.cpu_signature, %struct.cpu_signature* %6, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %26, %23
  %40 = call i32 (...) @intel_get_microcode_revision()
  %41 = getelementptr inbounds %struct.cpu_signature, %struct.cpu_signature* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %2, align 8
  %43 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %42, i32 0, i32 1
  %44 = bitcast %struct.cpu_signature* %43 to i8*
  %45 = bitcast %struct.cpu_signature* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 16, i1 false)
  %46 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %2, align 8
  %47 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.ucode_cpu_info*, i32, i32) #2

declare dso_local i32 @native_cpuid(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @x86_family(i32) #2

declare dso_local i32 @x86_model(i32) #2

declare dso_local i32 @native_rdmsr(i32, i32, i32) #2

declare dso_local i32 @intel_get_microcode_revision(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
