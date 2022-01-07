; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_getaddrinfo_common_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil.c_evutil_getaddrinfo_common_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i64, i32, i32 }
%struct.sockaddr_in6 = type { i32, i8*, i8*, %struct.TYPE_4__, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.sockaddr_in = type { i32, i8*, i8*, %struct.TYPE_4__, i8*, i8*, %struct.TYPE_3__ }
%struct.sockaddr = type { i32 }

@EVUTIL_EAI_NONAME = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@EVUTIL_EAI_FAMILY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@EVUTIL_AI_PASSIVE = common dso_local global i32 0, align 4
@EVUTIL_EAI_MEMORY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@EVUTIL_AI_NUMERICHOST = common dso_local global i32 0, align 4
@EVUTIL_EAI_NEED_RESOLVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_getaddrinfo_common_(i8* %0, i8* %1, %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.evutil_addrinfo*, align 8
  %10 = alloca %struct.evutil_addrinfo**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.evutil_addrinfo*, align 8
  %16 = alloca %struct.evutil_addrinfo*, align 8
  %17 = alloca %struct.sockaddr_in6, align 8
  %18 = alloca %struct.sockaddr_in, align 8
  %19 = alloca %struct.sockaddr_in6, align 8
  %20 = alloca %struct.sockaddr_in, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %9, align 8
  store %struct.evutil_addrinfo** %3, %struct.evutil_addrinfo*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @EVUTIL_EAI_NONAME, align 4
  store i32 %27, i32* %6, align 4
  br label %237

28:                                               ; preds = %23, %5
  %29 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %30 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PF_UNSPEC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %36 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PF_INET, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %42 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PF_INET6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @EVUTIL_EAI_FAMILY, align 4
  store i32 %47, i32* %6, align 4
  br label %237

48:                                               ; preds = %40, %34, %28
  %49 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %50 = call i32 @evutil_getaddrinfo_infer_protocols(%struct.evutil_addrinfo* %49)
  %51 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %52 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @evutil_unparse_protoname(i32 %53)
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %61 = call i32 @evutil_parse_servname(i8* %58, i8* %59, %struct.evutil_addrinfo* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @EVUTIL_EAI_NONAME, align 4
  store i32 %65, i32* %6, align 4
  br label %237

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i8*, i8** %7, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %149

70:                                               ; preds = %67
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %15, align 8
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %16, align 8
  %71 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %72 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PF_INET, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %70
  %77 = call i32 @memset(%struct.sockaddr_in6* %17, i32 0, i32 56)
  %78 = load i8*, i8** @AF_INET6, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 5
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i8* @htons(i32 %80)
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 4
  store i8* %81, i8** %82, align 8
  %83 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %84 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @EVUTIL_AI_PASSIVE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %95

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 15
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %90, %89
  %96 = bitcast %struct.sockaddr_in6* %17 to %struct.sockaddr*
  %97 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %98 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %96, i32 56, %struct.evutil_addrinfo* %97)
  store %struct.evutil_addrinfo* %98, %struct.evutil_addrinfo** %16, align 8
  %99 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %100 = icmp ne %struct.evutil_addrinfo* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %102, i32* %6, align 4
  br label %237

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %70
  %105 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %106 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PF_INET6, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %144

110:                                              ; preds = %104
  %111 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr_in6*
  %112 = call i32 @memset(%struct.sockaddr_in6* %111, i32 0, i32 56)
  %113 = load i8*, i8** @AF_INET, align 8
  %114 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  store i8* %113, i8** %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i8* @htons(i32 %115)
  %117 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i8* %116, i8** %117, align 8
  %118 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %119 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @EVUTIL_AI_PASSIVE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %129

125:                                              ; preds = %110
  %126 = call i32 @htonl(i32 2130706433)
  %127 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %124
  %130 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  %131 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %132 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %130, i32 56, %struct.evutil_addrinfo* %131)
  store %struct.evutil_addrinfo* %132, %struct.evutil_addrinfo** %15, align 8
  %133 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %15, align 8
  %134 = icmp ne %struct.evutil_addrinfo* %133, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %129
  %136 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %137 = icmp ne %struct.evutil_addrinfo* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %140 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %142, i32* %6, align 4
  br label %237

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143, %104
  %145 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %15, align 8
  %146 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %147 = call %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo* %145, %struct.evutil_addrinfo* %146)
  %148 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  store %struct.evutil_addrinfo* %147, %struct.evutil_addrinfo** %148, align 8
  store i32 0, i32* %6, align 4
  br label %237

