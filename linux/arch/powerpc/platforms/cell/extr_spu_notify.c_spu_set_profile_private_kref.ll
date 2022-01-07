; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_notify.c_spu_set_profile_private_kref.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spu_notify.c_spu_set_profile_private_kref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { void (%struct.kref*)*, %struct.kref.0* }
%struct.kref = type opaque
%struct.kref.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_set_profile_private_kref(%struct.spu_context* %0, %struct.kref.0* %1, void (%struct.kref.0*)* %2) #0 {
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca %struct.kref.0*, align 8
  %6 = alloca void (%struct.kref.0*)*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %4, align 8
  store %struct.kref.0* %1, %struct.kref.0** %5, align 8
  store void (%struct.kref.0*)* %2, void (%struct.kref.0*)** %6, align 8
  %7 = load %struct.kref.0*, %struct.kref.0** %5, align 8
  %8 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %9 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %8, i32 0, i32 1
  store %struct.kref.0* %7, %struct.kref.0** %9, align 8
  %10 = load void (%struct.kref.0*)*, void (%struct.kref.0*)** %6, align 8
  %11 = bitcast void (%struct.kref.0*)* %10 to void (%struct.kref*)*
  %12 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %13 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %12, i32 0, i32 0
  store void (%struct.kref*)* %11, void (%struct.kref*)** %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
