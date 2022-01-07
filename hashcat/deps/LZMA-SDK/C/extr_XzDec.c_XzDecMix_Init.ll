; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMix_Init.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMix_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64*, i64, i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32, i32 (i32, i32, i32, i32)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32 }

@True = common dso_local global i64 0, align 8
@False = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i64)* @XzDecMix_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XzDecMix_Init(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* @True, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = call i32 @XzBlock_GetNumFilters(%struct.TYPE_14__* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %71, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %35, %27
  %39 = load i64, i64* @False, align 8
  store i64 %39, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %67, %38
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sub i32 %55, 1
  %57 = load i32, i32* %9, align 4
  %58 = sub i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %51, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i64, i64* @True, align 8
  store i64 %65, i64* %10, align 8
  br label %70

66:                                               ; preds = %44
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %40

70:                                               ; preds = %64, %40
  br label %71

71:                                               ; preds = %70, %35, %30, %4
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %71
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = call i32 @MixCoder_Free(%struct.TYPE_15__* %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %105, %80
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sub i32 %93, 1
  %95 = load i32, i32* %9, align 4
  %96 = sub i32 %94, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @MixCoder_SetFromMethod(%struct.TYPE_15__* %88, i32 %89, i64 %100, i32* %101, i64 %102)
  %104 = call i32 @RINOK(i32 %103)
  br label %105

105:                                              ; preds = %87
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %83

108:                                              ; preds = %83
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %127

112:                                              ; preds = %71
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sub i32 %117, 1
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @MixCoder_ResetFromMethod(%struct.TYPE_15__* %113, i32 0, i64 %122, i32* %123, i64 %124)
  %126 = call i32 @RINOK(i32 %125)
  br label %127

127:                                              ; preds = %112, %108
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %165, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %168

132:                                              ; preds = %128
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sub i32 %136, 1
  %138 = load i32, i32* %9, align 4
  %139 = sub i32 %137, %138
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %140
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** %12, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %146
  store %struct.TYPE_12__* %147, %struct.TYPE_12__** %13, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 %150(i32 %153, i32 %156, i32 %159, i32 %162)
  %164 = call i32 @RINOK(i32 %163)
  br label %165

165:                                              ; preds = %132
  %166 = load i32, i32* %9, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %128

168:                                              ; preds = %128
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %170 = call i32 @MixCoder_Init(%struct.TYPE_15__* %169)
  %171 = load i32, i32* @SZ_OK, align 4
  ret i32 %171
}

declare dso_local i32 @XzBlock_GetNumFilters(%struct.TYPE_14__*) #1

declare dso_local i32 @MixCoder_Free(%struct.TYPE_15__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @MixCoder_SetFromMethod(%struct.TYPE_15__*, i32, i64, i32*, i64) #1

declare dso_local i32 @MixCoder_ResetFromMethod(%struct.TYPE_15__*, i32, i64, i32*, i64) #1

declare dso_local i32 @MixCoder_Init(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
