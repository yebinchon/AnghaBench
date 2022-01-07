; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/unacl/extr_scalarmult.c_fe25519_invert_useProvidedScratchBuffers.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/unacl/extr_scalarmult.c_fe25519_invert_useProvidedScratchBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @fe25519_invert_useProvidedScratchBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe25519_invert_useProvidedScratchBuffers(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %9, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %10, align 8
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %12, align 8
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %13, align 8
  store i32* %21, i32** %16, align 8
  %22 = load i32*, i32** %16, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @fe25519_square(i32* %22, i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = call i32 @fe25519_square(i32* %25, i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @fe25519_square(i32* %28, i32* %29)
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @fe25519_mul(i32* %31, i32* %32, i32* %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @fe25519_mul(i32* %35, i32* %36, i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @fe25519_square(i32* %39, i32* %40)
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @fe25519_mul(i32* %42, i32* %43, i32* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @fe25519_square(i32* %46, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @fe25519_square(i32* %49, i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @fe25519_square(i32* %52, i32* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @fe25519_square(i32* %55, i32* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @fe25519_square(i32* %58, i32* %59)
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @fe25519_mul(i32* %61, i32* %62, i32* %63)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @fe25519_square(i32* %65, i32* %66)
  store i32 1, i32* %15, align 4
  br label %68

68:                                               ; preds = %75, %5
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 10
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @fe25519_square(i32* %72, i32* %73)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %68

78:                                               ; preds = %68
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @fe25519_mul(i32* %79, i32* %80, i32* %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @fe25519_square(i32* %83, i32* %84)
  store i32 1, i32* %15, align 4
  br label %86

86:                                               ; preds = %93, %78
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 20
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @fe25519_square(i32* %90, i32* %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %86

96:                                               ; preds = %86
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @fe25519_mul(i32* %97, i32* %98, i32* %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @fe25519_square(i32* %101, i32* %102)
  store i32 1, i32* %15, align 4
  br label %104

104:                                              ; preds = %111, %96
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 10
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @fe25519_square(i32* %108, i32* %109)
  br label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %104

114:                                              ; preds = %104
  %115 = load i32*, i32** %13, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @fe25519_mul(i32* %115, i32* %116, i32* %117)
  %119 = load i32*, i32** %8, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @fe25519_square(i32* %119, i32* %120)
  store i32 1, i32* %15, align 4
  br label %122

122:                                              ; preds = %129, %114
  %123 = load i32, i32* %15, align 4
  %124 = icmp slt i32 %123, 50
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @fe25519_square(i32* %126, i32* %127)
  br label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %122

132:                                              ; preds = %122
  %133 = load i32*, i32** %14, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 @fe25519_mul(i32* %133, i32* %134, i32* %135)
  %137 = load i32*, i32** %8, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = call i32 @fe25519_square(i32* %137, i32* %138)
  store i32 1, i32* %15, align 4
  br label %140

140:                                              ; preds = %147, %132
  %141 = load i32, i32* %15, align 4
  %142 = icmp slt i32 %141, 100
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32*, i32** %8, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @fe25519_square(i32* %144, i32* %145)
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %140

150:                                              ; preds = %140
  %151 = load i32*, i32** %8, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @fe25519_mul(i32* %151, i32* %152, i32* %153)
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %162, %150
  %156 = load i32, i32* %15, align 4
  %157 = icmp slt i32 %156, 50
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @fe25519_square(i32* %159, i32* %160)
  br label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %155

165:                                              ; preds = %155
  %166 = load i32*, i32** %8, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load i32*, i32** %13, align 8
  %169 = call i32 @fe25519_mul(i32* %166, i32* %167, i32* %168)
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %177, %165
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %171, 5
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32*, i32** %8, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @fe25519_square(i32* %174, i32* %175)
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %170

180:                                              ; preds = %170
  %181 = load i32*, i32** %6, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @fe25519_mul(i32* %181, i32* %182, i32* %183)
  ret void
}

declare dso_local i32 @fe25519_square(i32*, i32*) #1

declare dso_local i32 @fe25519_mul(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
