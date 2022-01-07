; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_stgi_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_stgi_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32 }

@INTERCEPT_STGI = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @stgi_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stgi_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %6 = call i64 @nested_svm_check_permissions(%struct.vcpu_svm* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = call i64 @vgif_enabled(%struct.vcpu_svm* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = load i32, i32* @INTERCEPT_STGI, align 4
  %16 = call i32 @clr_intercept(%struct.vcpu_svm* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %19 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %18, i32 0, i32 0
  %20 = call i32 @kvm_skip_emulated_instruction(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @KVM_REQ_EVENT, align 4
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 0
  %24 = call i32 @kvm_make_request(i32 %21, i32* %23)
  %25 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %26 = call i32 @enable_gif(%struct.vcpu_svm* %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @nested_svm_check_permissions(%struct.vcpu_svm*) #1

declare dso_local i64 @vgif_enabled(%struct.vcpu_svm*) #1

declare dso_local i32 @clr_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @kvm_skip_emulated_instruction(i32*) #1

declare dso_local i32 @kvm_make_request(i32, i32*) #1

declare dso_local i32 @enable_gif(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
