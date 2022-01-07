; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_get_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32 }

@KVM_PIT_FREQ = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_pit*, i32)* @pit_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_get_count(%struct.kvm_pit* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_kpit_channel_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_pit* %0, %struct.kvm_pit** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %12, i64 %14
  store %struct.kvm_kpit_channel_state* %15, %struct.kvm_kpit_channel_state** %5, align 8
  %16 = load %struct.kvm_pit*, %struct.kvm_pit** %3, align 8
  %17 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @kpit_elapsed(%struct.kvm_pit* %16, %struct.kvm_kpit_channel_state* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @KVM_PIT_FREQ, align 4
  %22 = load i32, i32* @NSEC_PER_SEC, align 4
  %23 = call i32 @mul_u64_u32_div(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %45 [
    i32 0, label %27
    i32 1, label %27
    i32 4, label %27
    i32 5, label %27
    i32 3, label %34
  ]

27:                                               ; preds = %2, %2, %2, %2
  %28 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = and i32 %32, 65535
  store i32 %33, i32* %8, align 4
  br label %55

34:                                               ; preds = %2
  %35 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 2, %38
  %40 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mod_64(i32 %39, i32 %42)
  %44 = sub nsw i32 %37, %43
  store i32 %44, i32* %8, align 4
  br label %55

45:                                               ; preds = %2
  %46 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %51 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mod_64(i32 %49, i32 %52)
  %54 = sub nsw i32 %48, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %45, %34, %27
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @kpit_elapsed(%struct.kvm_pit*, %struct.kvm_kpit_channel_state*, i32) #1

declare dso_local i32 @mul_u64_u32_div(i32, i32, i32) #1

declare dso_local i32 @mod_64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
