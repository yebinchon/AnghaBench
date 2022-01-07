; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_gpsi_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_gpsi_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mips_instruction = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm_vcpu_arch }
%struct.kvm_vcpu_arch = type { i64, i64* }
%struct.TYPE_3__ = type { i64 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@cpu_has_mips_r6 = common dso_local global i64 0, align 8
@CacheOp_Cache = common dso_local global i64 0, align 8
@CacheOp_Op = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"CACHE (cache: %#x, op: %#x, base[%d]: %#lx, offset: %#x\0A\00", align 1
@Cache_I = common dso_local global i64 0, align 8
@Cache_D = common dso_local global i64 0, align 8
@CPU_CAVIUM_OCTEON3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"@ %#lx/%#lx CACHE (cache: %#x, op: %#x, base[%d]: %#lx, offset: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.mips_instruction*, i64*, i64, %struct.kvm_run*, %struct.kvm_vcpu*)* @kvm_vz_gpsi_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_gpsi_cache(%union.mips_instruction* byval(%union.mips_instruction) align 8 %0, i64* %1, i64 %2, %struct.kvm_run* %3, %struct.kvm_vcpu* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvm_run*, align 8
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.kvm_vcpu_arch*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.kvm_run* %3, %struct.kvm_run** %9, align 8
  store %struct.kvm_vcpu* %4, %struct.kvm_vcpu** %10, align 8
  %20 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  store %struct.kvm_vcpu_arch* %22, %struct.kvm_vcpu_arch** %17, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %19, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @update_pc(%struct.kvm_vcpu* %27, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @EMULATE_FAIL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %6, align 4
  br label %130

35:                                               ; preds = %5
  %36 = bitcast %union.mips_instruction* %0 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  %39 = bitcast %union.mips_instruction* %0 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* @cpu_has_mips_r6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = bitcast %union.mips_instruction* %0 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %16, align 8
  br label %52

48:                                               ; preds = %35
  %49 = bitcast %union.mips_instruction* %0 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %16, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @CacheOp_Cache, align 8
  %55 = and i64 %53, %54
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @CacheOp_Op, align 8
  %58 = and i64 %56, %57
  store i64 %58, i64* %14, align 8
  %59 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %17, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %16, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %18, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %17, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %15, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @kvm_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %68, i64 %69, i64 %75, i64 %76)
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @Cache_I, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %52
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @Cache_D, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %86, i32* %6, align 4
  br label %130

87:                                               ; preds = %81, %52
  %88 = load i64, i64* %13, align 8
  switch i64 %88, label %105 [
    i64 129, label %89
    i64 128, label %93
    i64 131, label %97
    i64 132, label %97
    i64 130, label %97
  ]

89:                                               ; preds = %87
  %90 = load i64, i64* %18, align 8
  %91 = call i32 @flush_icache_line_indexed(i64 %90)
  %92 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %92, i32* %6, align 4
  br label %130

93:                                               ; preds = %87
  %94 = load i64, i64* %18, align 8
  %95 = call i32 @flush_dcache_line_indexed(i64 %94)
  %96 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %96, i32* %6, align 4
  br label %130

97:                                               ; preds = %87, %87, %87
  %98 = call i32 (...) @boot_cpu_type()
  %99 = load i32, i32* @CPU_CAVIUM_OCTEON3, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = call i32 @local_flush_icache_range(i32 0, i32 0)
  %103 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %103, i32* %6, align 4
  br label %130

104:                                              ; preds = %97
  br label %106

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %104
  %107 = load i64, i64* %19, align 8
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %109 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 31
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %17, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %15, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call i32 @kvm_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %107, i64 %113, i64 %114, i64 %115, i64 %116, i64 %122, i64 %123)
  %125 = load i64, i64* %19, align 8
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  %129 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %106, %101, %93, %89, %85, %33
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @update_pc(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_debug(i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @flush_icache_line_indexed(i64) #1

declare dso_local i32 @flush_dcache_line_indexed(i64) #1

declare dso_local i32 @boot_cpu_type(...) #1

declare dso_local i32 @local_flush_icache_range(i32, i32) #1

declare dso_local i32 @kvm_err(i8*, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
