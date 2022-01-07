; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sm4_generic.c_sm4_do_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sm4_generic.c_sm4_do_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @sm4_do_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm4_do_crypt(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %22, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @get_unaligned_be32(i32* %17)
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %10

25:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sm4_round(i32* %30, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %26

51:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %66, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 3, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @put_unaligned_be32(i32 %60, i32* %64)
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %52

69:                                               ; preds = %52
  ret void
}

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @sm4_round(i32*, i32) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
