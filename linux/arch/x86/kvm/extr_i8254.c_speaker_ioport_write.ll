; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_speaker_ioport_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_speaker_ioport_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.kvm_pit = type { %struct.kvm_kpit_state }
%struct.kvm_kpit_state = type { i32, i32 }

@KVM_SPEAKER_BASE_ADDRESS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i64, i32, i8*)* @speaker_ioport_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speaker_ioport_write(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_io_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.kvm_pit*, align 8
  %13 = alloca %struct.kvm_kpit_state*, align 8
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_io_device* %1, %struct.kvm_io_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.kvm_io_device*, %struct.kvm_io_device** %8, align 8
  %16 = call %struct.kvm_pit* @speaker_to_pit(%struct.kvm_io_device* %15)
  store %struct.kvm_pit* %16, %struct.kvm_pit** %12, align 8
  %17 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %18 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %17, i32 0, i32 0
  store %struct.kvm_kpit_state* %18, %struct.kvm_kpit_state** %13, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @KVM_SPEAKER_BASE_ADDRESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %44

28:                                               ; preds = %5
  %29 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %30 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %14, align 4
  %33 = ashr i32 %32, 1
  %34 = and i32 %33, 1
  %35 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %36 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %38, 1
  %40 = call i32 @pit_set_gate(%struct.kvm_pit* %37, i32 2, i32 %39)
  %41 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %42 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %28, %25
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.kvm_pit* @speaker_to_pit(%struct.kvm_io_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pit_set_gate(%struct.kvm_pit*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
