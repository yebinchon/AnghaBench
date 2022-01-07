; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_resource.c_sys_old_getrlimit32.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_resource.c_sys_old_getrlimit32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit32_ = type { i64, i64 }

@INT_MAX = common dso_local global i64 0, align 8
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_old_getrlimit32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rlimit32_, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @do_getrlimit32(i32 %8, %struct.rlimit32_* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rlimit32_, %struct.rlimit32_* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INT_MAX, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64, i64* @INT_MAX, align 8
  %21 = getelementptr inbounds %struct.rlimit32_, %struct.rlimit32_* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.rlimit32_, %struct.rlimit32_* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INT_MAX, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* @INT_MAX, align 8
  %29 = getelementptr inbounds %struct.rlimit32_, %struct.rlimit32_* %6, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %5, align 4
  %32 = bitcast %struct.rlimit32_* %6 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @user_put(i32 %31, i64 %34, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @_EFAULT, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @do_getrlimit32(i32, %struct.rlimit32_*) #1

declare dso_local i64 @user_put(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
