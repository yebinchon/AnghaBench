; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gisa_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gisa_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_s390_gisa_interrupt }
%struct.kvm_s390_gisa_interrupt = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"vm 0x%pK has unexpected iam 0x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_s390_gisa_destroy(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.kvm_s390_gisa_interrupt*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %4 = load %struct.kvm*, %struct.kvm** %2, align 8
  %5 = getelementptr inbounds %struct.kvm, %struct.kvm* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.kvm_s390_gisa_interrupt* %6, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %7 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.kvm*, %struct.kvm** %2, align 8
  %20 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @KVM_EVENT(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.kvm* %19, i64 %23)
  br label %25

25:                                               ; preds = %18, %12
  br label %26

26:                                               ; preds = %32, %25
  %27 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @gisa_in_alert_list(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @cpu_relax()
  br label %26

34:                                               ; preds = %26
  %35 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %35, i32 0, i32 1
  %37 = call i32 @hrtimer_cancel(i32* %36)
  %38 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @KVM_EVENT(i32, i8*, %struct.kvm*, i64) #1

declare dso_local i64 @gisa_in_alert_list(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
