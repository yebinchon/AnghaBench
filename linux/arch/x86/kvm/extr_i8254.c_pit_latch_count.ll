; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_latch_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_latch_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pit*, i32)* @pit_latch_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pit_latch_count(%struct.kvm_pit* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_kpit_channel_state*, align 8
  store %struct.kvm_pit* %0, %struct.kvm_pit** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %9, i64 %11
  store %struct.kvm_kpit_channel_state* %12, %struct.kvm_kpit_channel_state** %5, align 8
  %13 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pit_get_count(%struct.kvm_pit* %18, i32 %19)
  %21 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @pit_get_count(%struct.kvm_pit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
