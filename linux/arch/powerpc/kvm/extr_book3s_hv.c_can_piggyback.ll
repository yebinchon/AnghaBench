; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_can_piggyback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_can_piggyback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcore = type { i32 }
%struct.core_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcore*, %struct.core_info*, i32)* @can_piggyback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_piggyback(%struct.kvmppc_vcore* %0, %struct.core_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_vcore*, align 8
  %6 = alloca %struct.core_info*, align 8
  %7 = alloca i32, align 4
  store %struct.kvmppc_vcore* %0, %struct.kvmppc_vcore** %5, align 8
  store %struct.core_info* %1, %struct.core_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.core_info*, %struct.core_info** %6, align 8
  %9 = getelementptr inbounds %struct.core_info, %struct.core_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %12 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %5, align 8
  %20 = load %struct.core_info*, %struct.core_info** %6, align 8
  %21 = call i32 @can_dynamic_split(%struct.kvmppc_vcore* %19, %struct.core_info* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @can_dynamic_split(%struct.kvmppc_vcore*, %struct.core_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
