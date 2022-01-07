; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_guest_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_guest_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_sev_cmd = type { i32 }
%struct.kvm_sev_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.kvm_sev_info }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_sev_cmd*)* @sev_guest_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_guest_init(%struct.kvm* %0, %struct.kvm_sev_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_sev_cmd*, align 8
  %6 = alloca %struct.kvm_sev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_sev_cmd* %1, %struct.kvm_sev_cmd** %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = call %struct.TYPE_2__* @to_kvm_svm(%struct.kvm* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.kvm_sev_info* %11, %struct.kvm_sev_info** %6, align 8
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %6, align 8
  %15 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = call i32 (...) @sev_asid_new()
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %21
  %28 = load %struct.kvm_sev_cmd*, %struct.kvm_sev_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_sev_cmd, %struct.kvm_sev_cmd* %28, i32 0, i32 0
  %30 = call i32 @sev_platform_init(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %43

34:                                               ; preds = %27
  %35 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %6, align 8
  %39 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %40, i32 0, i32 2
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  store i32 0, i32* %3, align 4
  br label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @__sev_asid_free(i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %34, %25, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_2__* @to_kvm_svm(%struct.kvm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sev_asid_new(...) #1

declare dso_local i32 @sev_platform_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__sev_asid_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
