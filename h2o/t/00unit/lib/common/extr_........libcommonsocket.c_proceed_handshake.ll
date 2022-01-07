; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_proceed_handshake.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_proceed_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_34__*, %struct.TYPE_37__ }
%struct.TYPE_34__ = type { %struct.TYPE_41__, %struct.TYPE_40__, i32*, %struct.TYPE_35__, i32*, i32 }
%struct.TYPE_41__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_36__, %struct.TYPE_39__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_37__ = type { i32* }
%struct.TYPE_31__ = type { i64, i32, i32* }
%struct.TYPE_42__ = type { i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"picotls handshake error\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unexpected async resumption state\00", align 1
@SSL_ERROR_WANT_READ = common dso_local global i64 0, align 8
@X509_V_OK = common dso_local global i64 0, align 8
@h2o_socket_error_ssl_handshake = common dso_local global i8* null, align 8
@h2o_socket_error_ssl_cert_name_mismatch = common dso_local global i8* null, align 8
@h2o_socket_error_ssl_cert_invalid = common dso_local global i8* null, align 8
@h2o_socket_error_ssl_no_cert = common dso_local global i8* null, align 8
@ptls_default_skip_tracing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, i8*)* @proceed_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proceed_handshake(%struct.TYPE_30__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_31__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_42__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_31__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = bitcast %struct.TYPE_31__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %470

21:                                               ; preds = %2
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %163

28:                                               ; preds = %21
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = call i32 @ptls_buffer_init(%struct.TYPE_42__* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %28
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ptls_handshake(i32* %49, %struct.TYPE_42__* %8, i32 %57, i64* %7, i32* null)
  store i32 %58, i32* %6, align 4
  br label %116

59:                                               ; preds = %28
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32* @h2o_socket_ssl_get_picotls_context(i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %115

68:                                               ; preds = %59
  %69 = load i32*, i32** %9, align 8
  %70 = call i32* @ptls_new(i32* %69, i32 1)
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @h2o_fatal(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call %struct.TYPE_30__** @ptls_get_data_ptr(i32* %77)
  store %struct.TYPE_30__* %76, %struct.TYPE_30__** %78, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ptls_handshake(i32* %79, %struct.TYPE_42__* %8, i32 %87, i64* %7, i32* null)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %94, label %111

94:                                               ; preds = %91, %75
  %95 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %8, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i32*, i32** %10, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 4
  store i32* %99, i32** %103, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %109, i32 0, i32 0
  store i32 133, i32* %110, align 4
  br label %114

111:                                              ; preds = %94, %91
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @ptls_free(i32* %112)
  br label %114

114:                                              ; preds = %111, %98
  br label %115

115:                                              ; preds = %114, %59
  br label %116

116:                                              ; preds = %115, %44
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_34__*, %struct.TYPE_34__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %159

123:                                              ; preds = %116
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %127, i32 0, i32 0
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @h2o_buffer_consume(%struct.TYPE_33__** %128, i64 %129)
  %131 = load i32, i32* %6, align 4
  switch i32 %131, label %155 [
    i32 0, label %132
    i32 128, label %132
  ]

132:                                              ; preds = %123, %123
  %133 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %8, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %138 = call i32 @h2o_socket_read_stop(%struct.TYPE_30__* %137)
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %8, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %8, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @write_ssl_bytes(%struct.TYPE_30__* %139, i32 %141, i64 %143)
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, void (%struct.TYPE_30__*, i8*)* @on_handshake_complete, void (%struct.TYPE_30__*, i8*)* @proceed_handshake
  %150 = call i32 @flush_pending_ssl(%struct.TYPE_30__* %145, void (%struct.TYPE_30__*, i8*)* %149)
  br label %154

151:                                              ; preds = %132
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %153 = call i32 @h2o_socket_read_start(%struct.TYPE_30__* %152, void (%struct.TYPE_30__*, i8*)* @proceed_handshake)
  br label %154

154:                                              ; preds = %151, %136
  br label %157

155:                                              ; preds = %123
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  call void @on_handshake_complete(%struct.TYPE_30__* %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %154
  %158 = call i32 @ptls_buffer_dispose(%struct.TYPE_42__* %8)
  br label %475

159:                                              ; preds = %116
  %160 = call i32 @ptls_buffer_dispose(%struct.TYPE_42__* %8)
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %162 = call i32 @create_ossl(%struct.TYPE_30__* %161)
  br label %163

163:                                              ; preds = %159, %21
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %242

170:                                              ; preds = %163
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = call i64 @SSL_is_server(i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %242

178:                                              ; preds = %170
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 132
  br i1 %187, label %188, label %242

188:                                              ; preds = %178
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ule i64 %196, 1024
  br i1 %197, label %198, label %233

198:                                              ; preds = %188
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @alloca(i32 %207)
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_34__*, %struct.TYPE_34__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  call void @h2o_iovec_init(%struct.TYPE_31__* sret %11, i32 %208, i32 %217)
  %218 = bitcast %struct.TYPE_31__* %5 to i8*
  %219 = bitcast %struct.TYPE_31__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %218, i8* align 8 %219, i64 24, i1 false)
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_34__*, %struct.TYPE_34__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @memcpy(i32 %221, i32 %229, i64 %231)
  br label %241

233:                                              ; preds = %188
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %239, i32 0, i32 0
  store i32 133, i32* %240, align 4
  br label %241

241:                                              ; preds = %233, %198
  br label %242

242:                                              ; preds = %241, %178, %170, %163
  br label %243

243:                                              ; preds = %465, %242
  %244 = call i32 (...) @ERR_clear_error()
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_34__*, %struct.TYPE_34__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = call i64 @SSL_is_server(i32* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %342

252:                                              ; preds = %243
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @SSL_accept(i32* %257)
  store i32 %258, i32* %6, align 4
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  switch i32 %266, label %339 [
    i32 133, label %267
    i32 132, label %268
    i32 131, label %276
  ]

267:                                              ; preds = %252
  br label %341

268:                                              ; preds = %252
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %274, i32 0, i32 0
  store i32 133, i32* %275, align 4
  br label %341

276:                                              ; preds = %252
  %277 = load i32, i32* %6, align 4
  %278 = icmp slt i32 %277, 0
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_34__*, %struct.TYPE_34__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @SSL_free(i32* %285)
  %287 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %288 = call i32 @create_ossl(%struct.TYPE_30__* %287)
  %289 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %290, align 8
  %292 = call i32 @clear_output_buffer(%struct.TYPE_34__* %291)
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_34__*, %struct.TYPE_34__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_34__*, %struct.TYPE_34__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_33__*, %struct.TYPE_33__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @h2o_buffer_consume(%struct.TYPE_33__** %297, i64 %305)
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @h2o_buffer_reserve(%struct.TYPE_33__** %311, i64 %313)
  %315 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_34__*, %struct.TYPE_34__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_33__*, %struct.TYPE_33__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = call i32 @memcpy(i32 %322, i32 %324, i64 %326)
  %328 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %5, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %335, i32 0, i32 0
  store i64 %329, i64* %336, align 8
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %338 = call i32 @h2o_socket_read_stop(%struct.TYPE_30__* %337)
  br label %475

339:                                              ; preds = %252
  %340 = call i32 @h2o_fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %268, %267
  br label %349

342:                                              ; preds = %243
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_34__*, %struct.TYPE_34__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %345, i32 0, i32 2
  %347 = load i32*, i32** %346, align 8
  %348 = call i32 @SSL_connect(i32* %347)
  store i32 %348, i32* %6, align 4
  br label %349

349:                                              ; preds = %342, %341
  %350 = load i32, i32* %6, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %365, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* %6, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %395

355:                                              ; preds = %352
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_34__*, %struct.TYPE_34__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %358, i32 0, i32 2
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %6, align 4
  %362 = call i64 @SSL_get_error(i32* %360, i32 %361)
  %363 = load i64, i64* @SSL_ERROR_WANT_READ, align 8
  %364 = icmp ne i64 %362, %363
  br i1 %364, label %365, label %395

365:                                              ; preds = %355, %349
  %366 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_34__*, %struct.TYPE_34__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %368, i32 0, i32 2
  %370 = load i32*, i32** %369, align 8
  %371 = call i64 @SSL_get_verify_result(i32* %370)
  store i64 %371, i64* %12, align 8
  %372 = load i64, i64* %12, align 8
  %373 = load i64, i64* @X509_V_OK, align 8
  %374 = icmp ne i64 %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %365
  %376 = load i64, i64* %12, align 8
  %377 = call i8* @X509_verify_cert_error_string(i64 %376)
  store i8* %377, i8** %4, align 8
  br label %394

378:                                              ; preds = %365
  %379 = load i8*, i8** @h2o_socket_error_ssl_handshake, align 8
  store i8* %379, i8** %4, align 8
  %380 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_34__*, %struct.TYPE_34__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %393

388:                                              ; preds = %378
  %389 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %390 = call i32 @h2o_socket_read_stop(%struct.TYPE_30__* %389)
  %391 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %392 = call i32 @flush_pending_ssl(%struct.TYPE_30__* %391, void (%struct.TYPE_30__*, i8*)* @on_handshake_failure_ossl111)
  br label %475

393:                                              ; preds = %378
  br label %394

394:                                              ; preds = %393, %375
  br label %470

395:                                              ; preds = %355, %352
  %396 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %396, i32 0, i32 1
  %398 = load %struct.TYPE_34__*, %struct.TYPE_34__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %413

404:                                              ; preds = %395
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %406 = call i32 @h2o_socket_read_stop(%struct.TYPE_30__* %405)
  %407 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %408 = load i32, i32* %6, align 4
  %409 = icmp eq i32 %408, 1
  %410 = zext i1 %409 to i64
  %411 = select i1 %409, void (%struct.TYPE_30__*, i8*)* @on_handshake_complete, void (%struct.TYPE_30__*, i8*)* @proceed_handshake
  %412 = call i32 @flush_pending_ssl(%struct.TYPE_30__* %407, void (%struct.TYPE_30__*, i8*)* %411)
  br label %469

413:                                              ; preds = %395
  %414 = load i32, i32* %6, align 4
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %416, label %455

416:                                              ; preds = %413
  %417 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %417, i32 0, i32 1
  %419 = load %struct.TYPE_34__*, %struct.TYPE_34__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %419, i32 0, i32 2
  %421 = load i32*, i32** %420, align 8
  %422 = call i64 @SSL_is_server(i32* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %454, label %424

424:                                              ; preds = %416
  %425 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_34__*, %struct.TYPE_34__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %427, i32 0, i32 2
  %429 = load i32*, i32** %428, align 8
  %430 = call i32* @SSL_get_peer_certificate(i32* %429)
  store i32* %430, i32** %13, align 8
  %431 = load i32*, i32** %13, align 8
  %432 = icmp ne i32* %431, null
  br i1 %432, label %433, label %451

433:                                              ; preds = %424
  %434 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_34__*, %struct.TYPE_34__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load i32*, i32** %13, align 8
  %442 = call i32 @validate_hostname(i32 %440, i32* %441)
  switch i32 %442, label %446 [
    i32 130, label %443
    i32 129, label %444
  ]

443:                                              ; preds = %433
  br label %448

444:                                              ; preds = %433
  %445 = load i8*, i8** @h2o_socket_error_ssl_cert_name_mismatch, align 8
  store i8* %445, i8** %4, align 8
  br label %448

446:                                              ; preds = %433
  %447 = load i8*, i8** @h2o_socket_error_ssl_cert_invalid, align 8
  store i8* %447, i8** %4, align 8
  br label %448

448:                                              ; preds = %446, %444, %443
  %449 = load i32*, i32** %13, align 8
  %450 = call i32 @X509_free(i32* %449)
  br label %453

451:                                              ; preds = %424
  %452 = load i8*, i8** @h2o_socket_error_ssl_no_cert, align 8
  store i8* %452, i8** %4, align 8
  br label %453

453:                                              ; preds = %451, %448
  br label %454

454:                                              ; preds = %453, %416
  br label %470

455:                                              ; preds = %413
  %456 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %456, i32 0, i32 1
  %458 = load %struct.TYPE_34__*, %struct.TYPE_34__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_33__*, %struct.TYPE_33__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %455
  br label %243

466:                                              ; preds = %455
  %467 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %468 = call i32 @h2o_socket_read_start(%struct.TYPE_30__* %467, void (%struct.TYPE_30__*, i8*)* @proceed_handshake)
  br label %469

469:                                              ; preds = %466, %404
  br label %475

470:                                              ; preds = %454, %394, %20
  %471 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %472 = call i32 @h2o_socket_read_stop(%struct.TYPE_30__* %471)
  %473 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %474 = load i8*, i8** %4, align 8
  call void @on_handshake_complete(%struct.TYPE_30__* %473, i8* %474)
  br label %475

475:                                              ; preds = %470, %469, %388, %276, %157
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_42__*, i8*, i32) #2

declare dso_local i32 @ptls_handshake(i32*, %struct.TYPE_42__*, i32, i64*, i32*) #2

declare dso_local i32* @h2o_socket_ssl_get_picotls_context(i32) #2

declare dso_local i32* @ptls_new(i32*, i32) #2

declare dso_local i32 @h2o_fatal(i8*) #2

declare dso_local %struct.TYPE_30__** @ptls_get_data_ptr(i32*) #2

declare dso_local i32 @ptls_free(i32*) #2

declare dso_local i32 @h2o_buffer_consume(%struct.TYPE_33__**, i64) #2

declare dso_local i32 @h2o_socket_read_stop(%struct.TYPE_30__*) #2

declare dso_local i32 @write_ssl_bytes(%struct.TYPE_30__*, i32, i64) #2

declare dso_local i32 @flush_pending_ssl(%struct.TYPE_30__*, void (%struct.TYPE_30__*, i8*)*) #2

declare dso_local void @on_handshake_complete(%struct.TYPE_30__*, i8*) #2

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_30__*, void (%struct.TYPE_30__*, i8*)*) #2

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_42__*) #2

declare dso_local i32 @create_ossl(%struct.TYPE_30__*) #2

declare dso_local i64 @SSL_is_server(i32*) #2

declare dso_local void @h2o_iovec_init(%struct.TYPE_31__* sret, i32, i32) #2

declare dso_local i32 @alloca(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32, i64) #2

declare dso_local i32 @ERR_clear_error(...) #2

declare dso_local i32 @SSL_accept(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @SSL_free(i32*) #2

declare dso_local i32 @clear_output_buffer(%struct.TYPE_34__*) #2

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_33__**, i64) #2

declare dso_local i32 @SSL_connect(i32*) #2

declare dso_local i64 @SSL_get_error(i32*, i32) #2

declare dso_local i64 @SSL_get_verify_result(i32*) #2

declare dso_local i8* @X509_verify_cert_error_string(i64) #2

declare dso_local void @on_handshake_failure_ossl111(%struct.TYPE_30__*, i8*) #2

declare dso_local i32* @SSL_get_peer_certificate(i32*) #2

declare dso_local i32 @validate_hostname(i32, i32*) #2

declare dso_local i32 @X509_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
