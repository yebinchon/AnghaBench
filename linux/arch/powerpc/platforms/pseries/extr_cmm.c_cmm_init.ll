; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@cmm_oom_nb = common dso_local global i32 0, align 4
@cmm_reboot_nb = common dso_local global i32 0, align 4
@cmm_dev = common dso_local global i32 0, align 4
@cmm_mem_nb = common dso_local global i32 0, align 4
@cmm_mem_isolate_nb = common dso_local global i32 0, align 4
@cmm_disabled = common dso_local global i64 0, align 8
@cmm_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cmmthread\00", align 1
@cmm_thread_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cmm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ENOMEM, align 4
  %4 = sub nsw i32 0, %3
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @FW_FEATURE_CMO, align 4
  %6 = call i32 @firmware_has_feature(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %56

11:                                               ; preds = %0
  %12 = call i32 @register_oom_notifier(i32* @cmm_oom_nb)
  store i32 %12, i32* %2, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %56

16:                                               ; preds = %11
  %17 = call i32 @register_reboot_notifier(i32* @cmm_reboot_nb)
  store i32 %17, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %53

20:                                               ; preds = %16
  %21 = call i32 @cmm_sysfs_register(i32* @cmm_dev)
  store i32 %21, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %51

24:                                               ; preds = %20
  %25 = call i64 @register_memory_notifier(i32* @cmm_mem_nb)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = call i64 @register_memory_isolate_notifier(i32* @cmm_mem_isolate_nb)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  br label %47

31:                                               ; preds = %27
  %32 = load i64, i64* @cmm_disabled, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %1, align 4
  br label %56

36:                                               ; preds = %31
  %37 = load i32, i32* @cmm_thread, align 4
  %38 = call i32 @kthread_run(i32 %37, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* @cmm_thread_ptr, align 4
  %39 = load i32, i32* @cmm_thread_ptr, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @cmm_thread_ptr, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %56

47:                                               ; preds = %42, %30
  %48 = call i32 @unregister_memory_notifier(i32* @cmm_mem_nb)
  %49 = call i32 @unregister_memory_isolate_notifier(i32* @cmm_mem_isolate_nb)
  %50 = call i32 @cmm_unregister_sysfs(i32* @cmm_dev)
  br label %51

51:                                               ; preds = %47, %23
  %52 = call i32 @unregister_reboot_notifier(i32* @cmm_reboot_nb)
  br label %53

53:                                               ; preds = %51, %19
  %54 = call i32 @unregister_oom_notifier(i32* @cmm_oom_nb)
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %53, %45, %34, %14, %8
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i32 @register_oom_notifier(i32*) #1

declare dso_local i32 @register_reboot_notifier(i32*) #1

declare dso_local i32 @cmm_sysfs_register(i32*) #1

declare dso_local i64 @register_memory_notifier(i32*) #1

declare dso_local i64 @register_memory_isolate_notifier(i32*) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @unregister_memory_notifier(i32*) #1

declare dso_local i32 @unregister_memory_isolate_notifier(i32*) #1

declare dso_local i32 @cmm_unregister_sysfs(i32*) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @unregister_oom_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
