; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_pack25519.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_pack25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pack25519 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack25519(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @set25519(i32* %10, i32* %11)
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @car25519(i32* %13)
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @car25519(i32* %15)
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @car25519(i32* %17)
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %85, %2
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %20, 2
  br i1 %21, label %22, label %88

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 65517
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  store i64 1, i64* %5, align 8
  br label %29

29:                                               ; preds = %55, %22
  %30 = load i64, i64* %5, align 8
  %31 = icmp ult i64 %30, 15
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 65535
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 16
  %44 = and i32 %43, 1
  %45 = sub nsw i32 %37, %44
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 65535
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %32
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %29

58:                                               ; preds = %29
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 15
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 32767
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 14
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 1
  %68 = sub nsw i32 %62, %67
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 15
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 15
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 16
  %75 = and i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 14
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 65535
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 1, %82
  %84 = call i32 @sel25519(i32* %80, i32* %81, i32 %83)
  br label %85

85:                                               ; preds = %58
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %19

88:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %89

89:                                               ; preds = %112, %88
  %90 = load i64, i64* %5, align 8
  %91 = icmp ult i64 %90, 16
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 255
  %98 = load i32*, i32** %3, align 8
  %99 = load i64, i64* %5, align 8
  %100 = mul i64 2, %99
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = load i32*, i32** %3, align 8
  %108 = load i64, i64* %5, align 8
  %109 = mul i64 2, %108
  %110 = add i64 %109, 1
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %106, i32* %111, align 4
  br label %112

112:                                              ; preds = %92
  %113 = load i64, i64* %5, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %5, align 8
  br label %89

115:                                              ; preds = %89
  ret void
}

declare dso_local i32 @set25519(i32*, i32*) #1

declare dso_local i32 @car25519(i32*) #1

declare dso_local i32 @sel25519(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
