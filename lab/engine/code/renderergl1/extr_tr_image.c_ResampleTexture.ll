; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_ResampleTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_ResampleTexture.c"
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
  %37 = lshr i32 %36, 2
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
  %44 = lshr i32 %43, 16
  %45 = mul i32 4, %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %17, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i32, i32* %18, align 4
  %57 = lshr i32 %56, 2
  %58 = mul i32 3, %57
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
  %65 = lshr i32 %64, 16
  %66 = mul i32 4, %65
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %17, align 4
  %72 = add i32 %71, %70
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

77:                                               ; preds = %233, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %240

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sitofp i32 %84 to double
  %86 = fadd double %85, 2.500000e-01
  %87 = load i32, i32* %9, align 4
  %88 = sitofp i32 %87 to double
  %89 = fmul double %86, %88
  %90 = load i32, i32* %12, align 4
  %91 = sitofp i32 %90 to double
  %92 = fdiv double %89, %91
  %93 = fptosi double %92 to i32
  %94 = mul nsw i32 %83, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %82, i64 %95
  store i32* %96, i32** %15, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sitofp i32 %99 to double
  %101 = fadd double %100, 7.500000e-01
  %102 = load i32, i32* %9, align 4
  %103 = sitofp i32 %102 to double
  %104 = fmul double %101, %103
  %105 = load i32, i32* %12, align 4
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %104, %106
  %108 = fptosi double %107 to i32
  %109 = mul nsw i32 %98, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %97, i64 %110
  store i32* %111, i32** %16, align 8
  store i32 0, i32* %14, align 4
  br label %112

112:                                              ; preds = %229, %81
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %232

116:                                              ; preds = %112
  %117 = load i32*, i32** %15, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  store i32* %123, i32** %21, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  store i32* %130, i32** %22, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  store i32* %137, i32** %23, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  store i32* %144, i32** %24, align 8
  %145 = load i32*, i32** %21, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %22, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %147, %150
  %152 = load i32*, i32** %23, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %151, %154
  %156 = load i32*, i32** %24, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %155, %158
  %160 = ashr i32 %159, 2
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %160, i32* %165, align 4
  %166 = load i32*, i32** %21, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %22, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %168, %171
  %173 = load i32*, i32** %23, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %172, %175
  %177 = load i32*, i32** %24, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %176, %179
  %181 = ashr i32 %180, 2
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %181, i32* %186, align 4
  %187 = load i32*, i32** %21, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %22, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %189, %192
  %194 = load i32*, i32** %23, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %193, %196
  %198 = load i32*, i32** %24, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %197, %200
  %202 = ashr i32 %201, 2
  %203 = load i32*, i32** %10, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  store i32 %202, i32* %207, align 4
  %208 = load i32*, i32** %21, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %22, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %210, %213
  %215 = load i32*, i32** %23, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 3
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %214, %217
  %219 = load i32*, i32** %24, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %218, %221
  %223 = ashr i32 %222, 2
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %14, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = getelementptr inbounds i32, i32* %227, i64 3
  store i32 %223, i32* %228, align 4
  br label %229

229:                                              ; preds = %116
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %14, align 4
  br label %112

232:                                              ; preds = %112
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load i32*, i32** %10, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %10, align 8
  br label %77

240:                                              ; preds = %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
