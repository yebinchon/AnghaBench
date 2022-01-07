; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Decode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_24__ = type { i32, i64, i64, i64, i64, i64, i32, i64, i32, i32, %struct.TYPE_17__, i8*, i8*, %struct.TYPE_22__*, i64, i8*, %struct.TYPE_23__, %struct.TYPE_18__, i8*, i64, i64, i64, i64, i8*, i8*, i64, i8*, i32*, i32*, i32* }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i8*, %struct.TYPE_19__, i8*, i32, i32*, i32*, i32*, %struct.TYPE_24__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@False = common dso_local global i8* null, align 8
@True = common dso_local global i8* null, align 8
@SZ_OK = common dso_local global i64 0, align 8
@CODER_STATUS_NOT_SPECIFIED = common dso_local global i32 0, align 4
@XzDecMt_Callback_Parse = common dso_local global i32 0, align 4
@XzDecMt_Callback_PreCode = common dso_local global i32 0, align 4
@XzDecMt_Callback_Code = common dso_local global i32 0, align 4
@XzDecMt_Callback_Write = common dso_local global i32 0, align 4
@SZ_ERROR_PROGRESS = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@SZ_ERROR_READ = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"----- decoding ST -----\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XzDecMt_Decode(i64 %0, %struct.TYPE_23__* %1, i64* %2, i32 %3, i32* %4, i32* %5, %struct.TYPE_21__* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_20__, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_22__*, align 8
  %30 = alloca i64, align 8
  store i64 %0, i64* %11, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store %struct.TYPE_21__* %6, %struct.TYPE_21__** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %31 = load i64, i64* %11, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %20, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %34 = call i32 @XzStatInfo_Clear(%struct.TYPE_21__* %33)
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 16
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %38 = bitcast %struct.TYPE_23__* %36 to i8*
  %39 = bitcast %struct.TYPE_23__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 8, i1 false)
  %40 = load i32*, i32** %16, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 29
  store i32* %40, i32** %42, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 28
  store i32* %43, i32** %45, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 27
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 25
  store i64 0, i64* %50, align 8
  %51 = load i8*, i8** @False, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 26
  store i8* %51, i8** %53, align 8
  %54 = load i64*, i64** %13, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %9
  %57 = load i8*, i8** @True, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 26
  store i8* %57, i8** %59, align 8
  %60 = load i64*, i64** %13, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 25
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %9
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* @SZ_OK, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 14
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load i8*, i8** @False, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 15
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @CODER_STATUS_NOT_SPECIFIED, align 4
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 9
  %87 = call i32 @XzUnpacker_Init(i32* %86)
  %88 = load i8*, i8** @False, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load i32*, i32** %18, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i8*, i8** @False, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 24
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @False, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 23
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* @SZ_OK, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  %100 = load i8*, i8** @False, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 12
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @False, align 8
  store i8* %103, i8** %21, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 16
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %391

109:                                              ; preds = %64
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %111 = call i32 @XzDecMt_FreeSt(%struct.TYPE_24__* %110)
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 22
  store i64 0, i64* %113, align 8
  %114 = load i8*, i8** @False, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 11
  store i8* %114, i8** %116, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 21
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 20
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 19
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 6
  store i32 -1, i32* %124, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 18
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %136, label %129

129:                                              ; preds = %109
  %130 = load i8*, i8** @True, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 18
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 10
  %135 = call i32 @MtDec_Construct(%struct.TYPE_17__* %134)
  br label %136

136:                                              ; preds = %129, %109
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 10
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 12
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %139, align 8
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 10
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 11
  store %struct.TYPE_24__* %140, %struct.TYPE_24__** %143, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 10
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 10
  store i32* %144, i32** %147, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 10
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 9
  store i32* %148, i32** %151, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 17
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 10
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 8
  store i32* %154, i32** %157, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 16
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 10
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 7
  store i32 %161, i32* %164, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 16
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load i8*, i8** @True, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = load i32*, i32** %18, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* @XzDecMt_Callback_Parse, align 4
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 3
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* @XzDecMt_Callback_PreCode, align 4
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @XzDecMt_Callback_Code, align 4
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* @XzDecMt_Callback_Write, align 4
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  store i32 %181, i32* %182, align 4
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 10
  %185 = call i64 @MtDec_Code(%struct.TYPE_17__* %184)
  store i64 %185, i64* %24, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 10
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 10
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 10
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 7
  store i64 %201, i64* %203, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 10
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 6
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 15
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 10
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 3
  store i64 %213, i64* %215, align 8
  %216 = load i8*, i8** @True, align 8
  store i8* %216, i8** %21, align 8
  %217 = load i8*, i8** @False, align 8
  store i8* %217, i8** %23, align 8
  %218 = load i64, i64* %24, align 8
  %219 = load i64, i64* @SZ_OK, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %247

