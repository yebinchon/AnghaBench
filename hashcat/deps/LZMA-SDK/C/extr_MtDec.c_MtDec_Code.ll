; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_MtDec.c_MtDec_Code.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_MtDec.c_MtDec_Code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i64, i64, i8*, i8*, i8*, i64, %struct.TYPE_8__*, i64, i8*, i32, i32, i32*, i32, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i8*, i8*, i64 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@False = common dso_local global i8* null, align 8
@SZ_OK = common dso_local global i64 0, align 8
@True = common dso_local global i8* null, align 8
@MTDEC__THREADS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MtDec_Code(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 28
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i8*, i8** @False, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 8
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @False, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* @SZ_OK, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load i8*, i8** @True, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @False, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 27
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @False, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 26
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 25
  store i64 -1, i64* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 24
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* @SZ_OK, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 23
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* @SZ_OK, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 22
  store i64 %39, i64* %41, align 8
  %42 = load i8*, i8** @False, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 21
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 20
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 19
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 18
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 17
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MTDEC__THREADS_MAX, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %1
  %60 = load i32, i32* @MTDEC__THREADS_MAX, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %1
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 9
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %118

74:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %94, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @MTDEC__THREADS_MAX, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 10
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %6, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = call i32 @MtDecThread_FreeInBufs(%struct.TYPE_8__* %91)
  br label %93

93:                                               ; preds = %90, %79
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %75

97:                                               ; preds = %75
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 15
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 16
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 15
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ISzAlloc_Free(i32 %105, i32* %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 15
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %102, %97
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %61
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 14
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 13
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @MtProgress_Init(i32* %120, i32 %123)
  %125 = load i8*, i8** @False, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 12
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 11
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 10
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 9
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %135
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %9, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %139 = call i64 @MtDecThread_CreateEvents(%struct.TYPE_8__* %138)
  store i64 %139, i64* %7, align 8
  %140 = load i64, i64* %7, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %118
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = call i64 @Event_Set(i32* %144)
  store i64 %145, i64* %7, align 8
  %146 = load i64, i64* %7, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %142
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = call i64 @Event_Set(i32* %150)
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %148
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %156 = call i64 @ThreadFunc(%struct.TYPE_8__* %155)
  store i64 %156, i64* %7, align 8
  %157 = load i64, i64* %7, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i8*, i8** @False, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %164 = call i32 @MtDec_CloseThreads(%struct.TYPE_9__* %163)
  br label %165

165:                                              ; preds = %159, %154
  br label %166

166:                                              ; preds = %165, %148
  br label %167

167:                                              ; preds = %166, %142
  br label %168

168:                                              ; preds = %167, %118
  %169 = load i64, i64* %7, align 8
  %170 = call i64 @MY_SRes_HRESULT_FROM_WRes(i64 %169)
  store i64 %170, i64* %8, align 8
  %171 = load i64, i64* %8, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i64, i64* %8, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %173, %168
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 8
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %193, label %182

182:                                              ; preds = %177
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @SZ_OK, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %193, label %188

188:                                              ; preds = %182
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 7
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %188, %182, %177
  br label %198

194:                                              ; preds = %188
  %195 = load i8*, i8** @False, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 6
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %194, %193
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 6
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i64, i64* @SZ_OK, align 8
  store i64 %204, i64* %2, align 8
  br label %207

205:                                              ; preds = %198
  %206 = load i64, i64* %8, align 8
  store i64 %206, i64* %2, align 8
  br label %207

207:                                              ; preds = %205, %203
  %208 = load i64, i64* %2, align 8
  ret i64 %208
}

declare dso_local i32 @MtDecThread_FreeInBufs(%struct.TYPE_8__*) #1

declare dso_local i32 @ISzAlloc_Free(i32, i32*) #1

declare dso_local i32 @MtProgress_Init(i32*, i32) #1

declare dso_local i64 @MtDecThread_CreateEvents(%struct.TYPE_8__*) #1

declare dso_local i64 @Event_Set(i32*) #1

declare dso_local i64 @ThreadFunc(%struct.TYPE_8__*) #1

declare dso_local i32 @MtDec_CloseThreads(%struct.TYPE_9__*) #1

declare dso_local i64 @MY_SRes_HRESULT_FROM_WRes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
