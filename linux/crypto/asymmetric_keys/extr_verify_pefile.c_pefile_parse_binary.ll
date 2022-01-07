; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_pefile_parse_binary.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_verify_pefile.c_pefile_parse_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pefile_context = type { i64, i64, i64, i64, i32, i64, i32, i64, %struct.section_header* }
%struct.section_header = type { i32 }
%struct.mz_hdr = type { i64, i64 }
%struct.pe_hdr = type { i64, i64 }
%struct.pe32_opt_hdr = type { i32, i64, i64, i32 }
%struct.pe32plus_opt_hdr = type { i64, i64, i32 }
%struct.data_directory = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.data_dirent = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ELIBBAD = common dso_local global i32 0, align 4
@MZ_MAGIC = common dso_local global i64 0, align 8
@PE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown PEOPT magic = %04hx\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"checksum @ %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"header size = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Unsigned PE binary\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"cert = %x @%x [%*ph]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.pefile_context*)* @pefile_parse_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pefile_parse_binary(i8* %0, i32 %1, %struct.pefile_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pefile_context*, align 8
  %8 = alloca %struct.mz_hdr*, align 8
  %9 = alloca %struct.pe_hdr*, align 8
  %10 = alloca %struct.pe32_opt_hdr*, align 8
  %11 = alloca %struct.pe32plus_opt_hdr*, align 8
  %12 = alloca %struct.data_directory*, align 8
  %13 = alloca %struct.data_dirent*, align 8
  %14 = alloca %struct.section_header*, align 8
  %15 = alloca %struct.section_header*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pefile_context* %2, %struct.pefile_context** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.mz_hdr*
  store %struct.mz_hdr* %19, %struct.mz_hdr** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %17, align 8
  %22 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %17, align 8
  %25 = icmp uge i64 16, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %17, align 8
  %28 = sub i64 %27, 16
  %29 = icmp ugt i64 0, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @ELIBBAD, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %357

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.mz_hdr*, %struct.mz_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.mz_hdr, %struct.mz_hdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MZ_MAGIC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ELIBBAD, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %357

43:                                               ; preds = %34
  store i64 16, i64* %16, align 8
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.mz_hdr*, %struct.mz_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.mz_hdr, %struct.mz_hdr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load i64, i64* %17, align 8
  %52 = icmp uge i64 16, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load %struct.mz_hdr*, %struct.mz_hdr** %8, align 8
  %55 = getelementptr inbounds %struct.mz_hdr, %struct.mz_hdr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %17, align 8
  %58 = sub i64 %57, 16
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %50, %44
  %61 = load i32, i32* @ELIBBAD, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %357

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.mz_hdr*, %struct.mz_hdr** %8, align 8
  %67 = getelementptr inbounds %struct.mz_hdr, %struct.mz_hdr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr i8, i8* %65, i64 %68
  %70 = bitcast i8* %69 to %struct.pe_hdr*
  store %struct.pe_hdr* %70, %struct.pe_hdr** %9, align 8
  %71 = load %struct.pe_hdr*, %struct.pe_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.pe_hdr, %struct.pe_hdr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PE_MAGIC, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i32, i32* @ELIBBAD, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %357