221:                                              ; preds = %136
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 10
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @SZ_OK, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %221
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 10
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %24, align 8
  %235 = load i64, i64* %24, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 5
  store i64 %235, i64* %237, align 8
  %238 = load i64, i64* @SZ_ERROR_PROGRESS, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 1
  store i64 %238, i64* %240, align 8
  br label %246

241:                                              ; preds = %221
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 10
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 4
  %245 = load i8*, i8** %244, align 8
  store i8* %245, i8** %23, align 8
  br label %246

246:                                              ; preds = %241, %229
  br label %247

247:                                              ; preds = %246, %136
  %248 = load i8*, i8** %23, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %389, label %250

250:                                              ; preds = %247
  %251 = load i8*, i8** @False, align 8
  store i8* %251, i8** %26, align 8
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 14
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 4
  store i64 %254, i64* %256, align 8
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = icmp sge i32 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %250
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 13
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %263, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i64 %268
  store %struct.TYPE_22__* %269, %struct.TYPE_22__** %29, align 8
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %25, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  store i32* %274, i32** %28, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  store i32 %277, i32* %27, align 4
  br label %298

278:                                              ; preds = %250
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 12
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %295

283:                                              ; preds = %278
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %25, align 8
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 9
  store i32* %288, i32** %28, align 8
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 8
  store i32 %291, i32* %27, align 4
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 11
  %294 = load i8*, i8** %293, align 8
  store i8* %294, i8** %26, align 8
  br label %297

295:                                              ; preds = %278
  %296 = load i64, i64* @E_FAIL, align 8
  store i64 %296, i64* %10, align 8
  br label %474

297:                                              ; preds = %283
  br label %298

298:                                              ; preds = %297, %261
  %299 = load i32*, i32** %28, align 8
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 10
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 10
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* %25, align 8
  %312 = load i32, i32* %27, align 4
  %313 = load i8*, i8** %26, align 8
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %315 = call i32 @XzStatInfo_SetStat(i32* %299, i32 %302, i64 %306, i64 %310, i64 %311, i32 %312, i8* %313, %struct.TYPE_21__* %314)
  %316 = load i64, i64* %24, align 8
  %317 = load i64, i64* @SZ_OK, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %374

319:                                              ; preds = %298
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @SZ_OK, align 8
  %324 = icmp ne i64 %322, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %319
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %24, align 8
  %329 = load i64, i64* @SZ_ERROR_WRITE, align 8
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %330, i32 0, i32 1
  store i64 %329, i64* %331, align 8
  br label %373

332:                                              ; preds = %319
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 10
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @SZ_OK, align 8
  %338 = icmp ne i64 %336, %337
  br i1 %338, label %339, label %361

339:                                              ; preds = %332
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 10
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 10
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 3
  %347 = load i64, i64* %346, align 8
  %348 = icmp eq i64 %343, %347
  br i1 %348, label %349, label %361

349:                                              ; preds = %339
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 10
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %24, align 8
  %354 = load i64, i64* %24, align 8
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 3
  store i64 %354, i64* %356, align 8
  %357 = load i8*, i8** @SZ_ERROR_READ, align 8
  %358 = ptrtoint i8* %357 to i64
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 1
  store i64 %358, i64* %360, align 8
  br label %372

361:                                              ; preds = %339, %332
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 5
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @SZ_OK, align 8
  %366 = icmp ne i64 %364, %365
  br i1 %366, label %367, label %371

367:                                              ; preds = %361
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 5
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %24, align 8
  br label %371

371:                                              ; preds = %367, %361
  br label %372

372:                                              ; preds = %371, %349
  br label %373

373:                                              ; preds = %372, %325
  br label %374

