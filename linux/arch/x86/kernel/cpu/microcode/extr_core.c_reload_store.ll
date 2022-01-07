; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_reload_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_reload_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@UCODE_OK = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@microcode_ops = common dso_local global %struct.TYPE_5__* null, align 8
@microcode_pdev = common dso_local global %struct.TYPE_4__* null, align 8
@UCODE_NEW = common dso_local global i32 0, align 4
@microcode_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reload_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reload_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @UCODE_OK, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_cpu_data, i32 0, i32 0), align 4
  store i32 %15, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @kstrtoul(i8* %16, i32 0, i64* %12)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %13, align 8
  store i64 %21, i64* %5, align 8
  br label %58

22:                                               ; preds = %4
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %5, align 8
  br label %58

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @microcode_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @microcode_pdev, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 %30(i32 %31, i32* %33, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @UCODE_NEW, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %5, align 8
  br label %58

40:                                               ; preds = %27
  %41 = call i32 (...) @get_online_cpus()
  %42 = call i64 (...) @check_online_cpus()
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %40
  %47 = call i32 @mutex_lock(i32* @microcode_mutex)
  %48 = call i64 (...) @microcode_reload_late()
  store i64 %48, i64* %13, align 8
  %49 = call i32 @mutex_unlock(i32* @microcode_mutex)
  br label %50

50:                                               ; preds = %46, %45
  %51 = call i32 (...) @put_online_cpus()
  %52 = load i64, i64* %13, align 8
  %53 = icmp uge i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, i64* %13, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %56, %38, %25, %20
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i64 @check_online_cpus(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @microcode_reload_late(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
