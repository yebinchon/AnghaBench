; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_adpcm.c_S_AdpcmDecode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_adpcm.c_S_AdpcmDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i32, i32 }

@stepsizeTable = common dso_local global i32* null, align 8
@indexTable = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_AdpcmDecode(i8* %0, i16* %1, i32 %2, %struct.adpcm_state* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adpcm_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i16* %1, i16** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.adpcm_state* %3, %struct.adpcm_state** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %21 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %24 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32*, i32** @stepsizeTable, align 8
  %27 = load i32, i32* %16, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %135, %4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %138

34:                                               ; preds = %31
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %17, align 4
  %39 = and i32 %38, 15
  store i32 %39, i32* %12, align 4
  br label %48

40:                                               ; preds = %34
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 15
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %18, align 4
  %53 = load i64*, i64** @indexTable, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32, i32* %16, align 4
  %67 = icmp sgt i32 %66, 88
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 88, i32* %16, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, 8
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 7
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = ashr i32 %74, 3
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %79, %69
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 2
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = ashr i32 %88, 1
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = ashr i32 %97, 2
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %96, %92
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %14, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %14, align 4
  br label %112

108:                                              ; preds = %101
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, i32* %14, align 4
  %114 = icmp sgt i32 %113, 32767
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 32767, i32* %14, align 4
  br label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %117, -32768
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 -32768, i32* %14, align 4
  br label %120

120:                                              ; preds = %119, %116
  br label %121

121:                                              ; preds = %120, %115
  %122 = load i32*, i32** @stepsizeTable, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = trunc i32 %127 to i16
  %129 = load i16*, i16** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i16, i16* %129, i64 %131
  store i16 %128, i16* %132, align 2
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %121
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %7, align 4
  br label %31

138:                                              ; preds = %31
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %141 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.adpcm_state*, %struct.adpcm_state** %8, align 8
  %144 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
