; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_launch_finish.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_launch_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_sev_cmd = type { i32 }
%struct.kvm_sev_info = type { i32 }
%struct.sev_data_launch_finish = type { i32 }
%struct.TYPE_2__ = type { %struct.kvm_sev_info }

@ENOTTY = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SEV_CMD_LAUNCH_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_sev_cmd*)* @sev_launch_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_launch_finish(%struct.kvm* %0, %struct.kvm_sev_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_sev_cmd*, align 8
  %6 = alloca %struct.kvm_sev_info*, align 8
  %7 = alloca %struct.sev_data_launch_finish*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_sev_cmd* %1, %struct.kvm_sev_cmd** %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = call %struct.TYPE_2__* @to_kvm_svm(%struct.kvm* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.kvm_sev_info* %11, %struct.kvm_sev_info** %6, align 8
  %12 = load %struct.kvm*, %struct.kvm** %4, align 8
  %13 = call i32 @sev_guest(%struct.kvm* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTTY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %20 = call %struct.sev_data_launch_finish* @kzalloc(i32 4, i32 %19)
  store %struct.sev_data_launch_finish* %20, %struct.sev_data_launch_finish** %7, align 8
  %21 = load %struct.sev_data_launch_finish*, %struct.sev_data_launch_finish** %7, align 8
  %22 = icmp ne %struct.sev_data_launch_finish* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %18
  %27 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %6, align 8
  %28 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sev_data_launch_finish*, %struct.sev_data_launch_finish** %7, align 8
  %31 = getelementptr inbounds %struct.sev_data_launch_finish, %struct.sev_data_launch_finish* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = load i32, i32* @SEV_CMD_LAUNCH_FINISH, align 4
  %34 = load %struct.sev_data_launch_finish*, %struct.sev_data_launch_finish** %7, align 8
  %35 = load %struct.kvm_sev_cmd*, %struct.kvm_sev_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_sev_cmd, %struct.kvm_sev_cmd* %35, i32 0, i32 0
  %37 = call i32 @sev_issue_cmd(%struct.kvm* %32, i32 %33, %struct.sev_data_launch_finish* %34, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sev_data_launch_finish*, %struct.sev_data_launch_finish** %7, align 8
  %39 = call i32 @kfree(%struct.sev_data_launch_finish* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %26, %23, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_2__* @to_kvm_svm(%struct.kvm*) #1

declare dso_local i32 @sev_guest(%struct.kvm*) #1

declare dso_local %struct.sev_data_launch_finish* @kzalloc(i32, i32) #1

declare dso_local i32 @sev_issue_cmd(%struct.kvm*, i32, %struct.sev_data_launch_finish*, i32*) #1

declare dso_local i32 @kfree(%struct.sev_data_launch_finish*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
