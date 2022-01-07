; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_sock_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_sock_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i64 }
%struct.rpc_server = type { i64, i64, i64, i64, i64 }
%struct.pollfd = type { i64, i32 }

@write = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@rpc_sock_write.t = internal global [3 x %struct.iovec] zeroinitializer, align 16
@RPC_OUT_BUF_SIZE = common dso_local global i64 0, align 8
@send = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, double, i8*, i32, i32)* @rpc_sock_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_sock_write(%struct.rpc_server* %0, double %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_server*, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pollfd, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rpc_server* %0, %struct.rpc_server** %7, align 8
  store double %1, double* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @write, align 4
  %20 = call i32 @ADD_CNT(i32 %19)
  %21 = load i32, i32* @write, align 4
  %22 = call i32 @START_TIMER(i32 %21)
  %23 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %24 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @write, align 4
  %29 = call i32 @END_TIMER(i32 %28)
  store i32 -1, i32* %6, align 4
  br label %300

30:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %31 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %32 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @POLLOUT, align 4
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %38 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %30
  %42 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %43 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RPC_OUT_BUF_SIZE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %49 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %52 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  store i32 1, i32* %15, align 4
  %56 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %57 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 0), align 16
  %59 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %60 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %63 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  store i64 %65, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 1), align 8
  br label %89

66:                                               ; preds = %47, %41
  store i32 0, i32* %15, align 4
  %67 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %68 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 0), align 16
  %70 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %71 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RPC_OUT_BUF_SIZE, align 8
  %74 = add nsw i64 %72, %73
  %75 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %76 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  store i64 %78, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 1), align 8
  %79 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %80 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 0), align 16
  %82 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %83 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %86 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  store i64 %88, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 1), align 8
  br label %89

89:                                               ; preds = %66, %55
  br label %91

90:                                               ; preds = %30
  store i32 2, i32* %15, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  store i32 3, i32* %16, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = ptrtoint i8* %98 to i64
  store i64 %99, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 2, i32 0), align 16
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 2, i32 1), align 8
  br label %103

102:                                              ; preds = %94, %91
  store i32 2, i32* %16, align 4
  br label %103

103:                                              ; preds = %102, %97
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @write, align 4
  %110 = call i32 @END_TIMER(i32 %109)
  store i32 0, i32* %6, align 4
  br label %300

111:                                              ; preds = %103
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %294, %111
  %113 = load i32, i32* %17, align 4
  %114 = call i64 @poll(%struct.pollfd* %14, i32 1, i32 %113)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %13, align 4
  br label %282

120:                                              ; preds = %116
  %121 = load i32, i32* @write, align 4
  %122 = call i32 @END_TIMER(i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %6, align 4
  br label %300

124:                                              ; preds = %112
  store i32 0, i32* %13, align 4
  %125 = load i32, i32* @send, align 4
  %126 = call i32 @ADD_CNT(i32 %125)
  %127 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %128 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.iovec, %struct.iovec* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0), i64 %131
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %133, %134
  %136 = call i32 @writev(i64 %129, %struct.iovec* %132, i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %124
  %140 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %141 = load i32, i32* @errno, align 4
  %142 = call i32 @strerror(i32 %141)
  %143 = load i32, i32* @errno, align 4
  %144 = call i32 @rpc_server_seterror(%struct.rpc_server* %140, i32 %142, i32 %143)
  %145 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %146 = call i32 @rpc_server_failure(%struct.rpc_server* %145)
  %147 = load i32, i32* @write, align 4
  %148 = call i32 @END_TIMER(i32 %147)
  store i32 -1, i32* %6, align 4
  br label %300

149:                                              ; preds = %124
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %203

155:                                              ; preds = %149
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %203

158:                                              ; preds = %155
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 1), align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %158
  %164 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 1), align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = sub nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %18, align 4
  %169 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %170 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %173 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 1), align 8
  %175 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %176 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %202

