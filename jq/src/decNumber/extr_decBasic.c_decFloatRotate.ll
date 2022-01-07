; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatRotate.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decBasic.c_decFloatRotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32* }

@DECPMAX = common dso_local global i32 0, align 4
@PHALF = common dso_local global i32 0, align 4
@DPD2BIN = common dso_local global i32* null, align 8
@DECWORDS = common dso_local global i64 0, align 8
@DECFLOAT_Sign = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @decFloatRotate(i32* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %18 = load i32, i32* @DECPMAX, align 4
  %19 = load i32, i32* @PHALF, align 4
  %20 = add nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @DFISNAN(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @DFISNAN(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27, %4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = call i32* @decNaNs(i32* %32, i32* %33, i32* %34, %struct.TYPE_8__* %35)
  store i32* %36, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %177

37:                                               ; preds = %27
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @DFISINT(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = call i32* @decInvalid(i32* %42, %struct.TYPE_8__* %43)
  store i32* %44, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %177

45:                                               ; preds = %37
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @decFloatDigits(i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = call i32* @decInvalid(i32* %51, %struct.TYPE_8__* %52)
  store i32* %53, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %177

54:                                               ; preds = %45
  %55 = load i32*, i32** @DPD2BIN, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* @DECWORDS, align 8
  %58 = sub nsw i64 %57, 1
  %59 = call i32 @DFWORD(i32* %56, i64 %58)
  %60 = and i32 %59, 1023
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @DECPMAX, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = call i32* @decInvalid(i32* %68, %struct.TYPE_8__* %69)
  store i32* %70, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %177

71:                                               ; preds = %54
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @DFISINF(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32* @decInfinity(i32* %76, i32* %77)
  store i32* %78, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %177

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @DECPMAX, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82, %79
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = call i32* @decCanonical(i32* %87, i32* %88)
  store i32* %89, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %177

90:                                               ; preds = %82
  %91 = load i32*, i32** %8, align 8
  %92 = call i64 @DFISSIGNED(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @abs(i32 %98) #4
  %100 = load i32, i32* @PHALF, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @DECPMAX, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %10, align 4
  br label %113

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @DECPMAX, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %97
  store i32* %23, i32** %16, align 8
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* @PHALF, align 4
  %119 = load i32*, i32** %16, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %16, align 8
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32*, i32** %7, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = call i32 @GETCOEFF(i32* %123, i32* %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = load i32, i32* @DECPMAX, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %23, i64 %130
  %132 = load i32, i32* @PHALF, align 4
  %133 = call i32 @memcpy(i32* %23, i32* %131, i32 %132)
  %134 = load i32, i32* @PHALF, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %23, i64 %135
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32* %139, i32** %140, align 8
  br label %151

141:                                              ; preds = %122
  %142 = load i32, i32* @DECPMAX, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %23, i64 %143
  %145 = load i32, i32* @PHALF, align 4
  %146 = call i32 @memcpy(i32* %144, i32* %23, i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %23, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32* %149, i32** %150, align 8
  br label %151

151:                                              ; preds = %141, %128
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @DECPMAX, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = getelementptr inbounds i32, i32* %156, i64 -1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  store i32* %157, i32** %158, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @DFWORD(i32* %159, i64 0)
  %161 = load i32, i32* @DECFLOAT_Sign, align 4
  %162 = and i32 %160, %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 %162, i32* %163, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @GETEXPUN(i32* %164)
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %14, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %172 = call i32 @decFinalize(i32* %170, %struct.TYPE_9__* %15, %struct.TYPE_8__* %171)
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load i32*, i32** %6, align 8
  store i32* %176, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %177

177:                                              ; preds = %151, %86, %75, %67, %50, %41, %31
  %178 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32*, i32** %5, align 8
  ret i32* %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @DFISNAN(i32*) #2

declare dso_local i32* @decNaNs(i32*, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @DFISINT(i32*) #2

declare dso_local i32* @decInvalid(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @decFloatDigits(i32*) #2

declare dso_local i32 @DFWORD(i32*, i64) #2

declare dso_local i64 @DFISINF(i32*) #2

declare dso_local i32* @decInfinity(i32*, i32*) #2

declare dso_local i32* @decCanonical(i32*, i32*) #2

declare dso_local i64 @DFISSIGNED(i32*) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @GETCOEFF(i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @GETEXPUN(i32*) #2

declare dso_local i32 @decFinalize(i32*, %struct.TYPE_9__*, %struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
