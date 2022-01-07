; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_init-common.c_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_init-common.c_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PGTABLE_INDEX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* (i32)* @ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void (i8*)* @ctor(i32 %0) #0 {
  %2 = alloca void (i8*)*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @MAX_PGTABLE_INDEX_SIZE, align 4
  %5 = icmp ne i32 %4, 15
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUILD_BUG_ON(i32 %6)
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %25 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %11
    i32 3, label %12
    i32 4, label %13
    i32 5, label %14
    i32 6, label %15
    i32 7, label %16
    i32 8, label %17
    i32 9, label %18
    i32 10, label %19
    i32 11, label %20
    i32 12, label %21
    i32 13, label %22
    i32 14, label %23
    i32 15, label %24
  ]

9:                                                ; preds = %1
  store void (i8*)* @ctor_0, void (i8*)** %2, align 8
  br label %26

10:                                               ; preds = %1
  store void (i8*)* @ctor_1, void (i8*)** %2, align 8
  br label %26

11:                                               ; preds = %1
  store void (i8*)* @ctor_2, void (i8*)** %2, align 8
  br label %26

12:                                               ; preds = %1
  store void (i8*)* @ctor_3, void (i8*)** %2, align 8
  br label %26

13:                                               ; preds = %1
  store void (i8*)* @ctor_4, void (i8*)** %2, align 8
  br label %26

14:                                               ; preds = %1
  store void (i8*)* @ctor_5, void (i8*)** %2, align 8
  br label %26

15:                                               ; preds = %1
  store void (i8*)* @ctor_6, void (i8*)** %2, align 8
  br label %26

16:                                               ; preds = %1
  store void (i8*)* @ctor_7, void (i8*)** %2, align 8
  br label %26

17:                                               ; preds = %1
  store void (i8*)* @ctor_8, void (i8*)** %2, align 8
  br label %26

18:                                               ; preds = %1
  store void (i8*)* @ctor_9, void (i8*)** %2, align 8
  br label %26

19:                                               ; preds = %1
  store void (i8*)* @ctor_10, void (i8*)** %2, align 8
  br label %26

20:                                               ; preds = %1
  store void (i8*)* @ctor_11, void (i8*)** %2, align 8
  br label %26

21:                                               ; preds = %1
  store void (i8*)* @ctor_12, void (i8*)** %2, align 8
  br label %26

22:                                               ; preds = %1
  store void (i8*)* @ctor_13, void (i8*)** %2, align 8
  br label %26

23:                                               ; preds = %1
  store void (i8*)* @ctor_14, void (i8*)** %2, align 8
  br label %26

24:                                               ; preds = %1
  store void (i8*)* @ctor_15, void (i8*)** %2, align 8
  br label %26

25:                                               ; preds = %1
  store void (i8*)* null, void (i8*)** %2, align 8
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %27 = load void (i8*)*, void (i8*)** %2, align 8
  ret void (i8*)* %27
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local void @ctor_0(i8*) #1

declare dso_local void @ctor_1(i8*) #1

declare dso_local void @ctor_2(i8*) #1

declare dso_local void @ctor_3(i8*) #1

declare dso_local void @ctor_4(i8*) #1

declare dso_local void @ctor_5(i8*) #1

declare dso_local void @ctor_6(i8*) #1

declare dso_local void @ctor_7(i8*) #1

declare dso_local void @ctor_8(i8*) #1

declare dso_local void @ctor_9(i8*) #1

declare dso_local void @ctor_10(i8*) #1

declare dso_local void @ctor_11(i8*) #1

declare dso_local void @ctor_12(i8*) #1

declare dso_local void @ctor_13(i8*) #1

declare dso_local void @ctor_14(i8*) #1

declare dso_local void @ctor_15(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
