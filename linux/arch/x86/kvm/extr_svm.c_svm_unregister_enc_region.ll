; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_unregister_enc_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_unregister_enc_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_enc_region = type { i32 }
%struct.enc_region = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_enc_region*)* @svm_unregister_enc_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_unregister_enc_region(%struct.kvm* %0, %struct.kvm_enc_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_enc_region*, align 8
  %6 = alloca %struct.enc_region*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_enc_region* %1, %struct.kvm_enc_region** %5, align 8
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = call i32 @sev_guest(%struct.kvm* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOTTY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.kvm*, %struct.kvm** %4, align 8
  %19 = load %struct.kvm_enc_region*, %struct.kvm_enc_region** %5, align 8
  %20 = call %struct.enc_region* @find_enc_region(%struct.kvm* %18, %struct.kvm_enc_region* %19)
  store %struct.enc_region* %20, %struct.enc_region** %6, align 8
  %21 = load %struct.enc_region*, %struct.enc_region** %6, align 8
  %22 = icmp ne %struct.enc_region* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load %struct.kvm*, %struct.kvm** %4, align 8
  %28 = load %struct.enc_region*, %struct.enc_region** %6, align 8
  %29 = call i32 @__unregister_enc_region_locked(%struct.kvm* %27, %struct.enc_region* %28)
  %30 = load %struct.kvm*, %struct.kvm** %4, align 8
  %31 = getelementptr inbounds %struct.kvm, %struct.kvm* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  store i32 0, i32* %3, align 4
  br label %38

33:                                               ; preds = %23, %14
  %34 = load %struct.kvm*, %struct.kvm** %4, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sev_guest(%struct.kvm*) #1

declare dso_local %struct.enc_region* @find_enc_region(%struct.kvm*, %struct.kvm_enc_region*) #1

declare dso_local i32 @__unregister_enc_region_locked(%struct.kvm*, %struct.enc_region*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
