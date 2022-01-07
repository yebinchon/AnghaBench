; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_compress.c_on_setup_ostream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_compress.c_on_setup_ostream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_37__, i32, i32, %struct.TYPE_30__ }
%struct.TYPE_37__ = type { i32, %struct.TYPE_26__, i32, %struct.TYPE_31__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, i32* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.st_compress_filter_t = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__, %struct.TYPE_32__, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.st_compress_encoder_t = type { %struct.TYPE_25__*, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32*, i32 }

@H2O_COMPRESSIBLE_BROTLI = common dso_local global i32 0, align 4
@H2O_COMPRESSIBLE_GZIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@H2O_TOKEN_CONTENT_ENCODING = common dso_local global %struct.TYPE_28__* null, align 8
@H2O_TOKEN_ACCEPT_RANGES = common dso_local global %struct.TYPE_29__* null, align 8
@H2O_TOKEN_VARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"accept-encoding\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@do_send = common dso_local global i32 0, align 4
@BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_24__*, i32**)* @on_setup_ostream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_setup_ostream(i32* %0, %struct.TYPE_24__* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.st_compress_filter_t*, align 8
  %8 = alloca %struct.st_compress_encoder_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32** %2, i32*** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.st_compress_filter_t*
  store %struct.st_compress_filter_t* %17, %struct.st_compress_filter_t** %7, align 8
  %18 = load i32, i32* @H2O_COMPRESSIBLE_BROTLI, align 4
  %19 = load i32, i32* @H2O_COMPRESSIBLE_GZIP, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 257
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %255

26:                                               ; preds = %3
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 200
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %255

33:                                               ; preds = %26
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %45 = call i64 @h2o_memis(i32 %38, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %255

48:                                               ; preds = %33
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %59 [
    i32 131, label %52
    i32 130, label %53
    i32 129, label %54
    i32 128, label %56
    i32 132, label %58
  ]

52:                                               ; preds = %48
  br label %255

53:                                               ; preds = %48
  br label %89

54:                                               ; preds = %48
  %55 = load i32, i32* @H2O_COMPRESSIBLE_BROTLI, align 4
  store i32 %55, i32* %10, align 4
  br label %89

56:                                               ; preds = %48
  %57 = load i32, i32* @H2O_COMPRESSIBLE_GZIP, align 4
  store i32 %57, i32* %10, align 4
  br label %89

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %48, %58
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %62, align 8
  %64 = icmp eq %struct.TYPE_31__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %67 = call i32 @h2o_req_fill_mime_attributes(%struct.TYPE_24__* %66)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %255

77:                                               ; preds = %68
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.st_compress_filter_t*, %struct.st_compress_filter_t** %7, align 8
  %83 = getelementptr inbounds %struct.st_compress_filter_t, %struct.st_compress_filter_t* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %255

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %56, %54, %53
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 5
  %92 = call i32 @h2o_get_compressible_types(i32* %91)
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %255

98:                                               ; preds = %89
  store i64 -1, i64* %13, align 8
  store i64 -1, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %99

99:                                               ; preds = %140, %98
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %100, %105
  br i1 %106, label %107, label %143

107:                                              ; preds = %99
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** @H2O_TOKEN_CONTENT_ENCODING, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = icmp eq i32* %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = load i64, i64* %12, align 8
  store i64 %121, i64* %13, align 8
  br label %139

122:                                              ; preds = %107
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_36__*, %struct.TYPE_36__** %126, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** @H2O_TOKEN_ACCEPT_RANGES, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  %134 = icmp eq i32* %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i64, i64* %12, align 8
  store i64 %136, i64* %14, align 8
  br label %138

137:                                              ; preds = %122
  br label %140

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138, %120
  br label %140

140:                                              ; preds = %139, %137
  %141 = load i64, i64* %12, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %12, align 8
  br label %99

143:                                              ; preds = %99
  %144 = load i64, i64* %13, align 8
  %145 = icmp ne i64 %144, -1
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %255

147:                                              ; preds = %143
  %148 = load %struct.st_compress_filter_t*, %struct.st_compress_filter_t** %7, align 8
  %149 = getelementptr inbounds %struct.st_compress_filter_t, %struct.st_compress_filter_t* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %168

154:                                              ; preds = %147
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @H2O_COMPRESSIBLE_GZIP, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %154
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 4
  %162 = load %struct.st_compress_filter_t*, %struct.st_compress_filter_t** %7, align 8
  %163 = getelementptr inbounds %struct.st_compress_filter_t, %struct.st_compress_filter_t* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.TYPE_25__* @h2o_compress_gzip_open(i32* %161, i32 %166)
  store %struct.TYPE_25__* %167, %struct.TYPE_25__** %11, align 8
  br label %177

168:                                              ; preds = %154, %147
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %172, i32 0, i32 1
  %174 = load i32, i32* @H2O_TOKEN_VARY, align 4
  %175 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %176 = call i32 @h2o_set_header_token(i32* %170, %struct.TYPE_26__* %173, i32 %174, i32 %175)
  br label %255

177:                                              ; preds = %159
  %178 = load i32, i32* @SIZE_MAX, align 4
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %180, i32 0, i32 2
  store i32 %178, i32* %181, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** @H2O_TOKEN_CONTENT_ENCODING, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32*, %struct.TYPE_26__*, ...) @h2o_add_header(i32* %183, %struct.TYPE_26__* %186, %struct.TYPE_28__* %187, i8* null, i32 %191, i32 %195)
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %200, i32 0, i32 1
  %202 = load i32, i32* @H2O_TOKEN_VARY, align 4
  %203 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %204 = call i32 @h2o_set_header_token(i32* %198, %struct.TYPE_26__* %201, i32 %202, i32 %203)
  %205 = load i64, i64* %14, align 8
  %206 = icmp ne i64 %205, -1
  br i1 %206, label %207, label %218

207:                                              ; preds = %177
  %208 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %209 = call i32 @h2o_iovec_init(i32 %208)
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_36__*, %struct.TYPE_36__** %213, align 8
  %215 = load i64, i64* %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 0
  store i32 %209, i32* %217, align 8
  br label %227

218:                                              ; preds = %177
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** @H2O_TOKEN_ACCEPT_RANGES, align 8
  %225 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %226 = call i32 (i32*, %struct.TYPE_26__*, ...) @h2o_add_header(i32* %220, %struct.TYPE_26__* %223, %struct.TYPE_29__* %224, i8* null, i32 %225)
  br label %227

227:                                              ; preds = %218, %207
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %229 = load %struct.st_compress_encoder_t*, %struct.st_compress_encoder_t** %8, align 8
  %230 = call i32 @H2O_ALIGNOF(%struct.st_compress_encoder_t* byval(%struct.st_compress_encoder_t) align 8 %229)
  %231 = load i32**, i32*** %6, align 8
  %232 = call i64 @h2o_add_ostream(%struct.TYPE_24__* %228, i32 %230, i32 24, i32** %231)
  %233 = inttoptr i64 %232 to i8*
  %234 = bitcast i8* %233 to %struct.st_compress_encoder_t*
  store %struct.st_compress_encoder_t* %234, %struct.st_compress_encoder_t** %8, align 8
  %235 = load i32, i32* @do_send, align 4
  %236 = load %struct.st_compress_encoder_t*, %struct.st_compress_encoder_t** %8, align 8
  %237 = getelementptr inbounds %struct.st_compress_encoder_t, %struct.st_compress_encoder_t* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 8
  %239 = load %struct.st_compress_encoder_t*, %struct.st_compress_encoder_t** %8, align 8
  %240 = getelementptr inbounds %struct.st_compress_encoder_t, %struct.st_compress_encoder_t* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 0
  store i32** %241, i32*** %6, align 8
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %243 = load %struct.st_compress_encoder_t*, %struct.st_compress_encoder_t** %8, align 8
  %244 = getelementptr inbounds %struct.st_compress_encoder_t, %struct.st_compress_encoder_t* %243, i32 0, i32 0
  store %struct.TYPE_25__* %242, %struct.TYPE_25__** %244, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @BUF_SIZE, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %227
  %251 = load i32, i32* @BUF_SIZE, align 4
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %250, %227
  br label %255

255:                                              ; preds = %254, %168, %146, %97, %87, %76, %52, %47, %32, %25
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %257 = load i32**, i32*** %6, align 8
  %258 = call i32 @h2o_setup_next_ostream(%struct.TYPE_24__* %256, i32** %257)
  ret void
}

declare dso_local i64 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_req_fill_mime_attributes(%struct.TYPE_24__*) #1

declare dso_local i32 @h2o_get_compressible_types(i32*) #1

declare dso_local %struct.TYPE_25__* @h2o_compress_gzip_open(i32*, i32) #1

declare dso_local i32 @h2o_set_header_token(i32*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @h2o_add_header(i32*, %struct.TYPE_26__*, ...) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i64 @h2o_add_ostream(%struct.TYPE_24__*, i32, i32, i32**) #1

declare dso_local i32 @H2O_ALIGNOF(%struct.st_compress_encoder_t* byval(%struct.st_compress_encoder_t) align 8) #1

declare dso_local i32 @h2o_setup_next_ostream(%struct.TYPE_24__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
