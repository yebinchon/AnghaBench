; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_unwind.c_find_frame_creation.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_unwind.c_find_frame_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"    Invalid frame size %d at 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"    Found frame creation at 0x%p, size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*)* @find_frame_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @find_frame_creation(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %46

10:                                               ; preds = %7
  %11 = load i64*, i64** %3, align 8
  %12 = ptrtoint i64* %11 to i64
  %13 = call i32 @kernel_text_address(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i64* null, i64** %2, align 8
  br label %47

16:                                               ; preds = %10
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = and i64 %19, 4294901760
  %21 = icmp ne i64 %20, 807469056
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %41

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @get_frame_size(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 3
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %6, align 4
  %34 = load i64*, i64** %3, align 8
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i64* %34)
  store i64* null, i64** %2, align 8
  br label %47

36:                                               ; preds = %28
  %37 = load i64*, i64** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64* %37, i32 %38)
  %40 = load i64*, i64** %3, align 8
  store i64* %40, i64** %2, align 8
  br label %47

41:                                               ; preds = %22
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load i64*, i64** %3, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 -1
  store i64* %45, i64** %3, align 8
  br label %7

46:                                               ; preds = %7
  store i64* null, i64** %2, align 8
  br label %47

47:                                               ; preds = %46, %36, %32, %15
  %48 = load i64*, i64** %2, align 8
  ret i64* %48
}

declare dso_local i32 @kernel_text_address(i64) #1

declare dso_local i32 @get_frame_size(i64) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
