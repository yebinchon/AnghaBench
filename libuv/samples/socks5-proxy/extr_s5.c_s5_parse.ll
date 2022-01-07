; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_s5.c_s5_parse.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_s5.c_s5_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32 }

@s5_bad_version = common dso_local global i32 0, align 4
@S5_AUTH_NONE = common dso_local global i32 0, align 4
@S5_AUTH_GSSAPI = common dso_local global i32 0, align 4
@S5_AUTH_PASSWD = common dso_local global i32 0, align 4
@s5_auth_select = common dso_local global i32 0, align 4
@s5_auth_verify = common dso_local global i32 0, align 4
@s5_cmd_tcp_connect = common dso_local global i32 0, align 4
@s5_cmd_udp_assoc = common dso_local global i32 0, align 4
@s5_bad_cmd = common dso_local global i32 0, align 4
@s5_atyp_ipv4 = common dso_local global i32 0, align 4
@s5_atyp_host = common dso_local global i32 0, align 4
@s5_atyp_ipv6 = common dso_local global i32 0, align 4
@s5_bad_atyp = common dso_local global i32 0, align 4
@s5_exec_cmd = common dso_local global i32 0, align 4
@s5_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5_parse(%struct.TYPE_3__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %323, %3
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %324

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %321 [
    i32 128, label %30
    i32 137, label %38
    i32 138, label %46
    i32 140, label %90
    i32 142, label %98
    i32 141, label %106
    i32 144, label %148
    i32 143, label %156
    i32 129, label %199
    i32 134, label %207
    i32 130, label %222
    i32 136, label %225
    i32 135, label %256
    i32 133, label %262
    i32 132, label %304
    i32 131, label %311
    i32 139, label %320
  ]

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 5
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @s5_bad_version, align 4
  store i32 %34, i32* %7, align 4
  br label %326

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 137, i32* %37, align 8
  br label %323

38:                                               ; preds = %20
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 138, i32* %45, align 8
  br label %323

46:                                               ; preds = %20
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %74 [
    i32 0, label %56
    i32 1, label %62
    i32 2, label %68
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* @S5_AUTH_NONE, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %74

62:                                               ; preds = %54
  %63 = load i32, i32* @S5_AUTH_GSSAPI, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %74

68:                                               ; preds = %54
  %69 = load i32, i32* @S5_AUTH_PASSWD, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %54, %68, %62, %56
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %46
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @s5_auth_select, align 4
  store i32 %88, i32* %7, align 4
  br label %326

89:                                               ; preds = %79
  br label %323

90:                                               ; preds = %20
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @s5_bad_version, align 4
  store i32 %94, i32* %7, align 4
  br label %326

95:                                               ; preds = %90
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 142, i32* %97, align 8
  br label %323

98:                                               ; preds = %20
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 141, i32* %105, align 8
  br label %323

106:                                              ; preds = %20
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  store i32 %115, i32* %123, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %114, %106
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %128
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  store i32 0, i32* %144, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  store i32 144, i32* %146, align 8
  br label %147

147:                                              ; preds = %136, %128
  br label %323

148:                                              ; preds = %20
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i32 143, i32* %155, align 8
  br label %323

156:                                              ; preds = %20
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %156
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  store i32 %165, i32* %173, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %164, %156
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %181, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %178
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  store i32 0, i32* %194, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  store i32 129, i32* %196, align 8
  %197 = load i32, i32* @s5_auth_verify, align 4
  store i32 %197, i32* %7, align 4
  br label %326

198:                                              ; preds = %178
  br label %323

199:                                              ; preds = %20
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 5
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i32, i32* @s5_bad_version, align 4
  store i32 %203, i32* %7, align 4
  br label %326

204:                                              ; preds = %199
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  store i32 134, i32* %206, align 8
  br label %323

207:                                              ; preds = %20
  %208 = load i32, i32* %9, align 4
  switch i32 %208, label %217 [
    i32 1, label %209
    i32 3, label %213
  ]

209:                                              ; preds = %207
  %210 = load i32, i32* @s5_cmd_tcp_connect, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 10
  store i32 %210, i32* %212, align 8
  br label %219

213:                                              ; preds = %207
  %214 = load i32, i32* @s5_cmd_udp_assoc, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 10
  store i32 %214, i32* %216, align 8
  br label %219

217:                                              ; preds = %207
  %218 = load i32, i32* @s5_bad_cmd, align 4
  store i32 %218, i32* %7, align 4
  br label %326

219:                                              ; preds = %213, %209
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  store i32 130, i32* %221, align 8
  br label %323

222:                                              ; preds = %20
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  store i32 136, i32* %224, align 8
  br label %323

225:                                              ; preds = %20
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  store i32 0, i32* %227, align 4
  %228 = load i32, i32* %9, align 4
  switch i32 %228, label %253 [
    i32 1, label %229
    i32 3, label %237
    i32 4, label %245
  ]

229:                                              ; preds = %225
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  store i32 133, i32* %231, align 8
  %232 = load i32, i32* @s5_atyp_ipv4, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 9
  store i32 %232, i32* %234, align 4
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 2
  store i32 4, i32* %236, align 8
  br label %255

237:                                              ; preds = %225
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  store i32 135, i32* %239, align 8
  %240 = load i32, i32* @s5_atyp_host, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 9
  store i32 %240, i32* %242, align 4
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 2
  store i32 0, i32* %244, align 8
  br label %255

245:                                              ; preds = %225
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  store i32 133, i32* %247, align 8
  %248 = load i32, i32* @s5_atyp_ipv6, align 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 9
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  store i32 16, i32* %252, align 8
  br label %255

253:                                              ; preds = %225
  %254 = load i32, i32* @s5_bad_atyp, align 4
  store i32 %254, i32* %7, align 4
  br label %326

255:                                              ; preds = %245, %237, %229
  br label %323

256:                                              ; preds = %20
  %257 = load i32, i32* %9, align 4
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  store i32 133, i32* %261, align 8
  br label %323

262:                                              ; preds = %20
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %284

270:                                              ; preds = %262
  %271 = load i32, i32* %9, align 4
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 7
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %274, i64 %278
  store i32 %271, i32* %279, align 4
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %270, %262
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = icmp eq i32 %287, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %284
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 7
  %295 = load i32*, i32** %294, align 8
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %295, i64 %299
  store i32 0, i32* %300, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 0
  store i32 132, i32* %302, align 8
  br label %303

303:                                              ; preds = %292, %284
  br label %323

304:                                              ; preds = %20
  %305 = load i32, i32* %9, align 4
  %306 = shl i32 %305, 8
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 8
  store i32 %306, i32* %308, align 8
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 0
  store i32 131, i32* %310, align 8
  br label %323

311:                                              ; preds = %20
  %312 = load i32, i32* %9, align 4
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = or i32 %315, %312
  store i32 %316, i32* %314, align 8
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  store i32 139, i32* %318, align 8
  %319 = load i32, i32* @s5_exec_cmd, align 4
  store i32 %319, i32* %7, align 4
  br label %326

320:                                              ; preds = %20
  br label %323

321:                                              ; preds = %20
  %322 = call i32 (...) @abort() #2
  unreachable

323:                                              ; preds = %320, %304, %303, %256, %255, %222, %219, %204, %198, %148, %147, %98, %95, %89, %38, %35
  br label %16

324:                                              ; preds = %16
  %325 = load i32, i32* @s5_ok, align 4
  store i32 %325, i32* %7, align 4
  br label %326

326:                                              ; preds = %324, %311, %253, %217, %202, %186, %93, %87, %33
  %327 = load i32*, i32** %8, align 8
  %328 = load i64, i64* %10, align 8
  %329 = getelementptr inbounds i32, i32* %327, i64 %328
  %330 = load i32**, i32*** %5, align 8
  store i32* %329, i32** %330, align 8
  %331 = load i64, i64* %11, align 8
  %332 = load i64, i64* %10, align 8
  %333 = sub i64 %331, %332
  %334 = load i64*, i64** %6, align 8
  store i64 %333, i64* %334, align 8
  %335 = load i32, i32* %7, align 4
  ret i32 %335
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
