; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_ResampleTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_ResampleTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ResampleTexture: max width\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32, i32)* @ResampleTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResampleTexture(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2048 x i32], align 16
  %20 = alloca [2048 x i32], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 2048
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %29 = load i32, i32* @ERR_DROP, align 4
  %30 = call i32 %28(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %6
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 65536
  %34 = load i32, i32* %11, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = ashr i32 %36, 2
  store i32 %37, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %52, %31
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %17, align 4
  %44 = ashr i32 %43, 16
  %45 = mul nsw i32 4, %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i32, i32* %18, align 4
  %57 = ashr i32 %56, 2
  %58 = mul nsw i32 3, %57
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %73, %55
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32, i32* %17, align 4
  %65 = ashr i32 %64, 16
  %66 = mul nsw i32 4, %65
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %59

76:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %223, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %226

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 4, %83
  %85 = load i32, i32* %13, align 4
  %86 = sitofp i32 %85 to double
  %87 = fadd double %86, 2.500000e-01
  %88 = load i32, i32* %9, align 4
  %89 = sitofp i32 %88 to double
  %90 = fmul double %87, %89
  %91 = load i32, i32* %12, align 4
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %90, %92
  %94 = fptosi double %93 to i32
  %95 = mul nsw i32 %84, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %82, i64 %96
  store i32* %97, i32** %15, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 4, %99
  %101 = load i32, i32* %13, align 4
  %102 = sitofp i32 %101 to double
  %103 = fadd double %102, 7.500000e-01
  %104 = load i32, i32* %9, align 4
  %105 = sitofp i32 %104 to double
  %106 = fmul double %103, %105
  %107 = load i32, i32* %12, align 4
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %106, %108
  %110 = fptosi double %109 to i32
  %111 = mul nsw i32 %100, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %98, i64 %112
  store i32* %113, i32** %16, align 8
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %219, %81
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %222

118:                                              ; preds = %114
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  store i32* %125, i32** %21, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  store i32* %132, i32** %22, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  store i32* %139, i32** %23, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %140, i64 %145
  store i32* %146, i32** %24, align 8
  %147 = load i32*, i32** %21, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %22, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %149, %152
  %154 = load i32*, i32** %23, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  %158 = load i32*, i32** %24, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %157, %160
  %162 = ashr i32 %161, 2
  %163 = load i32*, i32** %10, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %10, align 8
  store i32 %162, i32* %163, align 4
  %165 = load i32*, i32** %21, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %22, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %167, %170
  %172 = load i32*, i32** %23, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %171, %174
  %176 = load i32*, i32** %24, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  %180 = ashr i32 %179, 2
  %181 = load i32*, i32** %10, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %10, align 8
  store i32 %180, i32* %181, align 4
  %183 = load i32*, i32** %21, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %22, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %185, %188
  %190 = load i32*, i32** %23, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %189, %192
  %194 = load i32*, i32** %24, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %193, %196
  %198 = ashr i32 %197, 2
  %199 = load i32*, i32** %10, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %10, align 8
  store i32 %198, i32* %199, align 4
  %201 = load i32*, i32** %21, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %22, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 3
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %203, %206
  %208 = load i32*, i32** %23, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %207, %210
  %212 = load i32*, i32** %24, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 3
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %211, %214
  %216 = ashr i32 %215, 2
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %10, align 8
  store i32 %216, i32* %217, align 4
  br label %219

219:                                              ; preds = %118
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  br label %114

222:                                              ; preds = %114
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  br label %77

226:                                              ; preds = %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
