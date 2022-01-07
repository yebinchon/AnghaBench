; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gib_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.kvm_s390_gib = type { i8* }
%struct.TYPE_5__ = type { i8* }

@css_general_characteristics = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"gib not initialized, no AIV facility\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@gib = common dso_local global %struct.kvm_s390_gib* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@gib_alert_irq = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Registering the GIB alert interruption handler failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Associating the GIB with the AIV facility failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"gib 0x%pK (nisc=%d) initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_gib_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @css_general_characteristics, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 (i32, i8*, ...) @KVM_EVENT(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %55

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @GFP_DMA, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @get_zeroed_page(i32 %11)
  %13 = inttoptr i64 %12 to %struct.kvm_s390_gib*
  store %struct.kvm_s390_gib* %13, %struct.kvm_s390_gib** @gib, align 8
  %14 = load %struct.kvm_s390_gib*, %struct.kvm_s390_gib** @gib, align 8
  %15 = icmp ne %struct.kvm_s390_gib* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %8
  %20 = load i8*, i8** %2, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gib_alert_irq, i32 0, i32 0), align 8
  %21 = call i64 @register_adapter_interrupt(%struct.TYPE_5__* @gib_alert_irq)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load i8*, i8** %2, align 8
  %29 = load %struct.kvm_s390_gib*, %struct.kvm_s390_gib** @gib, align 8
  %30 = getelementptr inbounds %struct.kvm_s390_gib, %struct.kvm_s390_gib* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.kvm_s390_gib*, %struct.kvm_s390_gib** @gib, align 8
  %32 = ptrtoint %struct.kvm_s390_gib* %31 to i64
  %33 = trunc i64 %32 to i32
  %34 = call i64 @chsc_sgib(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.kvm_s390_gib*, %struct.kvm_s390_gib** @gib, align 8
  %39 = ptrtoint %struct.kvm_s390_gib* %38 to i64
  %40 = call i32 @free_page(i64 %39)
  store %struct.kvm_s390_gib* null, %struct.kvm_s390_gib** @gib, align 8
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.kvm_s390_gib*, %struct.kvm_s390_gib** @gib, align 8
  %45 = load %struct.kvm_s390_gib*, %struct.kvm_s390_gib** @gib, align 8
  %46 = getelementptr inbounds %struct.kvm_s390_gib, %struct.kvm_s390_gib* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @KVM_EVENT(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.kvm_s390_gib* %44, i8* %47)
  br label %55

49:                                               ; preds = %36
  %50 = call i32 @unregister_adapter_interrupt(%struct.TYPE_5__* @gib_alert_irq)
  br label %51

51:                                               ; preds = %49, %23
  %52 = load %struct.kvm_s390_gib*, %struct.kvm_s390_gib** @gib, align 8
  %53 = ptrtoint %struct.kvm_s390_gib* %52 to i64
  %54 = call i32 @free_page(i64 %53)
  store %struct.kvm_s390_gib* null, %struct.kvm_s390_gib** @gib, align 8
  br label %55

55:                                               ; preds = %51, %43, %16, %6
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @KVM_EVENT(i32, i8*, ...) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @register_adapter_interrupt(%struct.TYPE_5__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @chsc_sgib(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @unregister_adapter_interrupt(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
