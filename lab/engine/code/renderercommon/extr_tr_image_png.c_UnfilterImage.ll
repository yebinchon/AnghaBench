; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_UnfilterImage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_UnfilterImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64)* @UnfilterImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UnfilterImage(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [8 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = bitcast [8 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 32, i1 false)
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %4
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %5, align 4
  br label %166

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @qtrue, align 4
  store i32 %34, i32* %5, align 4
  br label %166

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  store i32* %36, i32** %10, align 8
  store i64 0, i64* %16, align 8
  br label %37

37:                                               ; preds = %161, %35
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %164

41:                                               ; preds = %37
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %10, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  store i32* %46, i32** %12, align 8
  %47 = load i64, i64* %16, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32*, i32** %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32* %54, i32** %13, align 8
  br label %57

55:                                               ; preds = %41
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  store i32* %56, i32** %13, align 8
  br label %57

57:                                               ; preds = %55, %49
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 0
  store i32* %58, i32** %14, align 8
  store i64 0, i64* %15, align 8
  br label %59

59:                                               ; preds = %157, %57
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sdiv i64 %61, %62
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %160

65:                                               ; preds = %59
  store i64 0, i64* %17, align 8
  br label %66

66:                                               ; preds = %131, %65
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %134

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  switch i32 %71, label %128 [
    i32 131, label %72
    i32 129, label %73
    i32 128, label %83
    i32 132, label %93
    i32 130, label %109
  ]

72:                                               ; preds = %70
  br label %130

73:                                               ; preds = %70
  %74 = load i32*, i32** %12, align 8
  %75 = load i64, i64* %17, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i64, i64* %17, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %77
  store i32 %82, i32* %80, align 4
  br label %130

83:                                               ; preds = %70
  %84 = load i32*, i32** %13, align 8
  %85 = load i64, i64* %17, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i64, i64* %17, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %87
  store i32 %92, i32* %90, align 4
  br label %130

93:                                               ; preds = %70
  %94 = load i32*, i32** %12, align 8
  %95 = load i64, i64* %17, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i64, i64* %17, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %97, %101
  %103 = sdiv i32 %102, 2
  %104 = load i32*, i32** %10, align 8
  %105 = load i64, i64* %17, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %103
  store i32 %108, i32* %106, align 4
  br label %130

109:                                              ; preds = %70
  %110 = load i32*, i32** %12, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = load i64, i64* %17, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %14, align 8
  %119 = load i64, i64* %17, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @PredictPaeth(i32 %113, i32 %117, i32 %121)
  %123 = load i32*, i32** %10, align 8
  %124 = load i64, i64* %17, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %122
  store i32 %127, i32* %125, align 4
  br label %130

128:                                              ; preds = %70
  %129 = load i32, i32* @qfalse, align 4
  store i32 %129, i32* %5, align 4
  br label %166

130:                                              ; preds = %109, %93, %83, %73, %72
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %17, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %17, align 8
  br label %66

134:                                              ; preds = %66
  %135 = load i32*, i32** %10, align 8
  store i32* %135, i32** %12, align 8
  %136 = load i64, i64* %16, align 8
  %137 = icmp sgt i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32*, i32** %10, align 8
  %140 = load i64, i64* %8, align 8
  %141 = add nsw i64 %140, 1
  %142 = sub i64 0, %141
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32* %143, i32** %14, align 8
  br label %144

144:                                              ; preds = %138, %134
  %145 = load i64, i64* %9, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 %145
  store i32* %147, i32** %10, align 8
  %148 = load i64, i64* %16, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load i32*, i32** %10, align 8
  %152 = load i64, i64* %8, align 8
  %153 = add nsw i64 %152, 1
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32* %155, i32** %13, align 8
  br label %156

156:                                              ; preds = %150, %144
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %15, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %15, align 8
  br label %59

160:                                              ; preds = %59
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %16, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %16, align 8
  br label %37

164:                                              ; preds = %37
  %165 = load i32, i32* @qtrue, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %128, %33, %25
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PredictPaeth(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
