; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_btext.c_btext_drawchar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_btext.c_btext_drawchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_text_mapped = common dso_local global i32 0, align 4
@g_loc_X = common dso_local global i64 0, align 8
@g_loc_Y = common dso_local global i64 0, align 8
@g_max_loc_X = common dso_local global i64 0, align 8
@g_max_loc_Y = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btext_drawchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @boot_text_mapped, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  %8 = load i8, i8* %2, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %25 [
    i32 8, label %10
    i32 9, label %17
    i32 13, label %21
    i32 10, label %22
  ]

10:                                               ; preds = %7
  %11 = load i64, i64* @g_loc_X, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @g_loc_X, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* @g_loc_X, align 8
  br label %16

16:                                               ; preds = %13, %10
  br label %32

17:                                               ; preds = %7
  %18 = load i64, i64* @g_loc_X, align 8
  %19 = and i64 %18, -8
  %20 = add nsw i64 %19, 8
  store i64 %20, i64* @g_loc_X, align 8
  br label %32

21:                                               ; preds = %7
  store i64 0, i64* @g_loc_X, align 8
  br label %32

22:                                               ; preds = %7
  store i64 0, i64* @g_loc_X, align 8
  %23 = load i64, i64* @g_loc_Y, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @g_loc_Y, align 8
  store i32 1, i32* %3, align 4
  br label %32

25:                                               ; preds = %7
  %26 = load i8, i8* %2, align 1
  %27 = load i64, i64* @g_loc_X, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @g_loc_X, align 8
  %29 = trunc i64 %27 to i32
  %30 = load i64, i64* @g_loc_Y, align 8
  %31 = call i32 @draw_byte(i8 signext %26, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %25, %22, %21, %17, %16
  %33 = load i64, i64* @g_loc_X, align 8
  %34 = load i64, i64* @g_max_loc_X, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  store i64 0, i64* @g_loc_X, align 8
  %37 = load i64, i64* @g_loc_Y, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @g_loc_Y, align 8
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i64, i64* @g_loc_Y, align 8
  %42 = load i64, i64* @g_max_loc_Y, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 (...) @scrollscreen()
  %46 = load i64, i64* @g_loc_Y, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* @g_loc_Y, align 8
  br label %40

48:                                               ; preds = %6, %40
  ret void
}

declare dso_local i32 @draw_byte(i8 signext, i32, i64) #1

declare dso_local i32 @scrollscreen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
