; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zDec.c_CheckSupportedFolder.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zDec.c_CheckSupportedFolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64*, i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @CheckSupportedFolder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckSupportedFolder(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %15, i32* %2, align 4
  br label %229

16:                                               ; preds = %9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 0
  %21 = call i32 @IS_SUPPORTED_CODER(%struct.TYPE_9__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %24, i32* %2, align 4
  br label %229

25:                                               ; preds = %16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %35, %30
  %48 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %48, i32* %2, align 4
  br label %229

49:                                               ; preds = %42
  %50 = load i32, i32* @SZ_OK, align 4
  store i32 %50, i32* %2, align 4
  br label %229

51:                                               ; preds = %25
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %109

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 1
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %4, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %98, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %98, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %98, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90, %82, %77, %70, %65, %56
  %99 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %99, i32* %2, align 4
  br label %229

100:                                              ; preds = %90
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %105 [
    i32 131, label %104
    i32 132, label %104
    i32 129, label %104
    i32 130, label %104
    i32 128, label %104
    i32 134, label %104
    i32 133, label %104
  ]

104:                                              ; preds = %100, %100, %100, %100, %100, %100, %100
  br label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %106, i32* %2, align 4
  br label %229

107:                                              ; preds = %104
  %108 = load i32, i32* @SZ_OK, align 4
  store i32 %108, i32* %2, align 4
  br label %229

109:                                              ; preds = %51
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %227

114:                                              ; preds = %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 1
  %119 = call i32 @IS_SUPPORTED_CODER(%struct.TYPE_9__* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 2
  %126 = call i32 @IS_SUPPORTED_CODER(%struct.TYPE_9__* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 3
  %133 = call i32 @IS_BCJ2(%struct.TYPE_9__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %128, %121, %114
  %136 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %136, i32* %2, align 4
  br label %229

137:                                              ; preds = %128
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 4
  br i1 %141, label %223, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 2
  br i1 %148, label %223, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 6
  br i1 %155, label %223, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 1
  br i1 %162, label %223, label %163

163:                                              ; preds = %156
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %223, label %170

170:                                              ; preds = %163
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 3
  br i1 %174, label %223, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 5
  br i1 %182, label %223, label %183

183:                                              ; preds = %175
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %223, label %191

191:                                              ; preds = %183
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 4
  br i1 %198, label %223, label %199

199:                                              ; preds = %191
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 1
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 1
  br i1 %206, label %223, label %207

207:                                              ; preds = %199
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i64 2
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 3
  br i1 %214, label %223, label %215

215:                                              ; preds = %207
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i64 2
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 2
  br i1 %222, label %223, label %225

223:                                              ; preds = %215, %207, %199, %191, %183, %175, %170, %163, %156, %149, %142, %137
  %224 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %224, i32* %2, align 4
  br label %229

225:                                              ; preds = %215
  %226 = load i32, i32* @SZ_OK, align 4
  store i32 %226, i32* %2, align 4
  br label %229

227:                                              ; preds = %109
  %228 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %227, %225, %223, %135, %107, %105, %98, %49, %47, %23, %14
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @IS_SUPPORTED_CODER(%struct.TYPE_9__*) #1

declare dso_local i32 @IS_BCJ2(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
