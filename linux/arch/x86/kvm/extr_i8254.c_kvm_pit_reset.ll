; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_kvm_pit_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_kvm_pit_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_kpit_channel_state*, i64 }
%struct.kvm_kpit_channel_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pit*)* @kvm_pit_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_pit_reset(%struct.kvm_pit* %0) #0 {
  %2 = alloca %struct.kvm_pit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_kpit_channel_state*, align 8
  store %struct.kvm_pit* %0, %struct.kvm_pit** %2, align 8
  %5 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %15, i64 %17
  store %struct.kvm_kpit_channel_state* %18, %struct.kvm_kpit_channel_state** %4, align 8
  %19 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %19, i32 0, i32 0
  store i32 255, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 2
  %23 = zext i1 %22 to i32
  %24 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @pit_load_count(%struct.kvm_pit* %26, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.kvm_pit*, %struct.kvm_pit** %2, align 8
  %34 = call i32 @kvm_pit_reset_reinject(%struct.kvm_pit* %33)
  ret void
}

declare dso_local i32 @pit_load_count(%struct.kvm_pit*, i32, i32) #1

declare dso_local i32 @kvm_pit_reset_reinject(%struct.kvm_pit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
