; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_HashString.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_HashString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HashString.randbox = internal global [16 x i64] [i64 1233424155, i64 3861208506, i64 920280028, i64 1203737833, i64 2361183778, i64 1436532842, i64 3530093878, i64 3775592346, i64 3249491305, i64 489232309, i64 3964416077, i64 2665808236, i64 1763913588, i64 4272782259, i64 3909655222, i64 4027774638], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @HashString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HashString(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %13, %14
  %16 = and i32 %15, 15
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i64], [16 x i64]* @HashString.randbox, i64 0, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = xor i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = lshr i32 %26, 31
  %28 = or i32 %25, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = ashr i32 %33, 4
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %34, %35
  %37 = and i32 %36, 15
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [16 x i64], [16 x i64]* @HashString.randbox, i64 0, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = xor i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, 2
  %47 = load i32, i32* %4, align 4
  %48 = lshr i32 %47, 30
  %49 = or i32 %46, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %4, align 4
  br label %6

51:                                               ; preds = %6
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
