; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_sha1.c_sha1_hmac.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_sha1.c_sha1_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha1_hmac(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i32], align 16
  %14 = alloca [64 x i32], align 16
  %15 = alloca [20 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 54, i32 64)
  %18 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %19 = call i32 @memset(i32* %18, i32 92, i32 64)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %49, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = icmp sge i32 %25, 64
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %52

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %28
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %20

52:                                               ; preds = %27, %20
  %53 = call i32 @sha1_starts(i32* %12)
  %54 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %55 = call i32 @sha1_update(i32* %12, i32* %54, i32 64)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @sha1_update(i32* %12, i32* %56, i32 %57)
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %15, i64 0, i64 0
  %60 = call i32 @sha1_finish(i32* %12, i32* %59)
  %61 = call i32 @sha1_starts(i32* %12)
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %63 = call i32 @sha1_update(i32* %12, i32* %62, i32 64)
  %64 = getelementptr inbounds [20 x i32], [20 x i32]* %15, i64 0, i64 0
  %65 = call i32 @sha1_update(i32* %12, i32* %64, i32 20)
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @sha1_finish(i32* %12, i32* %66)
  %68 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %69 = call i32 @memset(i32* %68, i32 0, i32 64)
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %71 = call i32 @memset(i32* %70, i32 0, i32 64)
  %72 = getelementptr inbounds [20 x i32], [20 x i32]* %15, i64 0, i64 0
  %73 = call i32 @memset(i32* %72, i32 0, i32 20)
  %74 = call i32 @memset(i32* %12, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sha1_starts(i32*) #1

declare dso_local i32 @sha1_update(i32*, i32*, i32) #1

declare dso_local i32 @sha1_finish(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
