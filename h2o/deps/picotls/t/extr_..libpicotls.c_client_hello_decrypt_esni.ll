; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_client_hello_decrypt_esni.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_client_hello_decrypt_esni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_26__** }
%struct.TYPE_26__ = type { i32, %struct.TYPE_38__**, i32, %struct.TYPE_31__* }
%struct.TYPE_38__ = type { i32 (%struct.TYPE_38__**, i32, i32*, i32)*, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.st_ptls_client_hello_t = type { %struct.TYPE_37__, %struct.TYPE_36__, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__, %struct.TYPE_28__*, i32, %struct.TYPE_33__*, i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_34__*, %struct.TYPE_30__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i64 }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_ALERT_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@PTLS_ESNI_NONCE_SIZE = common dso_local global i32 0, align 4
@PTLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_24__*, %struct.TYPE_25__**, %struct.st_ptls_client_hello_t*)* @client_hello_decrypt_esni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_hello_decrypt_esni(%struct.TYPE_27__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__** %2, %struct.st_ptls_client_hello_t* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__**, align 8
  %9 = alloca %struct.st_ptls_client_hello_t*, align 8
  %10 = alloca %struct.TYPE_26__**, align 8
  %11 = alloca %struct.TYPE_38__**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_24__, align 4
  %19 = alloca %struct.TYPE_24__, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_25__** %2, %struct.TYPE_25__*** %8, align 8
  store %struct.st_ptls_client_hello_t* %3, %struct.st_ptls_client_hello_t** %9, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %13, align 8
  %20 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %22 = icmp eq %struct.TYPE_25__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call i8* @malloc(i32 16)
  %26 = bitcast i8* %25 to %struct.TYPE_25__*
  %27 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %27, align 8
  %28 = icmp eq %struct.TYPE_25__* %26, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %30, i32* %5, align 4
  br label %384

31:                                               ; preds = %4
  %32 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = call i32 @memset(%struct.TYPE_25__* %33, i32 0, i32 16)
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %36, align 8
  store %struct.TYPE_26__** %37, %struct.TYPE_26__*** %10, align 8
  br label %38

38:                                               ; preds = %120, %31
  %39 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  %41 = icmp ne %struct.TYPE_26__* %40, null
  br i1 %41, label %42, label %123

42:                                               ; preds = %38
  store i64 0, i64* %15, align 8
  br label %43

43:                                               ; preds = %73, %42
  %44 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %46, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %50, align 8
  %52 = icmp ne %struct.TYPE_29__* %51, null
  br i1 %52, label %53, label %76

53:                                               ; preds = %43
  %54 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %65 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %63, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %76

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %15, align 8
  br label %43

76:                                               ; preds = %71, %43
  %77 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %79, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = icmp eq %struct.TYPE_29__* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %87, i32* %14, align 4
  br label %360

88:                                               ; preds = %76
  %89 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %98 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %102 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @memcmp(i32 %96, i32 %100, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %88
  %112 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  br label %123

119:                                              ; preds = %88
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %121, i32 1
  store %struct.TYPE_26__** %122, %struct.TYPE_26__*** %10, align 8
  br label %38

123:                                              ; preds = %111, %38
  %124 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %124, align 8
  %126 = icmp eq %struct.TYPE_26__* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %128, i32* %14, align 4
  br label %360

129:                                              ; preds = %123
  %130 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %132, align 8
  store %struct.TYPE_38__** %133, %struct.TYPE_38__*** %11, align 8
  br label %134

134:                                              ; preds = %154, %129
  %135 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %11, align 8
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %135, align 8
  %137 = icmp ne %struct.TYPE_38__* %136, null
  br i1 %137, label %138, label %157

138:                                              ; preds = %134
  %139 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %11, align 8
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %146 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %144, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  br label %157

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153
  %155 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %155, i32 1
  store %struct.TYPE_38__** %156, %struct.TYPE_38__*** %11, align 8
  br label %134

157:                                              ; preds = %152, %134
  %158 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %11, align 8
  %159 = load %struct.TYPE_38__*, %struct.TYPE_38__** %158, align 8
  %160 = icmp eq %struct.TYPE_38__* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %162, i32* %14, align 4
  br label %360

163:                                              ; preds = %157
  %164 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %165 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %168, align 8
  %170 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %175 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %179 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %185 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %189 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @build_esni_contents_hash(%struct.TYPE_30__* %169, i32 %173, i32 %177, i64 %183, i32 %187, i32 %190)
  store i32 %191, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %163
  br label %360

194:                                              ; preds = %163
  %195 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %11, align 8
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 0
  %198 = load i32 (%struct.TYPE_38__**, i32, i32*, i32)*, i32 (%struct.TYPE_38__**, i32, i32*, i32)** %197, align 8
  %199 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %11, align 8
  %200 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 2
  %203 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %204 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 %198(%struct.TYPE_38__** %199, i32 0, i32* %202, i32 %206)
  store i32 %207, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  br label %360

210:                                              ; preds = %194
  %211 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %212 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %217 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %215, %223
  %225 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @PTLS_ESNI_NONCE_SIZE, align 4
  %230 = add nsw i32 %228, %229
  %231 = icmp ne i32 %224, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %210
  %233 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %233, i32* %14, align 4
  br label %360

234:                                              ; preds = %210
  %235 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @PTLS_ESNI_NONCE_SIZE, align 4
  %240 = add nsw i32 %238, %239
  %241 = call i8* @malloc(i32 %240)
  store i8* %241, i8** %12, align 8
  %242 = icmp eq i8* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %234
  %244 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %244, i32* %14, align 4
  br label %360

245:                                              ; preds = %234
  %246 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %247 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %248, align 8
  %250 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @create_esni_aead(i32** %13, i32 0, %struct.TYPE_28__* %249, i32 %253, i32 %257)
  store i32 %258, i32* %14, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %245
  br label %360

261:                                              ; preds = %245
  %262 = load i32*, i32** %13, align 8
  %263 = load i8*, i8** %12, align 8
  %264 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %265 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %270 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %275 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.st_ptls_client_hello_t*, %struct.st_ptls_client_hello_t** %9, align 8
  %279 = getelementptr inbounds %struct.st_ptls_client_hello_t, %struct.st_ptls_client_hello_t* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @ptls_aead_decrypt(i32* %262, i8* %263, i32 %268, i32 %273, i32 0, i32 %277, i32 %281)
  %283 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @PTLS_ESNI_NONCE_SIZE, align 4
  %288 = add nsw i32 %286, %287
  %289 = icmp ne i32 %282, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %261
  %291 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %291, i32* %14, align 4
  br label %360

292:                                              ; preds = %261
  %293 = load i32*, i32** %13, align 8
  %294 = call i32 @ptls_aead_free(i32* %293)
  store i32* null, i32** %13, align 8
  %295 = load i8*, i8** %12, align 8
  store i8* %295, i8** %16, align 8
  %296 = load i8*, i8** %16, align 8
  %297 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %10, align 8
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %296, i64 %301
  store i8* %302, i8** %17, align 8
  %303 = load i8*, i8** %17, align 8
  %304 = load i8*, i8** %16, align 8
  %305 = ptrtoint i8* %303 to i64
  %306 = ptrtoint i8* %304 to i64
  %307 = sub i64 %305, %306
  %308 = load i32, i32* @PTLS_ESNI_NONCE_SIZE, align 4
  %309 = sext i32 %308 to i64
  %310 = icmp slt i64 %307, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %292
  %312 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %312, i32* %14, align 4
  br label %360

313:                                              ; preds = %292
  %314 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i8*, i8** %16, align 8
  %319 = load i32, i32* @PTLS_ESNI_NONCE_SIZE, align 4
  %320 = call i32 @memcpy(i32 %317, i8* %318, i32 %319)
  %321 = load i32, i32* @PTLS_ESNI_NONCE_SIZE, align 4
  %322 = load i8*, i8** %16, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8* %324, i8** %16, align 8
  %325 = load i8*, i8** %17, align 8
  %326 = call i32 @client_hello_decode_server_name(%struct.TYPE_24__* %18, i8** %16, i8* %325)
  store i32 %326, i32* %14, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %313
  br label %360

329:                                              ; preds = %313
  br label %330

330:                                              ; preds = %342, %329
  %331 = load i8*, i8** %16, align 8
  %332 = load i8*, i8** %17, align 8
  %333 = icmp ne i8* %331, %332
  br i1 %333, label %334, label %345

334:                                              ; preds = %330
  %335 = load i8*, i8** %16, align 8
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %334
  %340 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %340, i32* %14, align 4
  br label %360

341:                                              ; preds = %334
  br label %342

342:                                              ; preds = %341
  %343 = load i8*, i8** %16, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %16, align 8
  br label %330

345:                                              ; preds = %330
  %346 = load i8*, i8** %12, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @memmove(i8* %346, i32 %348, i32 %350)
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %353 = load i8*, i8** %12, align 8
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i64 @ptls_iovec_init(i8* %353, i32 %355)
  %357 = bitcast %struct.TYPE_24__* %19 to i64*
  store i64 %356, i64* %357, align 4
  %358 = bitcast %struct.TYPE_24__* %352 to i8*
  %359 = bitcast %struct.TYPE_24__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %358, i8* align 4 %359, i64 8, i1 false)
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  br label %360

360:                                              ; preds = %345, %339, %328, %311, %290, %260, %243, %232, %209, %193, %161, %127, %86
  %361 = load i8*, i8** %12, align 8
  %362 = icmp ne i8* %361, null
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load i8*, i8** %12, align 8
  %365 = call i32 @free(i8* %364)
  br label %366

366:                                              ; preds = %363, %360
  %367 = load i32*, i32** %13, align 8
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %372

369:                                              ; preds = %366
  %370 = load i32*, i32** %13, align 8
  %371 = call i32 @ptls_aead_free(i32* %370)
  br label %372

372:                                              ; preds = %369, %366
  %373 = load i32, i32* %14, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %372
  %376 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** %376, align 8
  %378 = icmp ne %struct.TYPE_25__* %377, null
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %8, align 8
  %381 = call i32 @free_esni_secret(%struct.TYPE_25__** %380, i32 1)
  br label %382

382:                                              ; preds = %379, %375, %372
  %383 = load i32, i32* %14, align 4
  store i32 %383, i32* %5, align 4
  br label %384

384:                                              ; preds = %382, %29
  %385 = load i32, i32* %5, align 4
  ret i32 %385
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @build_esni_contents_hash(%struct.TYPE_30__*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @create_esni_aead(i32**, i32, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @ptls_aead_decrypt(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ptls_aead_free(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @client_hello_decode_server_name(%struct.TYPE_24__*, i8**, i8*) #1

declare dso_local i32 @memmove(i8*, i32, i32) #1

declare dso_local i64 @ptls_iovec_init(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @free_esni_secret(%struct.TYPE_25__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
