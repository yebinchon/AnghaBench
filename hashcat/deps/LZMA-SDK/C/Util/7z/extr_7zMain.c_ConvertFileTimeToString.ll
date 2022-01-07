; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_ConvertFileTimeToString.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_ConvertFileTimeToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@__const.ConvertFileTimeToString.ms = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@PERIOD_400 = common dso_local global i32 0, align 4
@PERIOD_100 = common dso_local global i32 0, align 4
@PERIOD_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @ConvertFileTimeToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConvertFileTimeToString(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [12 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = bitcast [12 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([12 x i32]* @__const.ConvertFileTimeToString.ms to i8*), i64 48, i1 false)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 32
  %24 = or i32 %18, %23
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = sdiv i32 %25, 10000000
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = srem i32 %27, 60
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sdiv i32 %29, 60
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = srem i32 %31, 60
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sdiv i32 %33, 60
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = srem i32 %35, 24
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %13, align 4
  %38 = sdiv i32 %37, 24
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @PERIOD_400, align 4
  %42 = sdiv i32 %40, %41
  %43 = mul nsw i32 %42, 400
  %44 = add nsw i32 1601, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @PERIOD_400, align 4
  %46 = load i32, i32* %12, align 4
  %47 = srem i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @PERIOD_100, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  store i32 3, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %11, align 4
  %56 = mul i32 %55, 100
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @PERIOD_100, align 4
  %61 = mul i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = sub i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @PERIOD_4, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 25
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  store i32 24, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* %11, align 4
  %72 = mul i32 %71, 4
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @PERIOD_4, align 4
  %77 = mul i32 %75, %76
  %78 = load i32, i32* %12, align 4
  %79 = sub i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sdiv i32 %80, 365
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i32 3, i32* %11, align 4
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %11, align 4
  %90 = mul i32 %89, 365
  %91 = load i32, i32* %12, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %5, align 4
  %94 = urem i32 %93, 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load i32, i32* %5, align 4
  %98 = urem i32 %97, 100
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %5, align 4
  %102 = urem i32 %101, 400
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100, %96
  %105 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 1
  store i32 29, i32* %105, align 4
  br label %106

106:                                              ; preds = %104, %100, %85
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %120, %106
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %123

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sub i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %107

123:                                              ; preds = %115
  %124 = load i8*, i8** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i8* @UIntToStr(i8* %124, i32 %125, i32 4)
  store i8* %126, i8** %4, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  store i8 45, i8* %127, align 1
  %129 = load i8*, i8** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, 1
  %132 = call i32 @UIntToStr_2(i8* %129, i32 %131)
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  store i8 45, i8* %134, align 1
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 3
  store i8* %136, i8** %4, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = load i32, i32* %12, align 4
  %139 = add i32 %138, 1
  %140 = call i32 @UIntToStr_2(i8* %137, i32 %139)
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 2
  store i8 32, i8* %142, align 1
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  store i8* %144, i8** %4, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @UIntToStr_2(i8* %145, i32 %146)
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 2
  store i8 58, i8* %149, align 1
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 3
  store i8* %151, i8** %4, align 8
  %152 = load i8*, i8** %4, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @UIntToStr_2(i8* %152, i32 %153)
  %155 = load i8*, i8** %4, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  store i8 58, i8* %156, align 1
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 3
  store i8* %158, i8** %4, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @UIntToStr_2(i8* %159, i32 %160)
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  store i8 0, i8* %163, align 1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @UIntToStr(i8*, i32, i32) #2

declare dso_local i32 @UIntToStr_2(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
