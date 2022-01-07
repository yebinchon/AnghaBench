; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gf128mul.c_gf128mul_bbe.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gf128mul.c_gf128mul_bbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf128mul_bbe(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %17
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %20
  %22 = call i32 @gf128mul_x_bbe(i32* %18, i32* %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %111, %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %42 = call i32 @be128_xor(i32* %39, i32* %40, i32* %41)
  br label %43

43:                                               ; preds = %38, %29
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 64
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %51 = call i32 @be128_xor(i32* %48, i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %60 = call i32 @be128_xor(i32* %57, i32* %58, i32* %59)
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 16
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32*, i32** %3, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %69 = call i32 @be128_xor(i32* %66, i32* %67, i32* %68)
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32*, i32** %3, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %78 = call i32 @be128_xor(i32* %75, i32* %76, i32* %77)
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %87 = call i32 @be128_xor(i32* %84, i32* %85, i32* %86)
  br label %88

88:                                               ; preds = %83, %79
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 2
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %96 = call i32 @be128_xor(i32* %93, i32* %94, i32* %95)
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32*, i32** %3, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %105 = call i32 @be128_xor(i32* %102, i32* %103, i32* %104)
  br label %106

106:                                              ; preds = %101, %97
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = icmp sge i32 %108, 16
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %114

111:                                              ; preds = %106
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @gf128mul_x8_bbe(i32* %112)
  br label %29

114:                                              ; preds = %110
  ret void
}

declare dso_local i32 @gf128mul_x_bbe(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @gf128mul_x8_bbe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
