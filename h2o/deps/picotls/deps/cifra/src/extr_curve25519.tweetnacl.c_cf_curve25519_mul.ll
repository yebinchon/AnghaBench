; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_cf_curve25519_mul.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.tweetnacl.c_cf_curve25519_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_121665 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_curve25519_mul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %15, align 8
  br label %18

18:                                               ; preds = %28, %3
  %19 = load i64, i64* %15, align 8
  %20 = icmp ult i64 %19, 31
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %15, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %15, align 8
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %26
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %15, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %15, align 8
  br label %18

31:                                               ; preds = %18
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 31
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 127
  %36 = or i32 %35, 64
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 31
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = and i32 %39, 248
  store i32 %40, i32* %38, align 16
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @unpack25519(i32* %41, i32* %42)
  store i64 0, i64* %15, align 8
  br label %44

44:                                               ; preds = %64, %31
  %45 = load i64, i64* %15, align 8
  %46 = icmp ult i64 %45, 16
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i64, i64* %15, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* %15, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i64, i64* %15, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %47
  %65 = load i64, i64* %15, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %15, align 8
  br label %44

67:                                               ; preds = %44
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 1, i32* %69, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 1, i32* %71, align 4
  store i32 254, i32* %16, align 4
  br label %72

72:                                               ; preds = %169, %67
  %73 = load i32, i32* %16, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %172

75:                                               ; preds = %72
  %76 = load i32, i32* %16, align 4
  %77 = ashr i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %16, align 4
  %82 = and i32 %81, 7
  %83 = ashr i32 %80, %82
  %84 = and i32 %83, 1
  store i32 %84, i32* %17, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @sel25519(i32* %85, i32* %86, i32 %87)
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @sel25519(i32* %89, i32* %90, i32 %91)
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @add(i32* %93, i32* %94, i32* %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @sub(i32* %97, i32* %98, i32* %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @add(i32* %101, i32* %102, i32* %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @sub(i32* %105, i32* %106, i32* %107)
  %109 = load i32*, i32** %12, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @sqr(i32* %109, i32* %110)
  %112 = load i32*, i32** %14, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @sqr(i32* %112, i32* %113)
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @mul(i32* %115, i32* %116, i32* %117)
  %119 = load i32*, i32** %11, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @mul(i32* %119, i32* %120, i32* %121)
  %123 = load i32*, i32** %13, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @add(i32* %123, i32* %124, i32* %125)
  %127 = load i32*, i32** %9, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @sub(i32* %127, i32* %128, i32* %129)
  %131 = load i32*, i32** %10, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @sqr(i32* %131, i32* %132)
  %134 = load i32*, i32** %11, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = call i32 @sub(i32* %134, i32* %135, i32* %136)
  %138 = load i32*, i32** %9, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load i32*, i32** @_121665, align 8
  %141 = call i32 @mul(i32* %138, i32* %139, i32* %140)
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @add(i32* %142, i32* %143, i32* %144)
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @mul(i32* %146, i32* %147, i32* %148)
  %150 = load i32*, i32** %9, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load i32*, i32** %14, align 8
  %153 = call i32 @mul(i32* %150, i32* %151, i32* %152)
  %154 = load i32*, i32** %12, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @mul(i32* %154, i32* %155, i32* %156)
  %158 = load i32*, i32** %10, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = call i32 @sqr(i32* %158, i32* %159)
  %161 = load i32*, i32** %9, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @sel25519(i32* %161, i32* %162, i32 %163)
  %165 = load i32*, i32** %11, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %17, align 4
  %168 = call i32 @sel25519(i32* %165, i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %75
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %16, align 4
  br label %72

172:                                              ; preds = %72
  %173 = load i32*, i32** %11, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @inv25519(i32* %173, i32* %174)
  %176 = load i32*, i32** %9, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = call i32 @mul(i32* %176, i32* %177, i32* %178)
  %180 = load i32*, i32** %4, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @pack25519(i32* %180, i32* %181)
  ret void
}

declare dso_local i32 @unpack25519(i32*, i32*) #1

declare dso_local i32 @sel25519(i32*, i32*, i32) #1

declare dso_local i32 @add(i32*, i32*, i32*) #1

declare dso_local i32 @sub(i32*, i32*, i32*) #1

declare dso_local i32 @sqr(i32*, i32*) #1

declare dso_local i32 @mul(i32*, i32*, i32*) #1

declare dso_local i32 @inv25519(i32*, i32*) #1

declare dso_local i32 @pack25519(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