374:                                              ; preds = %373, %298
  %375 = load i64, i64* %24, align 8
  %376 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %377 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %376, i32 0, i32 2
  store i64 %375, i64* %377, align 8
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @SZ_OK, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %387

383:                                              ; preds = %374
  %384 = load i64, i64* %24, align 8
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 1
  store i64 %384, i64* %386, align 8
  br label %387

387:                                              ; preds = %383, %374
  %388 = load i64, i64* %24, align 8
  store i64 %388, i64* %10, align 8
  br label %474

389:                                              ; preds = %247
  %390 = call i32 @PRF_STR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %391

391:                                              ; preds = %389, %64
  %392 = load i8*, i8** @False, align 8
  %393 = ptrtoint i8* %392 to i32
  %394 = load i32*, i32** %18, align 8
  store i32 %393, i32* %394, align 4
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %396 = load i8*, i8** %21, align 8
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %398 = call i64 @XzDecMt_Decode_ST(%struct.TYPE_24__* %395, i8* %396, %struct.TYPE_21__* %397)
  store i64 %398, i64* %30, align 8
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 9
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %402 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 2
  %409 = load i64, i64* %408, align 8
  %410 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %411 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %410, i32 0, i32 4
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %414 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %413, i32 0, i32 8
  %415 = load i32, i32* %414, align 8
  %416 = load i8*, i8** @False, align 8
  %417 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %418 = call i32 @XzStatInfo_SetStat(i32* %400, i32 %403, i64 %406, i64 %409, i64 %412, i32 %415, i8* %416, %struct.TYPE_21__* %417)
  %419 = load i64, i64* %30, align 8
  %420 = load i64, i64* @SZ_OK, align 8
  %421 = icmp eq i64 %419, %420
  br i1 %421, label %422, label %459

422:                                              ; preds = %391
  %423 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 7
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @SZ_OK, align 8
  %427 = icmp ne i64 %425, %426
  br i1 %427, label %428, label %447

428:                                              ; preds = %422
  %429 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %430 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %429, i32 0, i32 2
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = icmp eq i64 %431, %434
  br i1 %435, label %436, label %447

436:                                              ; preds = %428
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %438 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %437, i32 0, i32 7
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %30, align 8
  %440 = load i64, i64* %30, align 8
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 3
  store i64 %440, i64* %442, align 8
  %443 = load i8*, i8** @SZ_ERROR_READ, align 8
  %444 = ptrtoint i8* %443 to i64
  %445 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %446 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %445, i32 0, i32 1
  store i64 %444, i64* %446, align 8
  br label %458

447:                                              ; preds = %428, %422
  %448 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i32 0, i32 5
  %450 = load i64, i64* %449, align 8
  %451 = load i64, i64* @SZ_OK, align 8
  %452 = icmp ne i64 %450, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %447
  %454 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 5
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %30, align 8
  br label %457

457:                                              ; preds = %453, %447
  br label %458

458:                                              ; preds = %457, %436
  br label %459

459:                                              ; preds = %458, %391
  %460 = load i64, i64* %30, align 8
  %461 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %462 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %461, i32 0, i32 2
  store i64 %460, i64* %462, align 8
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @SZ_OK, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %472

468:                                              ; preds = %459
  %469 = load i64, i64* %30, align 8
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 1
  store i64 %469, i64* %471, align 8
  br label %472

472:                                              ; preds = %468, %459
  %473 = load i64, i64* %30, align 8
  store i64 %473, i64* %10, align 8
  br label %474

474:                                              ; preds = %472, %387, %295
  %475 = load i64, i64* %10, align 8
  ret i64 %475
}

declare dso_local i32 @XzStatInfo_Clear(%struct.TYPE_21__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @XzUnpacker_Init(i32*) #1

declare dso_local i32 @XzDecMt_FreeSt(%struct.TYPE_24__*) #1

declare dso_local i32 @MtDec_Construct(%struct.TYPE_17__*) #1

declare dso_local i64 @MtDec_Code(%struct.TYPE_17__*) #1

declare dso_local i32 @XzStatInfo_SetStat(i32*, i32, i64, i64, i64, i32, i8*, %struct.TYPE_21__*) #1

declare dso_local i32 @PRF_STR(i8*) #1

declare dso_local i64 @XzDecMt_Decode_ST(%struct.TYPE_24__*, i8*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