181:                                              ; preds = %158
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 1), align 8
  %185 = sub nsw i64 %184, %183
  store i64 %185, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 1), align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 0), align 16
  %189 = add nsw i64 %188, %187
  store i64 %189, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 0, i32 0), align 16
  %190 = load i32, i32* %18, align 4
  %191 = sext i32 %190 to i64
  %192 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %193 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %199 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %200, %197
  store i64 %201, i64* %199, align 8
  store i32 0, i32* %18, align 4
  br label %202

202:                                              ; preds = %181, %163
  br label %203

203:                                              ; preds = %202, %155, %149
  %204 = load i32, i32* %18, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %253

206:                                              ; preds = %203
  %207 = load i32, i32* %15, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %253

209:                                              ; preds = %206
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 1), align 8
  %213 = icmp sge i64 %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %209
  %215 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 1), align 8
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = sub nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %18, align 4
  %220 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %221 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %224 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %223, i32 0, i32 3
  store i64 %222, i64* %224, align 8
  %225 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %226 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %225, i32 0, i32 2
  store i64 %222, i64* %226, align 8
  %227 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %228 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %227, i32 0, i32 1
  store i64 0, i64* %228, align 8
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %252

231:                                              ; preds = %209
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 1), align 8
  %235 = sub nsw i64 %234, %233
  store i64 %235, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 1), align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 0), align 16
  %239 = add nsw i64 %238, %237
  store i64 %239, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 1, i32 0), align 16
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %243 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, %241
  store i64 %245, i64* %243, align 8
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = load %struct.rpc_server*, %struct.rpc_server** %7, align 8
  %249 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %250, %247
  store i64 %251, i64* %249, align 8
  store i32 0, i32* %18, align 4
  br label %252

252:                                              ; preds = %231, %214
  br label %253

253:                                              ; preds = %252, %206, %203
  %254 = load i32, i32* %18, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %281

256:                                              ; preds = %253
  %257 = load i32, i32* %15, align 4
  %258 = icmp eq i32 %257, 2
  br i1 %258, label %259, label %281

259:                                              ; preds = %256
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 2, i32 1), align 8
  %263 = icmp sge i64 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = load i32, i32* %18, align 4
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 2, i32 1), align 8
  %268 = icmp eq i64 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @assert(i32 %269)
  br label %296

271:                                              ; preds = %259
  %272 = load i32, i32* %18, align 4
  %273 = sext i32 %272 to i64
  %274 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 2, i32 1), align 8
  %275 = sub nsw i64 %274, %273
  store i64 %275, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 2, i32 1), align 8
  %276 = load i32, i32* %18, align 4
  %277 = sext i32 %276 to i64
  %278 = load i64, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 2, i32 0), align 16
  %279 = add nsw i64 %278, %277
  store i64 %279, i64* getelementptr inbounds ([3 x %struct.iovec], [3 x %struct.iovec]* @rpc_sock_write.t, i64 0, i64 2, i32 0), align 16
  br label %280

280:                                              ; preds = %271
  br label %281

281:                                              ; preds = %280, %256, %253
  br label %282

282:                                              ; preds = %281, %119
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* %11, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %294

286:                                              ; preds = %282
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* %16, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = load double, double* %8, align 8
  %292 = call i32 @get_ms_timeout(double %291)
  store i32 %292, i32* %17, align 4
  %293 = icmp ne i32 %292, 0
  br label %294

294:                                              ; preds = %290, %286, %282
  %295 = phi i1 [ false, %286 ], [ false, %282 ], [ %293, %290 ]
  br i1 %295, label %112, label %296

296:                                              ; preds = %294, %264
  %297 = load i32, i32* @write, align 4
  %298 = call i32 @END_TIMER(i32 %297)
  %299 = load i32, i32* %12, align 4
  store i32 %299, i32* %6, align 4
  br label %300

300:                                              ; preds = %296, %139, %120, %108, %27
  %301 = load i32, i32* %6, align 4
  ret i32 %301
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @END_TIMER(i32) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @writev(i64, %struct.iovec*, i32) #1

declare dso_local i32 @rpc_server_seterror(%struct.rpc_server*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @rpc_server_failure(%struct.rpc_server*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_ms_timeout(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
