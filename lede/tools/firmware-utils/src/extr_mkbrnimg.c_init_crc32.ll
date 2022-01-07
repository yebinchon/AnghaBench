; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkbrnimg.c_init_crc32.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkbrnimg.c_init_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_poly = common dso_local global i32 0, align 4
@BPB = common dso_local global i32 0, align 4
@crc32 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_crc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_crc32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @crc32_poly, align 4
  %6 = call i32 @ntohl(i32 %5)
  store i32 %6, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %41, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @BPB, align 4
  %10 = shl i32 1, %9
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %12
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @BPB, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 1
  %26 = xor i32 %23, %25
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 1
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i32 [ %26, %22 ], [ %29, %27 ]
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %14
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** @crc32, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %7

44:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
