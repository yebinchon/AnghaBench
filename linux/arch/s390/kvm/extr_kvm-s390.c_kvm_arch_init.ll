; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"kvm-trace\00", align 1
@kvm_s390_dbf = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@debug_sprintf_view = common dso_local global i32 0, align 4
@kvm_flic_ops = common dso_local global i32 0, align 4
@KVM_DEV_TYPE_FLIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"A FLIC registration call failed with rc=%d\0A\00", align 1
@GAL_ISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = call i32 @debug_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 32, i32 1, i32 56)
  store i32 %5, i32* @kvm_s390_dbf, align 4
  %6 = load i32, i32* @kvm_s390_dbf, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i32, i32* @kvm_s390_dbf, align 4
  %13 = call i64 @debug_register_view(i32 %12, i32* @debug_sprintf_view)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %11
  %19 = call i32 (...) @kvm_s390_cpu_feat_init()
  %20 = load i32, i32* @KVM_DEV_TYPE_FLIC, align 4
  %21 = call i32 @kvm_register_device_ops(i32* @kvm_flic_ops, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %36

27:                                               ; preds = %18
  %28 = load i32, i32* @GAL_ISC, align 4
  %29 = call i32 @kvm_s390_gib_init(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %40

34:                                               ; preds = %32
  %35 = call i32 (...) @kvm_s390_gib_destroy()
  br label %36

36:                                               ; preds = %34, %24, %15
  %37 = load i32, i32* @kvm_s390_dbf, align 4
  %38 = call i32 @debug_unregister(i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %33, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @debug_register(i8*, i32, i32, i32) #1

declare dso_local i64 @debug_register_view(i32, i32*) #1

declare dso_local i32 @kvm_s390_cpu_feat_init(...) #1

declare dso_local i32 @kvm_register_device_ops(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kvm_s390_gib_init(i32) #1

declare dso_local i32 @kvm_s390_gib_destroy(...) #1

declare dso_local i32 @debug_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
