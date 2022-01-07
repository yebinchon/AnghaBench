; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_armv7l.c_rimm.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_armv7l.c_rimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"immediate cannot be encoded (%d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32)* @rimm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @rimm(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %2, align 2
  br label %52

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %26, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp ugt i32 %15, 255
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ true, %14 ], [ %21, %17 ]
  br label %24

24:                                               ; preds = %22, %11
  %25 = phi i1 [ false, %11 ], [ %23, %22 ]
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 30
  %30 = load i32, i32* %3, align 4
  %31 = lshr i32 %30, 2
  %32 = or i32 %29, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %11

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = icmp ugt i32 %36, 15
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp ugt i32 %39, 255
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @DIE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %4, align 4
  %47 = sub i32 16, %46
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %48, %49
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %2, align 2
  br label %52

52:                                               ; preds = %45, %7
  %53 = load i16, i16* %2, align 2
  ret i16 %53
}

declare dso_local i32 @DIE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
