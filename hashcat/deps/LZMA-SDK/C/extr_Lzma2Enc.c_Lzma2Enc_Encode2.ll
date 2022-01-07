; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2Enc_Encode2.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2Enc_Encode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_13__*, i32*, %struct.TYPE_12__, i32, %struct.TYPE_9__, i32, i32*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32*, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@SZ_ERROR_PARAM = common dso_local global i32 0, align 4
@MTCODER__THREADS_MAX = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@True = common dso_local global i64 0, align 8
@Lzma2Enc_MtCallback_Code = common dso_local global i32 0, align 4
@Lzma2Enc_MtCallback_Write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Lzma2Enc_Encode2(i64 %0, i32* %1, i32* %2, i64* %3, i32* %4, i32* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64* %3, i64** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i64, i64* %10, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %18, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %8
  %28 = load i32*, i32** %15, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %31, i32* %9, align 4
  br label %224

32:                                               ; preds = %27, %8
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %39, i32* %9, align 4
  br label %224

40:                                               ; preds = %35, %32
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* @False, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = load i32, i32* %19, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %19, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %19, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %209

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* @True, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 9
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 4
  %74 = call i32 @MtCoder_Construct(%struct.TYPE_12__* %73)
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* @Lzma2Enc_MtCallback_Code, align 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @Lzma2Enc_MtCallback_Write, align 4
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 8
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %75
  %90 = load i32*, i32** %12, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  %93 = load i64*, i64** %13, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i64*, i64** %13, align 8
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %89, %75
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 9
  store i32 %101, i32* %104, align 8
  %105 = load i32*, i32** %17, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 8
  store i32* %105, i32** %108, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 7
  store i32* %109, i32** %112, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 6
  store i32* %113, i32** %116, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %123, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 4
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store i64 %131, i64* %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %138, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %98
  %145 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %145, i32* %9, align 4
  br label %224

146:                                              ; preds = %98
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = lshr i64 %154, 10
  %156 = add i64 %150, %155
  %157 = add i64 %156, 16
  store i64 %157, i64* %21, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %158, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %146
  %165 = load i32, i32* @SZ_ERROR_PARAM, align 4
  store i32 %165, i32* %9, align 4
  br label %224

166:                                              ; preds = %146
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %21, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %174 = call i32 @Lzma2Enc_FreeOutBufs(%struct.TYPE_11__* %173)
  br label %175

175:                                              ; preds = %172, %166
  %176 = load i64, i64* %21, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  store i32 %182, i32* %185, align 4
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  %194 = call i32 @MtCoder_Code(%struct.TYPE_12__* %193)
  store i32 %194, i32* %22, align 4
  %195 = load i32*, i32** %11, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %207, label %197

197:                                              ; preds = %175
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32*, i32** %12, align 8
  %202 = ptrtoint i32* %200 to i64
  %203 = ptrtoint i32* %201 to i64
  %204 = sub i64 %202, %203
  %205 = sdiv exact i64 %204, 4
  %206 = load i64*, i64** %13, align 8
  store i64 %205, i64* %206, align 8
  br label %207

207:                                              ; preds = %197, %175
  %208 = load i32, i32* %22, align 4
  store i32 %208, i32* %9, align 4
  br label %224

209:                                              ; preds = %57
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i64 0
  %215 = load i32*, i32** %11, align 8
  %216 = load i32*, i32** %12, align 8
  %217 = load i64*, i64** %13, align 8
  %218 = load i32*, i32** %14, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = load i64, i64* %16, align 8
  %221 = load i64, i64* @True, align 8
  %222 = load i32*, i32** %17, align 8
  %223 = call i32 @Lzma2Enc_EncodeMt1(%struct.TYPE_11__* %210, %struct.TYPE_13__* %214, i32* %215, i32* %216, i64* %217, i32* %218, i32* %219, i64 %220, i64 %221, i32* %222)
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %209, %207, %164, %144, %38, %30
  %225 = load i32, i32* %9, align 4
  ret i32 %225
}

declare dso_local i32 @MtCoder_Construct(%struct.TYPE_12__*) #1

declare dso_local i32 @Lzma2Enc_FreeOutBufs(%struct.TYPE_11__*) #1

declare dso_local i32 @MtCoder_Code(%struct.TYPE_12__*) #1

declare dso_local i32 @Lzma2Enc_EncodeMt1(%struct.TYPE_11__*, %struct.TYPE_13__*, i32*, i32*, i64*, i32*, i32*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
