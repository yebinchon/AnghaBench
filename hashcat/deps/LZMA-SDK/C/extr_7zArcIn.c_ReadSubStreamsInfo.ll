; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_ReadSubStreamsInfo.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_ReadSubStreamsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_17__, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i64 }

@k7zIdNumUnpackStream = common dso_local global i64 0, align 8
@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@k7zIdCRC = common dso_local global i64 0, align 8
@k7zIdSize = common dso_local global i64 0, align 8
@k7zIdEnd = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_21__*)* @ReadSubStreamsInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadSubStreamsInfo(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %101, %76, %3
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = call i32 @ReadID(%struct.TYPE_19__* %20, i64* %8)
  %22 = call i32 @RINOK(i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @k7zIdNumUnpackStream, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %19
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %73, %26
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = call i32 @SzReadNumber32(%struct.TYPE_19__* %38, i64* %14)
  %40 = call i32 @RINOK(i32 %39)
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %14, align 8
  %44 = add nsw i64 %42, %43
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %47, i32* %4, align 4
  br label %204

48:                                               ; preds = %37
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i64, i64* %14, align 8
  %56 = sub nsw i64 %55, 1
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 1
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @SzBitWithVals_Check(%struct.TYPE_22__* %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62, %59
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %13, align 8
  br label %33

76:                                               ; preds = %33
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %79, %83
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  br label %19

88:                                               ; preds = %19
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @k7zIdCRC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @k7zIdSize, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @k7zIdEnd, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92, %88
  br label %105

101:                                              ; preds = %96
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = call i32 @SkipData(%struct.TYPE_19__* %102)
  %104 = call i32 @RINOK(i32 %103)
  br label %19

105:                                              ; preds = %100
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %105
  %112 = load i64, i64* %10, align 8
  store i64 %112, i64* %9, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i64 @CountDefinedBits(i64 %123, i64 %124)
  %126 = sub nsw i64 %119, %125
  store i64 %126, i64* %9, align 8
  br label %127

127:                                              ; preds = %118, %111
  br label %128

128:                                              ; preds = %127, %105
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* @k7zIdSize, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %163

138:                                              ; preds = %128
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  store i64 %141, i64* %144, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @SkipNumbers(%struct.TYPE_19__* %145, i64 %146)
  %148 = call i32 @RINOK(i32 %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %151, %155
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  store i64 %156, i64* %159, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %161 = call i32 @ReadID(%struct.TYPE_19__* %160, i64* %8)
  %162 = call i32 @RINOK(i32 %161)
  br label %163

163:                                              ; preds = %138, %128
  br label %164

164:                                              ; preds = %200, %163
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* @k7zIdEnd, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @SZ_OK, align 4
  store i32 %169, i32* %4, align 4
  br label %204

170:                                              ; preds = %164
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* @k7zIdCRC, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %196

174:                                              ; preds = %170
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  store i64 %177, i64* %180, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %182 = load i64, i64* %9, align 8
  %183 = call i32 @SkipBitUi32s(%struct.TYPE_19__* %181, i64 %182)
  %184 = call i32 @RINOK(i32 %183)
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %187, %191
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 1
  store i64 %192, i64* %195, align 8
  br label %200

196:                                              ; preds = %170
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %198 = call i32 @SkipData(%struct.TYPE_19__* %197)
  %199 = call i32 @RINOK(i32 %198)
  br label %200

200:                                              ; preds = %196, %174
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %202 = call i32 @ReadID(%struct.TYPE_19__* %201, i64* %8)
  %203 = call i32 @RINOK(i32 %202)
  br label %164

204:                                              ; preds = %168, %46
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @ReadID(%struct.TYPE_19__*, i64*) #1

declare dso_local i32 @SzReadNumber32(%struct.TYPE_19__*, i64*) #1

declare dso_local i32 @SzBitWithVals_Check(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @SkipData(%struct.TYPE_19__*) #1

declare dso_local i64 @CountDefinedBits(i64, i64) #1

declare dso_local i32 @SkipNumbers(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @SkipBitUi32s(%struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
