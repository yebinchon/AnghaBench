; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/Lzma/extr_LzmaUtil.c_Decode2.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/Lzma/extr_LzmaUtil.c_Decode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_7__*, i32*, i64)* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32*, i64*)* }

@IN_BUF_SIZE = common dso_local global i32 0, align 4
@OUT_BUF_SIZE = common dso_local global i32 0, align 4
@LZMA_FINISH_ANY = common dso_local global i32 0, align 4
@LZMA_FINISH_END = common dso_local global i32 0, align 4
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i64)* @Decode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Decode2(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, -1
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @IN_BUF_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %30 = load i32, i32* @OUT_BUF_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @LzmaDec_Init(i32* %33)
  br label %35

35:                                               ; preds = %126, %4
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* @IN_BUF_SIZE, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %15, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_8__*, i32*, i64*)*, i32 (%struct.TYPE_8__*, i32*, i64*)** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = call i32 %44(%struct.TYPE_8__* %45, i32* %29, i64* %15)
  %47 = call i32 @RINOK(i32 %46)
  store i64 0, i64* %14, align 8
  br label %48

48:                                               ; preds = %39, %35
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %14, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %18, align 8
  %52 = load i32, i32* @OUT_BUF_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %16, align 8
  %55 = sub i64 %53, %54
  store i64 %55, i64* %19, align 8
  %56 = load i32, i32* @LZMA_FINISH_ANY, align 4
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %48
  %60 = load i64, i64* %19, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %19, align 8
  %65 = load i32, i32* @LZMA_FINISH_END, align 4
  store i32 %65, i32* %20, align 4
  br label %66

66:                                               ; preds = %63, %59, %48
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %16, align 8
  %69 = getelementptr inbounds i32, i32* %32, i64 %68
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds i32, i32* %29, i64 %70
  %72 = load i32, i32* %20, align 4
  %73 = call i64 @LzmaDec_DecodeToBuf(i32* %67, i32* %69, i64* %19, i32* %71, i64* %18, i32 %72, i64* %21)
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %9, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = icmp ne %struct.TYPE_7__* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %66
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64 (%struct.TYPE_7__*, i32*, i64)*, i64 (%struct.TYPE_7__*, i32*, i64)** %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = load i64, i64* %16, align 8
  %91 = call i64 %88(%struct.TYPE_7__* %89, i32* %32, i64 %90)
  %92 = load i64, i64* %16, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i64, i64* @SZ_ERROR_WRITE, align 8
  store i64 %95, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %127

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %66
  store i64 0, i64* %16, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @SZ_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104, %97
  %108 = load i64, i64* %17, align 8
  store i64 %108, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %127

109:                                              ; preds = %104, %101
  %110 = load i64, i64* %18, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i64, i64* %19, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %21, align 8
  %120 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118, %115
  %123 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %123, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %127

124:                                              ; preds = %118
  %125 = load i64, i64* %17, align 8
  store i64 %125, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %127

126:                                              ; preds = %112, %109
  br label %35

127:                                              ; preds = %124, %122, %107, %94
  %128 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LzmaDec_Init(i32*) #2

declare dso_local i32 @RINOK(i32) #2

declare dso_local i64 @LzmaDec_DecodeToBuf(i32*, i32*, i64*, i32*, i64*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
