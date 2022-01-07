; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_mailbox_signal.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_mailbox_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_QSB_QID = common dso_local global i32 0, align 4
@MBOX_IGU3_ISRS = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"queue = %u, is_tx = %d, MBOX_IGU3_ISR = 0x%08x\00", align 1
@MBOX_IGU3_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mailbox_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mailbox_signal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FIRST_QSB_QID, align 4
  %12 = add i32 %10, %11
  %13 = add i32 %12, 16
  %14 = call i64 @MBOX_IGU3_ISR_ISR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi i1 [ false, %9 ], [ %18, %16 ]
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  br label %9

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @FIRST_QSB_QID, align 4
  %27 = add i32 %25, %26
  %28 = add i32 %27, 16
  %29 = call i32 @MBOX_IGU3_ISRS_SET(i32 %28)
  %30 = load i32*, i32** @MBOX_IGU3_ISRS, align 8
  store i32 %29, i32* %30, align 4
  br label %48

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %41, %31
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @MBOX_IGU3_ISR_ISR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %37, 0
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %32

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @MBOX_IGU3_ISRS_SET(i32 %45)
  %47 = load i32*, i32** @MBOX_IGU3_ISRS, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %24
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MBOX_IGU3_ISR, align 4
  %55 = call i32 @IFX_REG_R32(i32 %54)
  %56 = call i32 @ASSERT(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %55)
  ret void
}

declare dso_local i64 @MBOX_IGU3_ISR_ISR(i32) #1

declare dso_local i32 @MBOX_IGU3_ISRS_SET(i32) #1

declare dso_local i32 @ASSERT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IFX_REG_R32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