149:                                              ; preds = %67
  %150 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %151 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PF_INET6, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %157 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @PF_UNSPEC, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %187

161:                                              ; preds = %155, %149
  %162 = call i32 @memset(%struct.sockaddr_in6* %19, i32 0, i32 56)
  %163 = load i8*, i8** @AF_INET6, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 6
  %166 = call i32 @evutil_inet_pton_scope(i8* %163, i8* %164, %struct.TYPE_3__* %165, i32* %13)
  %167 = icmp eq i32 1, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %161
  %169 = load i8*, i8** @AF_INET6, align 8
  %170 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 5
  store i8* %169, i8** %170, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i8* @htons(i32 %171)
  %173 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 4
  store i8* %172, i8** %173, align 8
  %174 = load i32, i32* %13, align 4
  %175 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 0
  store i32 %174, i32* %175, align 8
  %176 = bitcast %struct.sockaddr_in6* %19 to %struct.sockaddr*
  %177 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %178 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %176, i32 56, %struct.evutil_addrinfo* %177)
  %179 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  store %struct.evutil_addrinfo* %178, %struct.evutil_addrinfo** %179, align 8
  %180 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  %181 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %180, align 8
  %182 = icmp ne %struct.evutil_addrinfo* %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %168
  %184 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %184, i32* %6, align 4
  br label %237

185:                                              ; preds = %168
  store i32 0, i32* %6, align 4
  br label %237

186:                                              ; preds = %161
  br label %187

187:                                              ; preds = %186, %155
  %188 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %189 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PF_INET, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %195 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @PF_UNSPEC, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %224

199:                                              ; preds = %193, %187
  %200 = bitcast %struct.sockaddr_in* %20 to %struct.sockaddr_in6*
  %201 = call i32 @memset(%struct.sockaddr_in6* %200, i32 0, i32 56)
  %202 = load i8*, i8** @AF_INET, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 3
  %205 = call i32 @evutil_inet_pton(i8* %202, i8* %203, %struct.TYPE_4__* %204)
  %206 = icmp eq i32 1, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %199
  %208 = load i8*, i8** @AF_INET, align 8
  %209 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 2
  store i8* %208, i8** %209, align 8
  %210 = load i32, i32* %12, align 4
  %211 = call i8* @htons(i32 %210)
  %212 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 1
  store i8* %211, i8** %212, align 8
  %213 = bitcast %struct.sockaddr_in* %20 to %struct.sockaddr*
  %214 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %215 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr* %213, i32 56, %struct.evutil_addrinfo* %214)
  %216 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  store %struct.evutil_addrinfo* %215, %struct.evutil_addrinfo** %216, align 8
  %217 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %10, align 8
  %218 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %217, align 8
  %219 = icmp ne %struct.evutil_addrinfo* %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %207
  %221 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  store i32 %221, i32* %6, align 4
  br label %237

222:                                              ; preds = %207
  store i32 0, i32* %6, align 4
  br label %237

223:                                              ; preds = %199
  br label %224

224:                                              ; preds = %223, %193
  %225 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %226 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @EVUTIL_AI_NUMERICHOST, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = load i32, i32* @EVUTIL_EAI_NONAME, align 4
  store i32 %232, i32* %6, align 4
  br label %237

233:                                              ; preds = %224
  %234 = load i32, i32* %12, align 4
  %235 = load i32*, i32** %11, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* @EVUTIL_EAI_NEED_RESOLVE, align 4
  store i32 %236, i32* %6, align 4
  br label %237

237:                                              ; preds = %233, %231, %222, %220, %185, %183, %144, %141, %101, %64, %46, %26
  %238 = load i32, i32* %6, align 4
  ret i32 %238
}

declare dso_local i32 @evutil_getaddrinfo_infer_protocols(%struct.evutil_addrinfo*) #1

declare dso_local i8* @evutil_unparse_protoname(i32) #1

declare dso_local i32 @evutil_parse_servname(i8*, i8*, %struct.evutil_addrinfo*) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.sockaddr*, i32, %struct.evutil_addrinfo*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #1

declare dso_local %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo*, %struct.evutil_addrinfo*) #1

declare dso_local i32 @evutil_inet_pton_scope(i8*, i8*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @evutil_inet_pton(i8*, i8*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
