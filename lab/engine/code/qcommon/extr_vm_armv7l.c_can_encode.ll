; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_armv7l.c_can_encode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_armv7l.c_can_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"can_encode: invalid argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32)* @can_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @can_encode(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @DIE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 256
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %2, align 2
  br label %54

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp ugt i32 %20, 255
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ true, %19 ], [ %26, %22 ]
  br label %29

29:                                               ; preds = %27, %16
  %30 = phi i1 [ false, %16 ], [ %28, %27 ]
  br i1 %30, label %31, label %40

31:                                               ; preds = %29
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 3
  %34 = shl i32 %33, 30
  %35 = load i32, i32* %3, align 4
  %36 = lshr i32 %35, 2
  %37 = or i32 %34, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %16

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = icmp ugt i32 %41, 15
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp ugt i32 %44, 255
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store i16 0, i16* %2, align 2
  br label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = sub i32 16, %48
  %50 = shl i32 %49, 8
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %50, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %2, align 2
  br label %54

54:                                               ; preds = %47, %46, %12
  %55 = load i16, i16* %2, align 2
  ret i16 %55
}

declare dso_local i32 @DIE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
