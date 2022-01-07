; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_hevc_nal.h_convert_hevc_nal_units.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_hevc_nal.h_convert_hevc_nal_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Input Metadata too small\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"NAL unit size does not match Input Metadata size\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Output buffer too small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_hevc_nal_units(i32* %0, i64 %1, i32* %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %25 = load i64, i64* %9, align 8
  %26 = icmp ule i64 %25, 3
  br i1 %26, label %42, label %27

27:                                               ; preds = %6
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %6
  store i32 -1, i32* %7, align 4
  br label %196

43:                                               ; preds = %37, %32, %27
  %44 = load i32*, i32** %16, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = icmp slt i64 %49, 23
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 @ALOGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %196

53:                                               ; preds = %43
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 21
  store i32* %55, i32** %8, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 3
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %8, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %189, %65
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %192

75:                                               ; preds = %71
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = icmp slt i64 %81, 3
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 @ALOGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %196

85:                                               ; preds = %75
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %8, align 8
  %88 = load i32, i32* %86, align 4
  %89 = and i32 %88, 63
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %94, %97
  store i32 %98, i32* %19, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  store i32* %100, i32** %8, align 8
  store i32 0, i32* %20, align 4
  br label %101

101:                                              ; preds = %185, %85
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %188

105:                                              ; preds = %101
  %106 = load i32*, i32** %16, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = icmp slt i64 %111, 2
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = call i32 @ALOGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %196

115:                                              ; preds = %105
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %119, %122
  store i32 %123, i32* %21, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32* %125, i32** %8, align 8
  %126 = load i32, i32* %21, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %115
  %129 = load i32*, i32** %16, align 8
  %130 = load i32*, i32** %8, align 8
  %131 = ptrtoint i32* %129 to i64
  %132 = ptrtoint i32* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 4
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %128, %115
  %139 = call i32 @ALOGE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %196

140:                                              ; preds = %128
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 4
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %11, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = call i32 @ALOGE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %196

150:                                              ; preds = %140
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 0, i32* %155, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %17, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 0, i32* %160, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %17, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 0, i32* %165, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %17, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 1, i32* %170, align 4
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %21, align 4
  %177 = call i32 @memcpy(i32* %174, i32* %175, i32 %176)
  %178 = load i32, i32* %21, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %8, align 8
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %150
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %20, align 4
  br label %101

188:                                              ; preds = %101
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %71

192:                                              ; preds = %71
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64*, i64** %12, align 8
  store i64 %194, i64* %195, align 8
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %192, %148, %138, %113, %83, %51, %42
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local i32 @ALOGE(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
