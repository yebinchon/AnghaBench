; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Callback_Parse.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzDecMt_Callback_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64*, i8*, i64, i8*, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i32, i32, i64, %struct.TYPE_16__, %struct.TYPE_15__, i32, i8*, %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, %struct.TYPE_22__, i8*, i8*, i8*, i32, i32, i64, i8*, i8*, i64, i32, i32, i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i32, i32, i32, %struct.TYPE_20__, i8*, i8* }
%struct.TYPE_20__ = type { i32, i64 }

@MTDEC_PARSE_CONTINUE = common dso_local global i8* null, align 8
@True = common dso_local global i8* null, align 8
@False = common dso_local global i8* null, align 8
@SZ_OK = common dso_local global i64 0, align 8
@CODER_STATUS_NOT_SPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Parse\00", align 1
@CODER_FINISH_END = common dso_local global i32 0, align 4
@MTDEC_PARSE_END = common dso_local global i8* null, align 8
@MTDEC_PARSE_OVERFLOW = common dso_local global i8* null, align 8
@MTDEC_PARSE_NEW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_21__*)* @XzDecMt_Callback_Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XzDecMt_Callback_Parse(i8* %0, i32 %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %7, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 12
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i64 %30
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %8, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i8*, i8** @MTDEC_PARSE_CONTINUE, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @True, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %151

49:                                               ; preds = %3
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i8*, i8** @MTDEC_PARSE_CONTINUE, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @False, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @False, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @SZ_OK, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 11
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @CODER_STATUS_NOT_SPECIFIED, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 18
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 17
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 16
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 15
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 14
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 13
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %49
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 11
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = call i32 @XzUnpacker_Construct(%struct.TYPE_22__* %96, i32* %99)
  %101 = load i8*, i8** @True, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 13
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %94, %49
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 5
  %107 = call i32 @XzUnpacker_Init(%struct.TYPE_22__* %106)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 10
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 4
  store i32 %115, i32* %118, align 8
  %119 = load i8*, i8** @True, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 12
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 5
  %124 = call i32 @XzUnpacker_PrepareToRandomBlockDecoding(%struct.TYPE_22__* %123)
  br label %132

125:                                              ; preds = %104
  %126 = load i8*, i8** @False, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 12
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @True, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 10
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %125, %112
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  store i64 %147, i64* %150, align 8
  br label %151

151:                                              ; preds = %132, %3
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 8
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  %157 = xor i1 %156, true
  br i1 %157, label %158, label %323

158:                                              ; preds = %152
  %159 = load i64, i64* %9, align 8
  store i64 %159, i64* %12, align 8
  store i64 -1, i64* %13, align 8
  %160 = load i8*, i8** @True, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 7
  store i8* %160, i8** %163, align 8
  %164 = load i8*, i8** @False, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 6
  store i8* %164, i8** %167, align 8
  %168 = load i64, i64* %12, align 8
  %169 = call i32 @PRF_STR_INT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %168)
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @CODER_FINISH_END, align 4
  %179 = call i64 @XzUnpacker_Code(%struct.TYPE_22__* %171, i32* null, i64* %13, i64* %174, i64* %12, i64 %177, i32 %178, i32* %10)
  store i64 %179, i64* %11, align 8
  %180 = load i64, i64* %11, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 11
  store i64 %180, i64* %182, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 10
  store i32 %183, i32* %185, align 4
  %186 = load i64, i64* %12, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %189, %186
  store i64 %190, i64* %188, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* %9, align 8
  %193 = sub i64 %192, %191
  store i64 %193, i64* %9, align 8
  %194 = load i64, i64* %12, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, %194
  store i64 %198, i64* %196, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* @SZ_OK, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %158
  %208 = load i8*, i8** @MTDEC_PARSE_END, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 6
  store i8* %208, i8** %210, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 3
  store i8* %208, i8** %212, align 8
  br label %499

213:                                              ; preds = %158
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 6
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %307

