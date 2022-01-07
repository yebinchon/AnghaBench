; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_store_fastsleep_workaround_applyonce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_idle.c_store_fastsleep_workaround_applyonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@fastsleep_workaround_applyonce = common dso_local global i32 0, align 4
@power7_fastsleep_workaround_exit = common dso_local global i32 0, align 4
@pnv_fastsleep_workaround_apply = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"fastsleep_workaround_applyonce change failed while running pnv_fastsleep_workaround_apply\00", align 1
@power7_fastsleep_workaround_entry = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fastsleep_workaround_applyonce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fastsleep_workaround_applyonce(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @kstrtou8(i8* %13, i32 0, i32* %12)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %4
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %5, align 8
  br label %42

22:                                               ; preds = %16
  %23 = load i32, i32* @fastsleep_workaround_applyonce, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %5, align 8
  br label %42

27:                                               ; preds = %22
  store i32 0, i32* @power7_fastsleep_workaround_exit, align 4
  %28 = call i32 (...) @get_online_cpus()
  %29 = call i32 (...) @cpu_online_cores_map()
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @pnv_fastsleep_workaround_apply, align 4
  %31 = call i32 @on_each_cpu_mask(i32* %10, i32 %30, i32* %11, i32 1)
  %32 = call i32 (...) @put_online_cpus()
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  br label %39

37:                                               ; preds = %27
  store i32 0, i32* @power7_fastsleep_workaround_entry, align 4
  store i32 1, i32* @fastsleep_workaround_applyonce, align 4
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %5, align 8
  br label %42

39:                                               ; preds = %35
  %40 = load i64, i64* @EIO, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %39, %37, %25, %19
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @cpu_online_cores_map(...) #1

declare dso_local i32 @on_each_cpu_mask(i32*, i32, i32*, i32) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
