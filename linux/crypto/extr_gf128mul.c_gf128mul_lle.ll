; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gf128mul.c_gf128mul_lle.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gf128mul.c_gf128mul_lle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf128mul_lle(i32* %0, i32* %1) #0 {
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
  %22 = call i32 @gf128mul_x_lle(i32* %18, i32* %21)
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

29:                                               ; preds = %112, %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 15, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %43 = call i32 @be128_xor(i32* %40, i32* %41, i32* %42)
  br label %44

44:                                               ; preds = %39, %29
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %52 = call i32 @be128_xor(i32* %49, i32* %50, i32* %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %61 = call i32 @be128_xor(i32* %58, i32* %59, i32* %60)
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 16
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %70 = call i32 @be128_xor(i32* %67, i32* %68, i32* %69)
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %79 = call i32 @be128_xor(i32* %76, i32* %77, i32* %78)
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32*, i32** %3, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %88 = call i32 @be128_xor(i32* %85, i32* %86, i32* %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32*, i32** %3, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %97 = call i32 @be128_xor(i32* %94, i32* %95, i32* %96)
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32*, i32** %3, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %106 = call i32 @be128_xor(i32* %103, i32* %104, i32* %105)
  br label %107

107:                                              ; preds = %102, %98
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  %110 = icmp sge i32 %109, 16
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %115

112:                                              ; preds = %107
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @gf128mul_x8_lle(i32* %113)
  br label %29

115:                                              ; preds = %111
  ret void
}

declare dso_local i32 @gf128mul_x_lle(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @gf128mul_x8_lle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
