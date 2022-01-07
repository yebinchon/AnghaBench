; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_h264_nal.h_convert_sps_pps.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/android/pipeline/extr_h264_nal.h_convert_sps_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Input Metadata too small\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PPS too small after processing SPS/PPS %u\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SPS is too small %u\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"SPS size does not match NAL specified size %u\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Output SPS/PPS buffer too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i64*, i64*)* @convert_sps_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_sps_pps(i32* %0, i64 %1, i32* %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %152

26:                                               ; preds = %6
  %27 = load i64*, i64** %13, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 3
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %13, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sub nsw i32 %40, 5
  store i32 %41, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %42

42:                                               ; preds = %145, %37
  %43 = load i32, i32* %18, align 4
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %45, label %148

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %7, align 4
  br label %152

51:                                               ; preds = %45
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 31, i32 255
  %59 = and i32 %54, %58
  store i32 %59, i32* %17, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %14, align 4
  store i32 0, i32* %19, align 4
  br label %64

64:                                               ; preds = %141, %51
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %144

68:                                               ; preds = %64
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %7, align 4
  br label %152

74:                                               ; preds = %68
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32* %84, i32** %8, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %85, 2
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i32, i32* %14, align 4
  %92 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  store i32 -1, i32* %7, align 4
  br label %152

93:                                               ; preds = %74
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 4
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %11, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %152

103:                                              ; preds = %93
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 0, i32* %113, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 0, i32* %118, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 1, i32* %123, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @memcpy(i32* %127, i32* %128, i32 %129)
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %8, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %103
  %142 = load i32, i32* %19, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %64

144:                                              ; preds = %64
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %18, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %42

148:                                              ; preds = %42
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64*, i64** %12, align 8
  store i64 %150, i64* %151, align 8
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %148, %101, %90, %71, %48, %24
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @ALOGE(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
