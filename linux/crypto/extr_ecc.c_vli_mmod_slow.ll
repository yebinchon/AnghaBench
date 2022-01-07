; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_slow.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @vli_mmod_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vli_mmod_slow(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %22 = mul nsw i32 2, %21
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %27 = mul nsw i32 2, %26
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %30 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %31, align 8
  store i32 0, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul i32 %33, 2
  %35 = mul i32 %34, 64
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @vli_num_bits(i32* %36, i32 %37)
  %39 = sub i32 %35, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = sdiv i32 %40, 64
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = srem i32 %42, 64
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @vli_clear(i32* %25, i32 %44)
  %46 = load i32, i32* %17, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %76, %48
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %14, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %17, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %25, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %14, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 64, %73
  %75 = ashr i32 %72, %74
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %53
  %77 = load i32, i32* %14, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %49

79:                                               ; preds = %49
  br label %87

80:                                               ; preds = %4
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %25, i64 %82
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @vli_set(i32* %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %79
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %173, %87
  %89 = load i32, i32* %15, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %176

91:                                               ; preds = %88
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %92

92:                                               ; preds = %145, %91
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %8, align 4
  %95 = mul i32 %94, 2
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %97, label %148

97:                                               ; preds = %92
  %98 = load i32, i32* %14, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %19, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %19, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %25, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %105, %109
  %111 = load i32, i32* %18, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %14, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %19, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %113, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %97
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %14, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %124, %132
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %123, %97
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sub i32 1, %137
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %136, i32* %144, align 4
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %19, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %92

148:                                              ; preds = %92
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %18, align 4
  %151 = xor i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @vli_rshift1(i32* %25, i32 %155)
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %25, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 63
  %162 = load i32, i32* %8, align 4
  %163 = sub i32 %162, 1
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %25, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %161
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %25, i64 %169
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @vli_rshift1(i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %148
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %15, align 4
  br label %88

176:                                              ; preds = %88
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %14, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @vli_set(i32* %177, i32* %181, i32 %182)
  %184 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %184)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vli_num_bits(i32*, i32) #2

declare dso_local i32 @vli_clear(i32*, i32) #2

declare dso_local i32 @vli_set(i32*, i32*, i32) #2

declare dso_local i32 @vli_rshift1(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
