; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_set_gate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pit*, i32, i32)* @pit_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pit_set_gate(%struct.kvm_pit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_pit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_kpit_channel_state*, align 8
  store %struct.kvm_pit* %0, %struct.kvm_pit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm_pit*, %struct.kvm_pit** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %11, i64 %13
  store %struct.kvm_kpit_channel_state* %14, %struct.kvm_kpit_channel_state** %7, align 8
  %15 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %7, align 8
  %16 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %18 [
    i32 0, label %19
    i32 4, label %19
    i32 1, label %20
    i32 2, label %20
    i32 3, label %20
    i32 5, label %20
  ]

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %3, %3, %18
  br label %31

20:                                               ; preds = %3, %3, %3, %3
  %21 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %7, align 8
  %22 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 (...) @ktime_get()
  %28 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %7, align 8
  %34 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
