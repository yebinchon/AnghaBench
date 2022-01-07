; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cast5_generic.c_cast5_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cast5_generic.c_cast5_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cast5_ctx = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cast5_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cast5_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca [16 x i32], align 16
  %12 = alloca [4 x i32], align 16
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %14 = call %struct.cast5_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.cast5_ctx* %14, %struct.cast5_ctx** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ule i32 %15, 10
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = load %struct.cast5_ctx*, %struct.cast5_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %22 = call i32 @memset(i32* %21, i32 0, i32 16)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @memcpy(i32* %23, i32* %24, i32 %25)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = call i32 @be32_to_cpu(i32 %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %46 = call i32 @key_schedule(i32* %43, i32* %44, i32* %45)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %61, %3
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 16
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cast5_ctx*, %struct.cast5_ctx** %7, align 8
  %56 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %47

64:                                               ; preds = %47
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %68 = call i32 @key_schedule(i32* %65, i32* %66, i32* %67)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %84, %64
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 16
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 31
  %78 = load %struct.cast5_ctx*, %struct.cast5_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %69

87:                                               ; preds = %69
  ret i32 0
}

declare dso_local %struct.cast5_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @key_schedule(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
