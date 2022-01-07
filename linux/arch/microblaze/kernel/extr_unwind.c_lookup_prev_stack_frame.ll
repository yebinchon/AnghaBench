; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_unwind.c_lookup_prev_stack_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_unwind.c_lookup_prev_stack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_switch_to = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64*, i64*)* @lookup_prev_stack_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_prev_stack_frame(i64 %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* null, i64** %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, ptrtoint (i32* @_switch_to to i64)
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = inttoptr i64 %17 to i64*
  %19 = call i64* @find_frame_creation(i64* %18)
  store i64* %19, i64** %12, align 8
  br label %20

20:                                               ; preds = %16, %5
  %21 = load i64*, i64** %12, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i64*, i64** %12, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @get_frame_size(i64 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %27, %28
  %30 = load i64*, i64** %10, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = inttoptr i64 %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %11, align 8
  store i64 %33, i64* %34, align 8
  br label %46

35:                                               ; preds = %20
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %61

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = load i64*, i64** %11, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %23
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %51, align 8
  %53 = and i64 %52, 3
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 0, %58 ]
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %38
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64* @find_frame_creation(i64*) #1

declare dso_local i64 @get_frame_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
