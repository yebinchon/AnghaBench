; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_poll.c_sys_ppoll.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_poll.c_sys_ppoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec_ = type { i32, i32 }

@_EFAULT = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ppoll(i64 %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.timespec_, align 4
  %14 = alloca %struct.timespec_, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = load i64, i64* %9, align 8
  %19 = bitcast %struct.timespec_* %13 to i64*
  %20 = load i64, i64* %19, align 4
  %21 = call i64 @user_get(i64 %18, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @_EFAULT, align 4
  store i32 %24, i32* %6, align 4
  br label %59

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.timespec_, %struct.timespec_* %13, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = getelementptr inbounds %struct.timespec_, %struct.timespec_* %13, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 1000000
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %25, %5
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @_EINVAL, align 4
  store i32 %41, i32* %6, align 4
  br label %59

42:                                               ; preds = %36
  %43 = load i64, i64* %10, align 8
  %44 = bitcast %struct.timespec_* %14 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = call i64 @user_get(i64 %43, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @_EFAULT, align 4
  store i32 %49, i32* %6, align 4
  br label %59

50:                                               ; preds = %42
  %51 = bitcast %struct.timespec_* %14 to i64*
  %52 = load i64, i64* %51, align 4
  %53 = call i32 @sigmask_set_temp(i64 %52)
  br label %54

54:                                               ; preds = %50, %33
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @sys_poll(i64 %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %48, %40, %23
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i64 @user_get(i64, i64) #1

declare dso_local i32 @sigmask_set_temp(i64) #1

declare dso_local i32 @sys_poll(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
