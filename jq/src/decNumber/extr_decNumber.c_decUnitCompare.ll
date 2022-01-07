; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decUnitCompare.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decUnitCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECBUFFER = common dso_local global i32 0, align 4
@BADINT = common dso_local global i64 0, align 8
@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64*, i64, i64)* @decUnitCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decUnitCompare(i64* %0, i64 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load i32, i32* @DECBUFFER, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %26, 1
  %28 = call i32 @SD2U(i32 %27)
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  store i64* null, i64** %15, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %5
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i64 1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

44:                                               ; preds = %39
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = getelementptr inbounds i64, i64* %47, i64 -1
  store i64* %48, i64** %18, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = getelementptr inbounds i64, i64* %51, i64 -1
  store i64* %52, i64** %19, align 8
  br label %53

53:                                               ; preds = %72, %44
  %54 = load i64*, i64** %18, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = icmp uge i64* %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i64*, i64** %18, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %19, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i64 1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

64:                                               ; preds = %57
  %65 = load i64*, i64** %18, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %19, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i64*, i64** %18, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 -1
  store i64* %74, i64** %18, align 8
  %75 = load i64*, i64** %19, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 -1
  store i64* %76, i64** %19, align 8
  br label %53

77:                                               ; preds = %53
  store i64 0, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

78:                                               ; preds = %5
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @D2U(i64 %81)
  %83 = add nsw i64 %80, %82
  %84 = icmp sgt i64 %79, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i64 1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

86:                                               ; preds = %78
  %87 = load i64, i64* %8, align 8
  %88 = add nsw i64 %87, 1
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i64 @D2U(i64 %90)
  %92 = add nsw i64 %89, %91
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

95:                                               ; preds = %86
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i64 @D2U(i64 %97)
  %99 = add nsw i64 %96, %98
  store i64 %99, i64* %17, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i64, i64* %8, align 8
  store i64 %104, i64* %17, align 8
  br label %105

105:                                              ; preds = %103, %95
  %106 = load i64, i64* %17, align 8
  %107 = add nsw i64 %106, 2
  store i64 %107, i64* %17, align 8
  store i64* %31, i64** %12, align 8
  %108 = load i64, i64* %17, align 8
  %109 = mul i64 %108, 8
  %110 = mul nuw i64 8, %29
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load i64, i64* %17, align 8
  %114 = mul i64 %113, 8
  %115 = call i64 @malloc(i64 %114)
  %116 = inttoptr i64 %115 to i64*
  store i64* %116, i64** %15, align 8
  %117 = load i64*, i64** %15, align 8
  %118 = icmp eq i64* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i64, i64* @BADINT, align 8
  store i64 %120, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

121:                                              ; preds = %112
  %122 = load i64*, i64** %15, align 8
  store i64* %122, i64** %12, align 8
  br label %123

123:                                              ; preds = %121, %105
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* @DECDPUN, align 8
  %126 = sdiv i64 %124, %125
  store i64 %126, i64* %21, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* @DECDPUN, align 8
  %129 = srem i64 %127, %128
  store i64 %129, i64* %22, align 8
  %130 = load i64*, i64** %7, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load i64*, i64** %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %21, align 8
  %135 = load i64*, i64** %12, align 8
  %136 = load i64*, i64** @powers, align 8
  %137 = load i64, i64* %22, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 0, %139
  %141 = call i64 @decUnitAddSub(i64* %130, i64 %131, i64* %132, i64 %133, i64 %134, i64* %135, i64 %140)
  store i64 %141, i64* %16, align 8
  %142 = load i64, i64* %16, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %123
  store i64 -1, i64* %23, align 8
  br label %170

145:                                              ; preds = %123
  %146 = load i64*, i64** %12, align 8
  store i64* %146, i64** %20, align 8
  br label %147

147:                                              ; preds = %160, %145
  %148 = load i64*, i64** %20, align 8
  %149 = load i64*, i64** %12, align 8
  %150 = load i64, i64* %16, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = getelementptr inbounds i64, i64* %151, i64 -1
  %153 = icmp ult i64* %148, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load i64*, i64** %20, align 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br label %158

158:                                              ; preds = %154, %147
  %159 = phi i1 [ false, %147 ], [ %157, %154 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i64*, i64** %20, align 8
  %162 = getelementptr inbounds i64, i64* %161, i32 1
  store i64* %162, i64** %20, align 8
  br label %147

163:                                              ; preds = %158
  %164 = load i64*, i64** %20, align 8
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 0, i32 1
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %23, align 8
  br label %170

170:                                              ; preds = %163, %144
  %171 = load i64*, i64** %15, align 8
  %172 = icmp ne i64* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i64*, i64** %15, align 8
  %175 = call i32 @free(i64* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i64, i64* %23, align 8
  store i64 %177, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %178

178:                                              ; preds = %176, %119, %94, %85, %77, %70, %63, %43, %38
  %179 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i64, i64* %6, align 8
  ret i64 %180
}

declare dso_local i32 @SD2U(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @D2U(i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @decUnitAddSub(i64*, i64, i64*, i64, i64, i64*, i64) #1

declare dso_local i32 @free(i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