79:                                               ; preds = %64
  %80 = load %struct.mz_hdr*, %struct.mz_hdr** %8, align 8
  %81 = getelementptr inbounds %struct.mz_hdr, %struct.mz_hdr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 16
  store i64 %83, i64* %16, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load i64, i64* %16, align 8
  %86 = icmp ult i64 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %17, align 8
  %89 = icmp uge i64 4, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = sub i64 %92, 4
  %94 = icmp ugt i64 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %87, %84
  %96 = load i32, i32* @ELIBBAD, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %357

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98
  %100 = load i8*, i8** %5, align 8
  %101 = load i64, i64* %16, align 8
  %102 = getelementptr i8, i8* %100, i64 %101
  %103 = bitcast i8* %102 to %struct.pe32_opt_hdr*
  store %struct.pe32_opt_hdr* %103, %struct.pe32_opt_hdr** %10, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i64, i64* %16, align 8
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = bitcast i8* %106 to %struct.pe32plus_opt_hdr*
  store %struct.pe32plus_opt_hdr* %107, %struct.pe32plus_opt_hdr** %11, align 8
  %108 = load %struct.pe32_opt_hdr*, %struct.pe32_opt_hdr** %10, align 8
  %109 = getelementptr inbounds %struct.pe32_opt_hdr, %struct.pe32_opt_hdr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %185 [
    i32 129, label %111
    i32 128, label %148
  ]

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %16, align 8
  %114 = icmp ult i64 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* %17, align 8
  %117 = icmp uge i64 32, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %17, align 8
  %121 = sub i64 %120, 32
  %122 = icmp ugt i64 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %115, %112
  %124 = load i32, i32* @ELIBBAD, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %357

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.pe32_opt_hdr*, %struct.pe32_opt_hdr** %10, align 8
  %129 = getelementptr inbounds %struct.pe32_opt_hdr, %struct.pe32_opt_hdr* %128, i32 0, i32 3
  %130 = ptrtoint i32* %129 to i64
  %131 = load i8*, i8** %5, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = sub i64 %130, %132
  %134 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %135 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.pe32_opt_hdr*, %struct.pe32_opt_hdr** %10, align 8
  %137 = getelementptr inbounds %struct.pe32_opt_hdr, %struct.pe32_opt_hdr* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %140 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %16, align 8
  %142 = add i64 %141, 32
  store i64 %142, i64* %16, align 8
  %143 = load %struct.pe32_opt_hdr*, %struct.pe32_opt_hdr** %10, align 8
  %144 = getelementptr inbounds %struct.pe32_opt_hdr, %struct.pe32_opt_hdr* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %147 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  br label %192

148:                                              ; preds = %99
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %16, align 8
  %151 = icmp ult i64 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* %17, align 8
  %154 = icmp uge i64 24, %153
  br i1 %154, label %160, label %155

155:                                              ; preds = %152
  %156 = load i64, i64* %16, align 8
  %157 = load i64, i64* %17, align 8
  %158 = sub i64 %157, 24
  %159 = icmp ugt i64 %156, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %155, %152, %149
  %161 = load i32, i32* @ELIBBAD, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %357

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.pe32plus_opt_hdr*, %struct.pe32plus_opt_hdr** %11, align 8
  %166 = getelementptr inbounds %struct.pe32plus_opt_hdr, %struct.pe32plus_opt_hdr* %165, i32 0, i32 2
  %167 = ptrtoint i32* %166 to i64
  %168 = load i8*, i8** %5, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = sub i64 %167, %169
  %171 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %172 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load %struct.pe32plus_opt_hdr*, %struct.pe32plus_opt_hdr** %11, align 8
  %174 = getelementptr inbounds %struct.pe32plus_opt_hdr, %struct.pe32plus_opt_hdr* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %177 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load i64, i64* %16, align 8
  %179 = add i64 %178, 24
  store i64 %179, i64* %16, align 8
  %180 = load %struct.pe32plus_opt_hdr*, %struct.pe32plus_opt_hdr** %11, align 8
  %181 = getelementptr inbounds %struct.pe32plus_opt_hdr, %struct.pe32plus_opt_hdr* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %184 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %183, i32 0, i32 2
  store i64 %182, i64* %184, align 8
  br label %192

185:                                              ; preds = %99
  %186 = load %struct.pe32_opt_hdr*, %struct.pe32_opt_hdr** %10, align 8
  %187 = getelementptr inbounds %struct.pe32_opt_hdr, %struct.pe32_opt_hdr* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @ELIBBAD, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %357

192:                                              ; preds = %164, %127
  %193 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %194 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %195)
  %197 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %198 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %199)
  %201 = load i64, i64* %16, align 8
  %202 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %203 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp uge i64 %201, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %192
  %207 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %208 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %17, align 8
  %211 = icmp uge i64 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %206, %192
  %213 = load i32, i32* @ELIBBAD, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %4, align 4
  br label %357

