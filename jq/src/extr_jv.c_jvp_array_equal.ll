; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_array_equal.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_array_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @jvp_array_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jvp_array_equal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @jvp_array_length(i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @jvp_array_length(i32 %9)
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @jvp_array_ptr(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @jvp_array_ptr(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @jvp_array_offset(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @jvp_array_offset(i32 %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %51

26:                                               ; preds = %19, %13
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %47, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @jvp_array_length(i32 %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @jvp_array_read(i32 %33, i32 %34)
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @jv_copy(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32* @jvp_array_read(i32 %38, i32 %39)
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @jv_copy(i32 %41)
  %43 = call i32 @jv_equal(i32 %37, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %51

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %27

50:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %45, %25, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @jvp_array_length(i32) #1

declare dso_local i64 @jvp_array_ptr(i32) #1

declare dso_local i64 @jvp_array_offset(i32) #1

declare dso_local i32 @jv_equal(i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32* @jvp_array_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
