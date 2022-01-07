; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_page_track.c_kvm_page_track_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_page_track.c_kvm_page_track_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_page_track_notifier_head }
%struct.kvm_page_track_notifier_head = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_page_track_init(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.kvm_page_track_notifier_head*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %4 = load %struct.kvm*, %struct.kvm** %2, align 8
  %5 = getelementptr inbounds %struct.kvm, %struct.kvm* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.kvm_page_track_notifier_head* %6, %struct.kvm_page_track_notifier_head** %3, align 8
  %7 = load %struct.kvm_page_track_notifier_head*, %struct.kvm_page_track_notifier_head** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_page_track_notifier_head, %struct.kvm_page_track_notifier_head* %7, i32 0, i32 1
  %9 = call i32 @init_srcu_struct(i32* %8)
  %10 = load %struct.kvm_page_track_notifier_head*, %struct.kvm_page_track_notifier_head** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_page_track_notifier_head, %struct.kvm_page_track_notifier_head* %10, i32 0, i32 0
  %12 = call i32 @INIT_HLIST_HEAD(i32* %11)
  ret void
}

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
