; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gisa_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gisa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.kvm = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.kvm_s390_gisa_interrupt }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.kvm_s390_gisa_interrupt = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }

@css_general_characteristics = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@gisa_vcpu_kicker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"gisa 0x%pK initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_s390_gisa_init(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.kvm_s390_gisa_interrupt*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %4 = load %struct.kvm*, %struct.kvm** %2, align 8
  %5 = getelementptr inbounds %struct.kvm, %struct.kvm* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store %struct.kvm_s390_gisa_interrupt* %6, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @css_general_characteristics, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.kvm*, %struct.kvm** %2, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %16, i32 0, i32 1
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %17, align 8
  %18 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %25, i32 0, i32 0
  store i32 50000, i32* %26, align 8
  %27 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %27, i32 0, i32 2
  %29 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %30 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %31 = call i32 @hrtimer_init(%struct.TYPE_12__* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @gisa_vcpu_kicker, align 4
  %33 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i32 @memset(%struct.TYPE_11__* %38, i32 0, i32 4)
  %40 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = ptrtoint %struct.TYPE_11__* %42 to i64
  %44 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i64 %43, i64* %47, align 8
  %48 = load %struct.kvm*, %struct.kvm** %2, align 8
  %49 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %50 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = call i32 @VM_EVENT(%struct.kvm* %48, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %51)
  br label %53

53:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @VM_EVENT(%struct.kvm*, i32, i8*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
