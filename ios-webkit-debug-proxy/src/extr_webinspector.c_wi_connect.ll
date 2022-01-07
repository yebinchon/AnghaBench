; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_webinspector.c_wi_connect.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_webinspector.c_wi_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.timeval = type { i32, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No device found, is it plugged in?\0A\00", align 1
@LOCKDOWN_E_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ios_webkit_debug_proxy\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Could not connect to lockdownd, error code %d. Exiting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"UniqueDeviceID\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DeviceName\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ProductVersion\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"com.apple.webinspector\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Could not start com.apple.webinspector!\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"idevice_connect failed!\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"ssl connection failed!\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Unable to get connection file descriptor.\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"Could not set socket to non-blocking\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Could not set socket receive timeout\00", align 1
@FIONBIO = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wi_connect(i8* %0, i8** %1, i8** %2, i32* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.timeval, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  store i32* null, i32** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 -1, i32* %19, align 4
  store i32* null, i32** %20, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @idevice_new(i32** %14, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %218

33:                                               ; preds = %6
  %34 = load i32, i32* @LOCKDOWN_E_SUCCESS, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @lockdownd_client_new_with_handshake(i32* %35, i32** %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %21, align 4
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %21, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %218

42:                                               ; preds = %33
  %43 = load i8**, i8*** %8, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @lockdownd_get_value(i32* %46, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32** %15)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %15, align 8
  %51 = load i8**, i8*** %8, align 8
  %52 = call i32 @plist_get_string_val(i32* %50, i8** %51)
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @plist_free(i32* %53)
  store i32* null, i32** %15, align 8
  br label %55

55:                                               ; preds = %49, %45, %42
  %56 = load i8**, i8*** %9, align 8
  %57 = icmp ne i8** %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @lockdownd_get_value(i32* %59, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32** %15)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load i32*, i32** %15, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = call i32 @plist_get_string_val(i32* %63, i8** %64)
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @plist_free(i32* %66)
  store i32* null, i32** %15, align 8
  br label %68

68:                                               ; preds = %62, %58, %55
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %110

71:                                               ; preds = %68
  %72 = load i32*, i32** %17, align 8
  %73 = call i32 @lockdownd_get_value(i32* %72, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32** %15)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %110, label %75

75:                                               ; preds = %71
  %76 = bitcast [3 x i32]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %76, i8 0, i64 12, i1 false)
  store i8* null, i8** %23, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @plist_get_string_val(i32* %77, i8** %23)
  %79 = load i8*, i8** %23, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %103

81:                                               ; preds = %75
  %82 = load i8*, i8** %23, align 8
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %86 = call i32 @sscanf(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %83, i32* %84, i32* %85)
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %103

88:                                               ; preds = %81
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 255
  %92 = shl i32 %91, 16
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 255
  %96 = shl i32 %95, 8
  %97 = or i32 %92, %96
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 255
  %101 = or i32 %97, %100
  %102 = load i32*, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  br label %105

103:                                              ; preds = %81, %75
  %104 = load i32*, i32** %10, align 8
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %88
  %106 = load i8*, i8** %23, align 8
  %107 = call i32 @free(i8* %106)
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @plist_free(i32* %108)
  br label %110

110:                                              ; preds = %105, %71, %68
  %111 = load i32*, i32** %17, align 8
  %112 = call i64 @lockdownd_start_service(i32* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_3__** %16)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114, %110
  %120 = call i32 @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %218

121:                                              ; preds = %114
  %122 = load i32*, i32** %14, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @idevice_connect(i32* %122, i32 %125, i8** %18)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %218

130:                                              ; preds = %121
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load i8**, i8*** %11, align 8
  %137 = icmp ne i8** %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i8*, i8** %18, align 8
  %140 = call i64 @idevice_connection_enable_ssl(i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %18, align 8
  %144 = call i64 @idevice_connection_get_ssl_session(i8* %143, i32** %20)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142, %138, %135
  %147 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %218

148:                                              ; preds = %142
  %149 = load i32*, i32** %20, align 8
  %150 = bitcast i32* %149 to i8*
  %151 = load i8**, i8*** %11, align 8
  store i8* %150, i8** %151, align 8
  br label %152

152:                                              ; preds = %148, %130
  %153 = load i32*, i32** %17, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32*, i32** %17, align 8
  %157 = call i32 @lockdownd_client_free(i32* %156)
  store i32* null, i32** %17, align 8
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i8*, i8** %18, align 8
  %160 = call i64 @idevice_connection_get_fd(i8* %159, i32* %19)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = call i32 @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  br label %218

164:                                              ; preds = %158
  %165 = load i32, i32* %12, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %164
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @F_GETFL, align 4
  %170 = call i32 (i32, i32, ...) @fcntl(i32 %168, i32 %169)
  store i32 %170, i32* %24, align 4
  %171 = load i32, i32* %24, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %167
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* @F_SETFL, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* @O_NONBLOCK, align 4
  %178 = or i32 %176, %177
  %179 = call i32 (i32, i32, ...) @fcntl(i32 %174, i32 %175, i32 %178)
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %173, %167
  %182 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %218

183:                                              ; preds = %173
  br label %216

184:                                              ; preds = %164
  %185 = load i32, i32* %12, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32, i32* %12, align 4
  br label %190

189:                                              ; preds = %184
  br label %190

190:                                              ; preds = %189, %187
  %191 = phi i32 [ %188, %187 ], [ 5000, %189 ]
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %25, align 8
  %193 = load i64, i64* %25, align 8
  %194 = sdiv i64 %193, 1000
  %195 = inttoptr i64 %194 to i8*
  %196 = ptrtoint i8* %195 to i32
  %197 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  store i32 %196, i32* %197, align 8
  %198 = load i64, i64* %25, align 8
  %199 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %200, 1000
  %202 = sext i32 %201 to i64
  %203 = sub nsw i64 %198, %202
  %204 = mul nsw i64 %203, 1000
  %205 = inttoptr i64 %204 to i8*
  %206 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 1
  store i8* %205, i8** %206, align 8
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* @SOL_SOCKET, align 4
  %209 = load i32, i32* @SO_RCVTIMEO, align 4
  %210 = bitcast %struct.timeval* %26 to i8*
  %211 = call i64 @setsockopt(i32 %207, i32 %208, i32 %209, i8* %210, i32 16)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %190
  %214 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %218

215:                                              ; preds = %190
  br label %216

216:                                              ; preds = %215, %183
  %217 = load i32, i32* %19, align 4
  store i32 %217, i32* %13, align 4
  br label %218

218:                                              ; preds = %216, %213, %181, %162, %146, %128, %119, %38, %30
  %219 = load i32, i32* %13, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = load i32, i32* %19, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* %19, align 4
  %226 = call i32 @close(i32 %225)
  br label %227

227:                                              ; preds = %224, %221, %218
  %228 = load i8*, i8** %18, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i32*, i32** %17, align 8
  %231 = call i32 @lockdownd_client_free(i32* %230)
  %232 = load i32*, i32** %14, align 8
  %233 = call i32 @idevice_free(i32* %232)
  %234 = load i32, i32* %13, align 4
  ret i32 %234
}

declare dso_local i64 @idevice_new(i32**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @lockdownd_client_new_with_handshake(i32*, i32**, i8*) #1

declare dso_local i32 @lockdownd_get_value(i32*, i32*, i8*, i32**) #1

declare dso_local i32 @plist_get_string_val(i32*, i8**) #1

declare dso_local i32 @plist_free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @lockdownd_start_service(i32*, i8*, %struct.TYPE_3__**) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @idevice_connect(i32*, i32, i8**) #1

declare dso_local i64 @idevice_connection_enable_ssl(i8*) #1

declare dso_local i64 @idevice_connection_get_ssl_session(i8*, i32**) #1

declare dso_local i32 @lockdownd_client_free(i32*) #1

declare dso_local i64 @idevice_connection_get_fd(i8*, i32*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @idevice_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
