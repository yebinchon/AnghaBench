; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_unaccelerated_access_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_unaccelerated_access_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@AVIC_UNACCEL_ACCESS_OFFSET_MASK = common dso_local global i32 0, align 4
@AVIC_UNACCEL_ACCESS_VECTOR_MASK = common dso_local global i32 0, align 4
@AVIC_UNACCEL_ACCESS_WRITE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"svm: Handling trap read.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @avic_unaccelerated_access_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avic_unaccelerated_access_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %9 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AVIC_UNACCEL_ACCESS_OFFSET_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %17 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AVIC_UNACCEL_ACCESS_VECTOR_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %25 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 32
  %31 = load i32, i32* @AVIC_UNACCEL_ACCESS_WRITE_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @is_avic_unaccelerated_access_trap(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %36 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @trace_kvm_avic_unaccelerated_access(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %1
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ONCE(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %53 = call i32 @avic_unaccel_trap_write(%struct.vcpu_svm* %52)
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %1
  %55 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %56 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %55, i32 0, i32 0
  %57 = call i32 @kvm_emulate_instruction(%struct.TYPE_6__* %56, i32 0)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @is_avic_unaccelerated_access_trap(i32) #1

declare dso_local i32 @trace_kvm_avic_unaccelerated_access(i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @avic_unaccel_trap_write(%struct.vcpu_svm*) #1

declare dso_local i32 @kvm_emulate_instruction(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
