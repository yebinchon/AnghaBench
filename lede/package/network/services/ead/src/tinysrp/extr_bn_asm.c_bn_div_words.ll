; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_asm.c_bn_div_words.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/tinysrp/extr_bn_asm.c_bn_div_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_MASK2 = common dso_local global i32 0, align 4
@BN_BITS2 = common dso_local global i32 0, align 4
@BN_MASK2h = common dso_local global i32 0, align 4
@BN_BITS4 = common dso_local global i32 0, align 4
@BN_MASK2l = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_div_words(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 2, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @BN_MASK2, align 4
  store i32 %20, i32* %4, align 4
  br label %185

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BN_num_bits_word(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @BN_BITS2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %15, align 4
  %30 = shl i32 1, %29
  %31 = icmp sgt i32 %28, %30
  br label %32

32:                                               ; preds = %27, %21
  %33 = phi i1 [ true, %21 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* @BN_BITS2, align 4
  %37 = load i32, i32* %15, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %32
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BN_BITS2, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 %57, %58
  %60 = ashr i32 %56, %59
  %61 = or i32 %55, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %49, %46
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @BN_MASK2h, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @BN_BITS4, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @BN_MASK2l, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %162, %65
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @BN_BITS4, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @BN_MASK2l, align 4
  store i32 %81, i32* %10, align 4
  br label %86

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %80
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %90, %91
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %114, %86
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @BN_MASK2h, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @BN_BITS4, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @BN_MASK2h, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @BN_BITS4, align 4
  %110 = ashr i32 %108, %109
  %111 = or i32 %105, %110
  %112 = icmp sle i32 %102, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %101, %93
  br label %123

114:                                              ; preds = %101
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %13, align 4
  br label %93

123:                                              ; preds = %113
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @BN_BITS4, align 4
  %126 = ashr i32 %124, %125
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @BN_BITS4, align 4
  %129 = shl i32 %127, %128
  %130 = load i32, i32* @BN_MASK2h, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %138, %123
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %6, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %148, %141
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %5, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %16, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %180

162:                                              ; preds = %154
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @BN_BITS4, align 4
  %165 = shl i32 %163, %164
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @BN_BITS4, align 4
  %168 = shl i32 %166, %167
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @BN_BITS4, align 4
  %171 = ashr i32 %169, %170
  %172 = or i32 %168, %171
  %173 = load i32, i32* @BN_MASK2, align 4
  %174 = and i32 %172, %173
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @BN_MASK2l, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @BN_BITS4, align 4
  %179 = shl i32 %177, %178
  store i32 %179, i32* %6, align 4
  br label %74

180:                                              ; preds = %161
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %180, %19
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @BN_num_bits_word(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
