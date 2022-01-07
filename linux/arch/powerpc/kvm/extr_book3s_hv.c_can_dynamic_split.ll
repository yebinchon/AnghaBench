; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_can_dynamic_split.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_can_dynamic_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcore = type { i32, i64, i32 }
%struct.core_info = type { i32, i32, i32, i32*, %struct.kvmppc_vcore** }

@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@one_vm_per_core = common dso_local global i64 0, align 8
@no_mixing_hpt_and_radix = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcore*, %struct.core_info*)* @can_dynamic_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_dynamic_split(%struct.kvmppc_vcore* %0, %struct.core_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvmppc_vcore*, align 8
  %5 = alloca %struct.core_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvmppc_vcore* %0, %struct.kvmppc_vcore** %4, align 8
  store %struct.core_info* %1, %struct.core_info** %5, align 8
  %8 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %9 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %12 = call i32 @cpu_has_feature(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

15:                                               ; preds = %2
  %16 = load i64, i64* @one_vm_per_core, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.core_info*, %struct.core_info** %5, align 8
  %23 = getelementptr inbounds %struct.core_info, %struct.core_info* %22, i32 0, i32 4
  %24 = load %struct.kvmppc_vcore**, %struct.kvmppc_vcore*** %23, align 8
  %25 = getelementptr inbounds %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %24, i64 0
  %26 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %25, align 8
  %27 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %21, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %107

31:                                               ; preds = %18, %15
  %32 = load i64, i64* @no_mixing_hpt_and_radix, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %36 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @kvm_is_radix(i64 %37)
  %39 = load %struct.core_info*, %struct.core_info** %5, align 8
  %40 = getelementptr inbounds %struct.core_info, %struct.core_info* %39, i32 0, i32 4
  %41 = load %struct.kvmppc_vcore**, %struct.kvmppc_vcore*** %40, align 8
  %42 = getelementptr inbounds %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %41, i64 0
  %43 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %42, align 8
  %44 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @kvm_is_radix(i64 %45)
  %47 = icmp ne i64 %38, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %107

49:                                               ; preds = %34, %31
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.core_info*, %struct.core_info** %5, align 8
  %52 = getelementptr inbounds %struct.core_info, %struct.core_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.core_info*, %struct.core_info** %5, align 8
  %57 = getelementptr inbounds %struct.core_info, %struct.core_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.core_info*, %struct.core_info** %5, align 8
  %61 = getelementptr inbounds %struct.core_info, %struct.core_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @subcore_config_ok(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %107

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.core_info*, %struct.core_info** %5, align 8
  %71 = getelementptr inbounds %struct.core_info, %struct.core_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.core_info*, %struct.core_info** %5, align 8
  %73 = getelementptr inbounds %struct.core_info, %struct.core_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %7, align 4
  %75 = load %struct.core_info*, %struct.core_info** %5, align 8
  %76 = getelementptr inbounds %struct.core_info, %struct.core_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %80 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.core_info*, %struct.core_info** %5, align 8
  %83 = getelementptr inbounds %struct.core_info, %struct.core_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %87 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.core_info*, %struct.core_info** %5, align 8
  %90 = getelementptr inbounds %struct.core_info, %struct.core_info* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  %95 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %96 = load %struct.core_info*, %struct.core_info** %5, align 8
  %97 = getelementptr inbounds %struct.core_info, %struct.core_info* %96, i32 0, i32 4
  %98 = load %struct.kvmppc_vcore**, %struct.kvmppc_vcore*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %98, i64 %100
  store %struct.kvmppc_vcore* %95, %struct.kvmppc_vcore** %101, align 8
  %102 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %103 = call i32 @init_vcore_to_run(%struct.kvmppc_vcore* %102)
  %104 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %105 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %104, i32 0, i32 2
  %106 = call i32 @list_del_init(i32* %105)
  store i32 1, i32* %3, align 4
  br label %107

107:                                              ; preds = %68, %67, %48, %30, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @kvm_is_radix(i64) #1

declare dso_local i32 @subcore_config_ok(i32, i32) #1

declare dso_local i32 @init_vcore_to_run(%struct.kvmppc_vcore*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
