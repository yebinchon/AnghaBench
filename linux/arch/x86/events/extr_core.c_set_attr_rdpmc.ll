; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_set_attr_rdpmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_set_attr_rdpmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOTSUPP = common dso_local global i64 0, align 8
@rdpmc_always_available_key = common dso_local global i32 0, align 4
@refresh_pce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_attr_rdpmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_attr_rdpmc(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @kstrtoul(i8* %12, i32 0, i64* %10)
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %11, align 8
  store i64 %17, i64* %5, align 8
  br label %52

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = icmp ugt i64 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %52

24:                                               ; preds = %18
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @ENOTSUPP, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %52

30:                                               ; preds = %24
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i32
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @static_branch_inc(i32* @rdpmc_always_available_key)
  br label %45

43:                                               ; preds = %38
  %44 = call i32 @static_branch_dec(i32* @rdpmc_always_available_key)
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* @refresh_pce, align 4
  %47 = call i32 @on_each_cpu(i32 %46, i32* null, i32 1)
  br label %48

48:                                               ; preds = %45, %30
  %49 = load i64, i64* %10, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %48, %27, %21, %16
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @static_branch_inc(i32*) #1

declare dso_local i32 @static_branch_dec(i32*) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
