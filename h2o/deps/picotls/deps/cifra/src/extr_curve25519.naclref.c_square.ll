; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.naclref.c_square.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.naclref.c_square.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @square to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @square(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %114, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %11, label %117

11:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %34, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub i32 %14, %15
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = mul i32 %23, %30
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %65, %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 32
  %44 = load i32, i32* %6, align 4
  %45 = sub i32 %43, %44
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul i32 38, %52
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 32
  %57 = load i32, i32* %6, align 4
  %58 = sub i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = mul i32 %53, %61
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %40

68:                                               ; preds = %40
  %69 = load i32, i32* %7, align 4
  %70 = mul i32 %69, 2
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %68
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = udiv i32 %76, 2
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = udiv i32 %82, 2
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %80, %86
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = udiv i32 %91, 2
  %93 = add i32 %92, 16
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = mul i32 38, %96
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = udiv i32 %99, 2
  %101 = add i32 %100, 16
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = mul i32 %97, %104
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %74, %68
  %109 = load i32, i32* %7, align 4
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %5, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %8

117:                                              ; preds = %8
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @squeeze(i32* %118)
  ret void
}

declare dso_local i32 @squeeze(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
