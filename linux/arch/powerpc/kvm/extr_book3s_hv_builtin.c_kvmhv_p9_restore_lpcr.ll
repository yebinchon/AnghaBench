; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmhv_p9_restore_lpcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmhv_p9_restore_lpcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }
%struct.kvm_split_mode = type { i64, i32 }

@PHASE_OUT_OF_GUEST = common dso_local global i32 0, align 4
@SPRN_LPID = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@local_paca = common dso_local global %struct.TYPE_4__* null, align 8
@PHASE_RESET_LPCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmhv_p9_restore_lpcr(%struct.kvm_split_mode* %0) #0 {
  %2 = alloca %struct.kvm_split_mode*, align 8
  store %struct.kvm_split_mode* %0, %struct.kvm_split_mode** %2, align 8
  %3 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %2, align 8
  %4 = load i32, i32* @PHASE_OUT_OF_GUEST, align 4
  %5 = call i32 @wait_for_sync(%struct.kvm_split_mode* %3, i32 %4)
  %6 = load i32, i32* @SPRN_LPID, align 4
  %7 = call i32 @mtspr(i32 %6, i32 0)
  %8 = load i32, i32* @SPRN_LPCR, align 4
  %9 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_split_mode, %struct.kvm_split_mode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mtspr(i32 %8, i32 %11)
  %13 = call i32 (...) @isync()
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %2, align 8
  %21 = getelementptr inbounds %struct.kvm_split_mode, %struct.kvm_split_mode* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = call i32 (...) @smp_wmb()
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.kvm_split_mode*, %struct.kvm_split_mode** %2, align 8
  %25 = load i32, i32* @PHASE_RESET_LPCR, align 4
  %26 = call i32 @wait_for_sync(%struct.kvm_split_mode* %24, i32 %25)
  %27 = call i32 (...) @smp_mb()
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local i32 @wait_for_sync(%struct.kvm_split_mode*, i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
