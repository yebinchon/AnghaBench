; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_get_out.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_get_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32 }

@KVM_PIT_FREQ = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_pit*, i32)* @pit_get_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_get_out(%struct.kvm_pit* %0, i32 %1) #0 {
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
  switch i32 %26, label %27 [
    i32 0, label %28
    i32 1, label %35
    i32 2, label %42
    i32 3, label %55
    i32 4, label %68
    i32 5, label %68
  ]

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %2, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  br label %75

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %75

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mod_64(i32 %43, i32 %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %42
  %53 = phi i1 [ false, %42 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %75

55:                                               ; preds = %2
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %58 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mod_64(i32 %56, i32 %59)
  %61 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %62 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = ashr i32 %64, 1
  %66 = icmp slt i32 %60, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %8, align 4
  br label %75

68:                                               ; preds = %2, %2
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %68, %55, %52, %35, %28
  %76 = load i32, i32* %8, align 4
  ret i32 %76
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
