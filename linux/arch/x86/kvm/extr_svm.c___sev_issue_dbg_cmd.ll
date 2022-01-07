; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c___sev_issue_dbg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c___sev_issue_dbg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_sev_info = type { i32 }
%struct.sev_data_dbg = type { i64, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.kvm_sev_info }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SEV_CMD_DBG_ENCRYPT = common dso_local global i32 0, align 4
@SEV_CMD_DBG_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64, i64, i32, i32*, i32)* @__sev_issue_dbg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sev_issue_dbg_cmd(%struct.kvm* %0, i64 %1, i64 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.kvm_sev_info*, align 8
  %15 = alloca %struct.sev_data_dbg*, align 8
  %16 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.kvm*, %struct.kvm** %8, align 8
  %18 = call %struct.TYPE_2__* @to_kvm_svm(%struct.kvm* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.kvm_sev_info* %19, %struct.kvm_sev_info** %14, align 8
  %20 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %21 = call %struct.sev_data_dbg* @kzalloc(i32 24, i32 %20)
  store %struct.sev_data_dbg* %21, %struct.sev_data_dbg** %15, align 8
  %22 = load %struct.sev_data_dbg*, %struct.sev_data_dbg** %15, align 8
  %23 = icmp ne %struct.sev_data_dbg* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %57

27:                                               ; preds = %6
  %28 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %14, align 8
  %29 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sev_data_dbg*, %struct.sev_data_dbg** %15, align 8
  %32 = getelementptr inbounds %struct.sev_data_dbg, %struct.sev_data_dbg* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.sev_data_dbg*, %struct.sev_data_dbg** %15, align 8
  %35 = getelementptr inbounds %struct.sev_data_dbg, %struct.sev_data_dbg* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.sev_data_dbg*, %struct.sev_data_dbg** %15, align 8
  %38 = getelementptr inbounds %struct.sev_data_dbg, %struct.sev_data_dbg* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.sev_data_dbg*, %struct.sev_data_dbg** %15, align 8
  %41 = getelementptr inbounds %struct.sev_data_dbg, %struct.sev_data_dbg* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.kvm*, %struct.kvm** %8, align 8
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @SEV_CMD_DBG_ENCRYPT, align 4
  br label %49

47:                                               ; preds = %27
  %48 = load i32, i32* @SEV_CMD_DBG_DECRYPT, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.sev_data_dbg*, %struct.sev_data_dbg** %15, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @sev_issue_cmd(%struct.kvm* %42, i32 %50, %struct.sev_data_dbg* %51, i32* %52)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.sev_data_dbg*, %struct.sev_data_dbg** %15, align 8
  %55 = call i32 @kfree(%struct.sev_data_dbg* %54)
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %49, %24
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @to_kvm_svm(%struct.kvm*) #1

declare dso_local %struct.sev_data_dbg* @kzalloc(i32, i32) #1

declare dso_local i32 @sev_issue_cmd(%struct.kvm*, i32, %struct.sev_data_dbg*, i32*) #1

declare dso_local i32 @kfree(%struct.sev_data_dbg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
