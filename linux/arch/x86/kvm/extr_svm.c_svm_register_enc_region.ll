; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_register_enc_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_register_enc_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_enc_region = type { i64, i64 }
%struct.kvm_sev_info = type { i32 }
%struct.enc_region = type { i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.kvm_sev_info }

@ENOTTY = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_enc_region*)* @svm_register_enc_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_register_enc_region(%struct.kvm* %0, %struct.kvm_enc_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_enc_region*, align 8
  %6 = alloca %struct.kvm_sev_info*, align 8
  %7 = alloca %struct.enc_region*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_enc_region* %1, %struct.kvm_enc_region** %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = call %struct.TYPE_2__* @to_kvm_svm(%struct.kvm* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.kvm_sev_info* %11, %struct.kvm_sev_info** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.kvm*, %struct.kvm** %4, align 8
  %13 = call i32 @sev_guest(%struct.kvm* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTTY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.kvm_enc_region*, %struct.kvm_enc_region** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_enc_region, %struct.kvm_enc_region* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ULONG_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.kvm_enc_region*, %struct.kvm_enc_region** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_enc_region, %struct.kvm_enc_region* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ULONG_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %95

33:                                               ; preds = %24
  %34 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %35 = call %struct.enc_region* @kzalloc(i32 32, i32 %34)
  store %struct.enc_region* %35, %struct.enc_region** %7, align 8
  %36 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %37 = icmp ne %struct.enc_region* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %95

41:                                               ; preds = %33
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = load %struct.kvm_enc_region*, %struct.kvm_enc_region** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_enc_region, %struct.kvm_enc_region* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.kvm_enc_region*, %struct.kvm_enc_region** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_enc_region, %struct.kvm_enc_region* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %50 = getelementptr inbounds %struct.enc_region, %struct.enc_region* %49, i32 0, i32 3
  %51 = call i32 @sev_pin_memory(%struct.kvm* %42, i64 %45, i64 %48, i32* %50, i32 1)
  %52 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %53 = getelementptr inbounds %struct.enc_region, %struct.enc_region* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %55 = getelementptr inbounds %struct.enc_region, %struct.enc_region* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %91

61:                                               ; preds = %41
  %62 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %63 = getelementptr inbounds %struct.enc_region, %struct.enc_region* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %66 = getelementptr inbounds %struct.enc_region, %struct.enc_region* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sev_clflush_pages(i32 %64, i32 %67)
  %69 = load %struct.kvm_enc_region*, %struct.kvm_enc_region** %5, align 8
  %70 = getelementptr inbounds %struct.kvm_enc_region, %struct.kvm_enc_region* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %73 = getelementptr inbounds %struct.enc_region, %struct.enc_region* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.kvm_enc_region*, %struct.kvm_enc_region** %5, align 8
  %75 = getelementptr inbounds %struct.kvm_enc_region, %struct.kvm_enc_region* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %78 = getelementptr inbounds %struct.enc_region, %struct.enc_region* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.kvm*, %struct.kvm** %4, align 8
  %80 = getelementptr inbounds %struct.kvm, %struct.kvm* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %83 = getelementptr inbounds %struct.enc_region, %struct.enc_region* %82, i32 0, i32 2
  %84 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %6, align 8
  %85 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %84, i32 0, i32 0
  %86 = call i32 @list_add_tail(i32* %83, i32* %85)
  %87 = load %struct.kvm*, %struct.kvm** %4, align 8
  %88 = getelementptr inbounds %struct.kvm, %struct.kvm* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %95

91:                                               ; preds = %58
  %92 = load %struct.enc_region*, %struct.enc_region** %7, align 8
  %93 = call i32 @kfree(%struct.enc_region* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %61, %38, %30, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_2__* @to_kvm_svm(%struct.kvm*) #1

declare dso_local i32 @sev_guest(%struct.kvm*) #1

declare dso_local %struct.enc_region* @kzalloc(i32, i32) #1

declare dso_local i32 @sev_pin_memory(%struct.kvm*, i64, i64, i32*, i32) #1

declare dso_local i32 @sev_clflush_pages(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.enc_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
