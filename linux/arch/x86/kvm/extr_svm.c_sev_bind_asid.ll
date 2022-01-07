; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_bind_asid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_bind_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.sev_data_activate = type { i32, i32 }

@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32, i32*)* @sev_bind_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_bind_asid(%struct.kvm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sev_data_activate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.kvm*, %struct.kvm** %5, align 8
  %12 = call i32 @sev_get_asid(%struct.kvm* %11)
  store i32 %12, i32* %9, align 4
  %13 = call i32 (...) @wbinvd_on_all_cpus()
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @sev_guest_df_flush(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %22 = call %struct.sev_data_activate* @kzalloc(i32 8, i32 %21)
  store %struct.sev_data_activate* %22, %struct.sev_data_activate** %8, align 8
  %23 = load %struct.sev_data_activate*, %struct.sev_data_activate** %8, align 8
  %24 = icmp ne %struct.sev_data_activate* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.sev_data_activate*, %struct.sev_data_activate** %8, align 8
  %31 = getelementptr inbounds %struct.sev_data_activate, %struct.sev_data_activate* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.sev_data_activate*, %struct.sev_data_activate** %8, align 8
  %34 = getelementptr inbounds %struct.sev_data_activate, %struct.sev_data_activate* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sev_data_activate*, %struct.sev_data_activate** %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sev_guest_activate(%struct.sev_data_activate* %35, i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.sev_data_activate*, %struct.sev_data_activate** %8, align 8
  %39 = call i32 @kfree(%struct.sev_data_activate* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %28, %25, %18
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @sev_get_asid(%struct.kvm*) #1

declare dso_local i32 @wbinvd_on_all_cpus(...) #1

declare dso_local i32 @sev_guest_df_flush(i32*) #1

declare dso_local %struct.sev_data_activate* @kzalloc(i32, i32) #1

declare dso_local i32 @sev_guest_activate(%struct.sev_data_activate*, i32*) #1

declare dso_local i32 @kfree(%struct.sev_data_activate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
