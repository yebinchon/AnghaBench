; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzBlock_Parse.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzBlock_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32*, i64 }

@SZ_ERROR_ARCHIVE = common dso_local global i32 0, align 4
@XZ_FILTER_PROPS_SIZE_MAX = common dso_local global i64 0, align 8
@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XzBlock_Parse(%struct.TYPE_9__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 2
  store i32 %16, i32* %9, align 4
  %17 = load i64*, i64** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @CrcCalc(i64* %17, i32 %18)
  %20 = load i64*, i64** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = call i64 @GetUi32(i64* %23)
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %27, i32* %3, align 4
  br label %157

28:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %29 = load i64*, i64** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i64 -1, i64* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i64 @XzBlock_HasPackSize(%struct.TYPE_9__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %28
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = call i32 @READ_VARINT_AND_CHECK(i64* %43, i32 %44, i32 %45, i64* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %42
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = icmp sge i64 %59, -9223372036854775808
  br i1 %60, label %61, label %63

61:                                               ; preds = %53, %42
  %62 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %62, i32* %3, align 4
  br label %157

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %28
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i64 -1, i64* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = call i64 @XzBlock_HasUnpackSize(%struct.TYPE_9__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i64*, i64** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = call i32 @READ_VARINT_AND_CHECK(i64* %71, i32 %72, i32 %73, i64* %75)
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = call i32 @XzBlock_GetNumFilters(%struct.TYPE_9__* %78)
  store i32 %79, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %130, %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %133

84:                                               ; preds = %80
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %10, align 8
  %91 = load i64*, i64** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = call i32 @READ_VARINT_AND_CHECK(i64* %91, i32 %92, i32 %93, i64* %95)
  %97 = load i64*, i64** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @READ_VARINT_AND_CHECK(i64* %97, i32 %98, i32 %99, i64* %11)
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub i32 %102, %103
  %105 = zext i32 %104 to i64
  %106 = icmp sgt i64 %101, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %84
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @XZ_FILTER_PROPS_SIZE_MAX, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %84
  %112 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %112, i32* %3, align 4
  br label %157

113:                                              ; preds = %107
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64*, i64** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @memcpy(i32* %119, i64* %123, i64 %124)
  %126 = load i64, i64* %11, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* %6, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %80

133:                                              ; preds = %80
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = call i64 @XzBlock_HasUnsupportedFlags(%struct.TYPE_9__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %138, i32* %3, align 4
  br label %157

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %154, %139
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = load i64*, i64** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %6, align 4
  %148 = zext i32 %146 to i64
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* @SZ_ERROR_ARCHIVE, align 4
  store i32 %153, i32* %3, align 4
  br label %157

154:                                              ; preds = %144
  br label %140

155:                                              ; preds = %140
  %156 = load i32, i32* @SZ_OK, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %152, %137, %111, %61, %26
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @CrcCalc(i64*, i32) #1

declare dso_local i64 @GetUi32(i64*) #1

declare dso_local i64 @XzBlock_HasPackSize(%struct.TYPE_9__*) #1

declare dso_local i32 @READ_VARINT_AND_CHECK(i64*, i32, i32, i64*) #1

declare dso_local i64 @XzBlock_HasUnpackSize(%struct.TYPE_9__*) #1

declare dso_local i32 @XzBlock_GetNumFilters(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

declare dso_local i64 @XzBlock_HasUnsupportedFlags(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