215:                                              ; preds = %206
  %216 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %217 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %220 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %16, align 8
  %223 = sub i64 %221, %222
  %224 = udiv i64 %223, 4
  %225 = icmp ugt i64 %218, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %215
  %227 = load i32, i32* @ELIBBAD, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %357

229:                                              ; preds = %215
  %230 = load i8*, i8** %5, align 8
  %231 = load i64, i64* %16, align 8
  %232 = getelementptr i8, i8* %230, i64 %231
  %233 = bitcast i8* %232 to %struct.data_directory*
  store %struct.data_directory* %233, %struct.data_directory** %12, align 8
  %234 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %235 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = mul i64 4, %236
  %238 = load i64, i64* %16, align 8
  %239 = add i64 %238, %237
  store i64 %239, i64* %16, align 8
  %240 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %241 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %240, i32 0, i32 0
  %242 = ptrtoint %struct.TYPE_2__* %241 to i64
  %243 = load i8*, i8** %5, align 8
  %244 = ptrtoint i8* %243 to i64
  %245 = sub i64 %242, %244
  %246 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %247 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %246, i32 0, i32 3
  store i64 %245, i64* %247, align 8
  %248 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %249 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %253 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %252, i32 0, i32 4
  store i32 %251, i32* %253, align 8
  %254 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %255 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %229
  %260 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %261 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %259, %229
  %266 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %267 = load i32, i32* @ENODATA, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %4, align 4
  br label %357

269:                                              ; preds = %259
  br label %270

270:                                              ; preds = %269
  %271 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %272 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %276 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = icmp ult i64 %274, %277
  br i1 %278, label %300, label %279

279:                                              ; preds = %270
  %280 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %281 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = load i64, i64* %17, align 8
  %286 = icmp uge i64 %284, %285
  br i1 %286, label %300, label %287

287:                                              ; preds = %279
  %288 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %289 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %17, align 8
  %293 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %294 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = sub i64 %292, %297
  %299 = icmp ugt i64 %291, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %287, %279, %270
  %301 = load i32, i32* @ELIBBAD, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %4, align 4
  br label %357

303:                                              ; preds = %287
  br label %304

304:                                              ; preds = %303
  %305 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %306 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %310 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %309, i32 0, i32 5
  store i64 %308, i64* %310, align 8
  %311 = load %struct.data_directory*, %struct.data_directory** %12, align 8
  %312 = getelementptr inbounds %struct.data_directory, %struct.data_directory* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %316 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %315, i32 0, i32 6
  store i32 %314, i32* %316, align 8
  %317 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %318 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %321 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %320, i32 0, i32 5
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %324 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = load i8*, i8** %5, align 8
  %327 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %328 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %327, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr i8, i8* %326, i64 %329
  %331 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %319, i64 %322, i32 %325, i8* %330)
  %332 = load %struct.pe_hdr*, %struct.pe_hdr** %9, align 8
  %333 = getelementptr inbounds %struct.pe_hdr, %struct.pe_hdr* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %336 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %335, i32 0, i32 7
  store i64 %334, i64* %336, align 8
  %337 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %338 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %337, i32 0, i32 7
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %341 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* %16, align 8
  %344 = sub i64 %342, %343
  %345 = udiv i64 %344, 4
  %346 = icmp ugt i64 %339, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %304
  %348 = load i32, i32* @ELIBBAD, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %4, align 4
  br label %357

350:                                              ; preds = %304
  %351 = load i8*, i8** %5, align 8
  %352 = load i64, i64* %16, align 8
  %353 = getelementptr i8, i8* %351, i64 %352
  %354 = bitcast i8* %353 to %struct.section_header*
  store %struct.section_header* %354, %struct.section_header** %14, align 8
  %355 = load %struct.pefile_context*, %struct.pefile_context** %7, align 8
  %356 = getelementptr inbounds %struct.pefile_context, %struct.pefile_context* %355, i32 0, i32 8
  store %struct.section_header* %354, %struct.section_header** %356, align 8
  store i32 0, i32* %4, align 4
  br label %357

357:                                              ; preds = %350, %347, %300, %265, %226, %212, %185, %160, %123, %95, %76, %60, %40, %30
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
