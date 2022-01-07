; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_init_core_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_init_core_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_info = type { i32, %struct.kvmppc_vcore**, i32*, i32, i32 }
%struct.kvmppc_vcore = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.core_info*, %struct.kvmppc_vcore*)* @init_core_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_core_info(%struct.core_info* %0, %struct.kvmppc_vcore* %1) #0 {
  %3 = alloca %struct.core_info*, align 8
  %4 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.core_info* %0, %struct.core_info** %3, align 8
  store %struct.kvmppc_vcore* %1, %struct.kvmppc_vcore** %4, align 8
  %5 = load %struct.core_info*, %struct.core_info** %3, align 8
  %6 = call i32 @memset(%struct.core_info* %5, i32 0, i32 32)
  %7 = load %struct.core_info*, %struct.core_info** %3, align 8
  %8 = getelementptr inbounds %struct.core_info, %struct.core_info* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %10 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.core_info*, %struct.core_info** %3, align 8
  %13 = getelementptr inbounds %struct.core_info, %struct.core_info* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %15 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.core_info*, %struct.core_info** %3, align 8
  %18 = getelementptr inbounds %struct.core_info, %struct.core_info* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.core_info*, %struct.core_info** %3, align 8
  %23 = getelementptr inbounds %struct.core_info, %struct.core_info* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %4, align 8
  %27 = load %struct.core_info*, %struct.core_info** %3, align 8
  %28 = getelementptr inbounds %struct.core_info, %struct.core_info* %27, i32 0, i32 1
  %29 = load %struct.kvmppc_vcore**, %struct.kvmppc_vcore*** %28, align 8
  %30 = getelementptr inbounds %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %29, i64 0
  store %struct.kvmppc_vcore* %26, %struct.kvmppc_vcore** %30, align 8
  ret void
}

declare dso_local i32 @memset(%struct.core_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
