; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_QuakeTextureVecs.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_QuakeTextureVecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @QuakeTextureVecs(i32* %0, i32* %1, i32 %2, i32* %3, [4 x i32]* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32]*, align 8
  %11 = alloca [2 x i32*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store [4 x i32]* %4, [4 x i32]** %10, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %23 = load i32*, i32** %22, align 16
  %24 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @TextureAxisFromPlane(i32* %21, i32* %23, i32* %25)
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %5
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %70

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 90
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %69

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 180
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %68

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 270
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %67

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 180
  %61 = load i32, i32* @Q_PI, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @sin(i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @cos(i32 %65)
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %58, %57
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %45
  %71 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %72 = load i32*, i32** %71, align 16
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %86

77:                                               ; preds = %70
  %78 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %79 = load i32*, i32** %78, align 16
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %12, align 4
  br label %85

84:                                               ; preds = %77
  store i32 2, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %85, %76
  %87 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  br label %102

93:                                               ; preds = %86
  %94 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %13, align 4
  br label %101

100:                                              ; preds = %93
  store i32 2, i32* %13, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101, %92
  store i32 0, i32* %19, align 4
  br label %103

103:                                              ; preds = %165, %102
  %104 = load i32, i32* %19, align 4
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %168

106:                                              ; preds = %103
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %107, %115
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %117, %125
  %127 = sub nsw i32 %116, %126
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %128, %136
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %138, %146
  %148 = add nsw i32 %137, %147
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %149, i32* %156, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %157, i32* %164, align 4
  br label %165

165:                                              ; preds = %106
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %19, align 4
  br label %103

168:                                              ; preds = %103
  store i32 0, i32* %19, align 4
  br label %169

169:                                              ; preds = %202, %168
  %170 = load i32, i32* %19, align 4
  %171 = icmp slt i32 %170, 2
  br i1 %171, label %172, label %205

172:                                              ; preds = %169
  store i32 0, i32* %20, align 4
  br label %173

173:                                              ; preds = %198, %172
  %174 = load i32, i32* %20, align 4
  %175 = icmp slt i32 %174, 3
  br i1 %175, label %176, label %201

176:                                              ; preds = %173
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sdiv i32 %184, %189
  %191 = load [4 x i32]*, [4 x i32]** %10, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %191, i64 %193
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %194, i64 0, i64 %196
  store i32 %190, i32* %197, align 4
  br label %198

198:                                              ; preds = %176
  %199 = load i32, i32* %20, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %20, align 4
  br label %173

201:                                              ; preds = %173
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %19, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %19, align 4
  br label %169

205:                                              ; preds = %169
  %206 = load i32*, i32** %7, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = load [4 x i32]*, [4 x i32]** %10, align 8
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %209, i64 0
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %210, i64 0, i64 3
  store i32 %208, i32* %211, align 4
  %212 = load i32*, i32** %7, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = load [4 x i32]*, [4 x i32]** %10, align 8
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %215, i64 1
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %216, i64 0, i64 3
  store i32 %214, i32* %217, align 4
  ret void
}

declare dso_local i32 @TextureAxisFromPlane(i32*, i32*, i32*) #1

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @cos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