219:                                              ; preds = %213
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 5
  store %struct.TYPE_20__* %222, %struct.TYPE_20__** %14, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %224 = call i64 @XzBlock_HasUnpackSize(%struct.TYPE_20__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %306

226:                                              ; preds = %219
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %228 = call i64 @XzBlock_HasPackSize(%struct.TYPE_20__* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %306

230:                                              ; preds = %226
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = mul nsw i32 %233, 2
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 %234, %238
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 7
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp sgt i32 %239, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %230
  %246 = load i8*, i8** @MTDEC_PARSE_OVERFLOW, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 3
  store i8* %246, i8** %248, align 8
  br label %499

249:                                              ; preds = %230
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %15, align 8
  %253 = load i64, i64* %15, align 8
  %254 = load i64, i64* %15, align 8
  %255 = trunc i64 %254 to i32
  %256 = sub i32 0, %255
  %257 = and i32 %256, 3
  %258 = zext i32 %257 to i64
  %259 = add i64 %253, %258
  store i64 %259, i64* %16, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @XzFlags_GetCheckSize(i32 %263)
  store i64 %264, i64* %17, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* %16, align 8
  %269 = add i64 %267, %268
  %270 = load i64, i64* %17, align 8
  %271 = add i64 %269, %270
  store i64 %271, i64* %18, align 8
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %15, align 8
  %277 = add i64 %275, %276
  %278 = load i64, i64* %17, align 8
  %279 = add i64 %277, %278
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 3
  store i64 %279, i64* %281, align 8
  %282 = load i64, i64* %18, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 4
  store i64 %282, i64* %284, align 8
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  store i64 %288, i64* %290, align 8
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 9
  store i32 %294, i32* %296, align 8
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 5
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 9
  store i32 %300, i32* %302, align 8
  %303 = load i8*, i8** @True, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 8
  store i8* %303, i8** %305, align 8
  br label %323

306:                                              ; preds = %226, %219
  br label %319

307:                                              ; preds = %213
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %307
  br label %499

313:                                              ; preds = %307
  %314 = load i8*, i8** @MTDEC_PARSE_END, align 8
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 6
  store i8* %314, i8** %316, align 8
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 3
  store i8* %314, i8** %318, align 8
  br label %499

319:                                              ; preds = %306
  %320 = load i8*, i8** @MTDEC_PARSE_OVERFLOW, align 8
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 3
  store i8* %320, i8** %322, align 8
  br label %499

323:                                              ; preds = %249, %152
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = sub i64 %326, %329
  store i64 %330, i64* %19, align 8
  %331 = load i64, i64* %9, align 8
  store i64 %331, i64* %20, align 8
  %332 = load i64, i64* %20, align 8
  %333 = load i64, i64* %19, align 8
  %334 = icmp ugt i64 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %323
  %336 = load i64, i64* %19, align 8
  store i64 %336, i64* %20, align 8
  br label %337

337:                                              ; preds = %335, %323
  %338 = load i64, i64* %20, align 8
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = add i64 %341, %338
  store i64 %342, i64* %340, align 8
  %343 = load i64, i64* %20, align 8
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = add i64 %346, %343
  store i64 %347, i64* %345, align 8
  %348 = load i64, i64* %20, align 8
  %349 = load i64, i64* %9, align 8
  %350 = sub i64 %349, %348
  store i64 %350, i64* %9, align 8
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = icmp eq i64 %353, %356
  br i1 %357, label %358, label %458

358:                                              ; preds = %337
  %359 = load i64, i64* %9, align 8
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %371

361:                                              ; preds = %358
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 4
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %361
  br label %499

367:                                              ; preds = %361
  %368 = load i8*, i8** @MTDEC_PARSE_END, align 8
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 3
  store i8* %368, i8** %370, align 8
  br label %457

371:                                              ; preds = %358
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 2
  %374 = load i64*, i64** %373, align 8
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds i64, i64* %374, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %371
  %382 = load i8*, i8** @MTDEC_PARSE_END, align 8
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 3
  store i8* %382, i8** %384, align 8
  br label %456

385:                                              ; preds = %371
  %386 = load i8*, i8** @MTDEC_PARSE_NEW, align 8
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 3
  store i8* %386, i8** %388, align 8
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %21, align 8
  %392 = load i64, i64* %21, align 8
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = icmp ult i64 %392, %395
  br i1 %396, label %397, label %401

397:                                              ; preds = %385
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %21, align 8
  br label %401

401:                                              ; preds = %397, %385
  %402 = load i64, i64* %21, align 8
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 8
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = mul i64 %402, %408
  %410 = mul i64 %409, 2
  store i64 %410, i64* %22, align 8
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 7
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* %22, align 8
  %417 = icmp ult i64 %415, %416
  br i1 %417, label %418, label %422

418:                                              ; preds = %401
  %419 = load i8*, i8** @False, align 8
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 5
  store i8* %419, i8** %421, align 8
  br label %422

422:                                              ; preds = %418, %401
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 6
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %455

427:                                              ; preds = %422
  %428 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = sub i64 %430, %433
  store i64 %434, i64* %23, align 8
  %435 = load i64, i64* %23, align 8
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = icmp ult i64 %435, %438
  br i1 %439, label %440, label %447

440:                                              ; preds = %427
  %441 = load i8*, i8** @True, align 8
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 7
  store i8* %441, i8** %443, align 8
  %444 = load i8*, i8** @MTDEC_PARSE_END, align 8
  %445 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %445, i32 0, i32 3
  store i8* %444, i8** %446, align 8
  br label %447

447:                                              ; preds = %440, %427
  %448 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %451, i32 0, i32 2
  %453 = load i64, i64* %452, align 8
  %454 = add i64 %453, %450
  store i64 %454, i64* %452, align 8
  br label %455

455:                                              ; preds = %447, %422
  br label %456

456:                                              ; preds = %455, %381
  br label %457

457:                                              ; preds = %456, %367
  br label %469

458:                                              ; preds = %337
  %459 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %459, i32 0, i32 4
  %461 = load i64, i64* %460, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %458
  %464 = load i8*, i8** @MTDEC_PARSE_END, align 8
  %465 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %465, i32 0, i32 3
  store i8* %464, i8** %466, align 8
  br label %468

467:                                              ; preds = %458
  br label %499

468:                                              ; preds = %463
  br label %469

469:                                              ; preds = %468, %457
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i32 0, i32 3
  %472 = load i8*, i8** %471, align 8
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 6
  store i8* %472, i8** %474, align 8
  %475 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %478, i32 0, i32 1
  store i64 %477, i64* %479, align 8
  %480 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %480, i32 0, i32 5
  %482 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %484, i32 0, i32 5
  store i32 %483, i32* %485, align 4
  %486 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %487 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %486, i32 0, i32 5
  %488 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 4
  store i32 %489, i32* %491, align 8
  %492 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %492, i32 0, i32 5
  %494 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %493, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = add nsw i64 %495, 1
  %497 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %498 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %497, i32 0, i32 3
  store i64 %496, i64* %498, align 8
  br label %499

499:                                              ; preds = %469, %467, %366, %319, %313, %312, %245, %207
  ret void
}

declare dso_local i32 @XzUnpacker_Construct(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @XzUnpacker_Init(%struct.TYPE_22__*) #1

declare dso_local i32 @XzUnpacker_PrepareToRandomBlockDecoding(%struct.TYPE_22__*) #1

declare dso_local i32 @PRF_STR_INT(i8*, i64) #1

declare dso_local i64 @XzUnpacker_Code(%struct.TYPE_22__*, i32*, i64*, i64*, i64*, i64, i32, i32*) #1

declare dso_local i64 @XzBlock_HasUnpackSize(%struct.TYPE_20__*) #1

declare dso_local i64 @XzBlock_HasPackSize(%struct.TYPE_20__*) #1

declare dso_local i64 @XzFlags_GetCheckSize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
