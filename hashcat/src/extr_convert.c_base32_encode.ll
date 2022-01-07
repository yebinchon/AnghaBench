; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_convert.c_base32_encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_convert.c_base32_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @base32_encode(i32 (i32)* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32 (i32)*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 (i32)* %0, i32 (i32)** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %28

28:                                               ; preds = %180, %4
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %183

32:                                               ; preds = %28
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, 0
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  store i32 %43, i32* %12, align 4
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 0, %52 ]
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 2
  %57 = load i64, i64* %7, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ 0, %63 ]
  store i32 %65, i32* %14, align 4
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 3
  %68 = load i64, i64* %7, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 0, %74 ]
  store i32 %76, i32* %15, align 4
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, 4
  %79 = load i64, i64* %7, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  br label %86

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32 [ %84, %81 ], [ 0, %85 ]
  store i32 %87, i32* %16, align 4
  %88 = load i32 (i32)*, i32 (i32)** %5, align 8
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 3
  %91 = and i32 %90, 31
  %92 = call i32 %88(i32 %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32 (i32)*, i32 (i32)** %5, align 8
  %94 = load i32, i32* %12, align 4
  %95 = shl i32 %94, 2
  %96 = and i32 %95, 28
  %97 = load i32, i32* %13, align 4
  %98 = ashr i32 %97, 6
  %99 = and i32 %98, 3
  %100 = or i32 %96, %99
  %101 = call i32 %93(i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32 (i32)*, i32 (i32)** %5, align 8
  %103 = load i32, i32* %13, align 4
  %104 = ashr i32 %103, 1
  %105 = and i32 %104, 31
  %106 = call i32 %102(i32 %105)
  store i32 %106, i32* %19, align 4
  %107 = load i32 (i32)*, i32 (i32)** %5, align 8
  %108 = load i32, i32* %13, align 4
  %109 = shl i32 %108, 4
  %110 = and i32 %109, 16
  %111 = load i32, i32* %14, align 4
  %112 = ashr i32 %111, 4
  %113 = and i32 %112, 15
  %114 = or i32 %110, %113
  %115 = call i32 %107(i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32 (i32)*, i32 (i32)** %5, align 8
  %117 = load i32, i32* %14, align 4
  %118 = shl i32 %117, 1
  %119 = and i32 %118, 30
  %120 = load i32, i32* %15, align 4
  %121 = ashr i32 %120, 7
  %122 = and i32 %121, 1
  %123 = or i32 %119, %122
  %124 = call i32 %116(i32 %123)
  store i32 %124, i32* %21, align 4
  %125 = load i32 (i32)*, i32 (i32)** %5, align 8
  %126 = load i32, i32* %15, align 4
  %127 = ashr i32 %126, 2
  %128 = and i32 %127, 31
  %129 = call i32 %125(i32 %128)
  store i32 %129, i32* %22, align 4
  %130 = load i32 (i32)*, i32 (i32)** %5, align 8
  %131 = load i32, i32* %15, align 4
  %132 = shl i32 %131, 3
  %133 = and i32 %132, 24
  %134 = load i32, i32* %16, align 4
  %135 = ashr i32 %134, 5
  %136 = and i32 %135, 7
  %137 = or i32 %133, %136
  %138 = call i32 %130(i32 %137)
  store i32 %138, i32* %23, align 4
  %139 = load i32 (i32)*, i32 (i32)** %5, align 8
  %140 = load i32, i32* %16, align 4
  %141 = ashr i32 %140, 0
  %142 = and i32 %141, 31
  %143 = call i32 %139(i32 %142)
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %17, align 4
  %145 = and i32 %144, 127
  %146 = load i32*, i32** %10, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %18, align 4
  %149 = and i32 %148, 127
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %19, align 4
  %153 = and i32 %152, 127
  %154 = load i32*, i32** %10, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %20, align 4
  %157 = and i32 %156, 127
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %21, align 4
  %161 = and i32 %160, 127
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %22, align 4
  %165 = and i32 %164, 127
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 5
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %23, align 4
  %169 = and i32 %168, 127
  %170 = load i32*, i32** %10, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 6
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* %24, align 4
  %173 = and i32 %172, 127
  %174 = load i32*, i32** %10, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 7
  store i32 %173, i32* %175, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 5
  store i32* %177, i32** %9, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 8
  store i32* %179, i32** %10, align 8
  br label %180

180:                                              ; preds = %86
  %181 = load i64, i64* %11, align 8
  %182 = add i64 %181, 5
  store i64 %182, i64* %11, align 8
  br label %28

183:                                              ; preds = %28
  %184 = load i64, i64* %7, align 8
  %185 = uitofp i64 %184 to double
  %186 = fadd double 5.000000e-01, %185
  %187 = fmul double %186, 8.000000e+00
  %188 = fdiv double %187, 5.000000e+00
  %189 = fptosi double %188 to i32
  store i32 %189, i32* %25, align 4
  br label %190

190:                                              ; preds = %194, %183
  %191 = load i32, i32* %25, align 4
  %192 = srem i32 %191, 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %25, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 61, i32* %198, align 4
  %199 = load i32, i32* %25, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %25, align 4
  br label %190

201:                                              ; preds = %190
  %202 = load i32, i32* %25, align 4
  %203 = sext i32 %202 to i64
  ret i64 %203
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
