; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_fe25519_invert.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_fe25519_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fe25519_invert(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fe25519_sq(i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @fe25519_sq(i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @fe25519_sq(i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @fe25519_mul(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @fe25519_mul(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fe25519_sq(i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @fe25519_mul(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @fe25519_sq(i32 %34, i32 %35)
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %44, %2
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 5
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @fe25519_sq(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @fe25519_mul(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @fe25519_sq(i32 %52, i32 %53)
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %62, %47
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 10
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @fe25519_sq(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %55

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @fe25519_mul(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @fe25519_sq(i32 %70, i32 %71)
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %80, %65
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 20
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @fe25519_sq(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @fe25519_mul(i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @fe25519_sq(i32 %88, i32 %89)
  store i32 1, i32* %9, align 4
  br label %91

91:                                               ; preds = %98, %83
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 10
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @fe25519_sq(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %91

101:                                              ; preds = %91
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @fe25519_mul(i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @fe25519_sq(i32 %106, i32 %107)
  store i32 1, i32* %9, align 4
  br label %109

109:                                              ; preds = %116, %101
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 50
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @fe25519_sq(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %109

119:                                              ; preds = %109
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @fe25519_mul(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @fe25519_sq(i32 %124, i32 %125)
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %134, %119
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 100
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @fe25519_sq(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %127

137:                                              ; preds = %127
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @fe25519_mul(i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @fe25519_sq(i32 %142, i32 %143)
  store i32 1, i32* %9, align 4
  br label %145

145:                                              ; preds = %152, %137
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 50
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @fe25519_sq(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %145

155:                                              ; preds = %145
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @fe25519_mul(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @fe25519_sq(i32 %160, i32 %161)
  store i32 1, i32* %9, align 4
  br label %163

163:                                              ; preds = %170, %155
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 5
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @fe25519_sq(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %163

173:                                              ; preds = %163
  %174 = load i32, i32* %3, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @fe25519_mul(i32 %174, i32 %175, i32 %176)
  ret void
}

declare dso_local i32 @fe25519_sq(i32, i32) #1

declare dso_local i32 @fe25519_mul(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
