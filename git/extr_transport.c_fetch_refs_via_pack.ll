; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_fetch_refs_via_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_fetch_refs_via_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32, i32, %struct.ref*, i32, i32, i32, i32, %struct.git_transport_data* }
%struct.ref = type { i32 }
%struct.git_transport_data = type { i32, %struct.TYPE_2__, i64, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fetch_pack_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"unknown protocol version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i32, %struct.ref**)* @fetch_refs_via_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_refs_via_pack(%struct.transport* %0, i32 %1, %struct.ref** %2) #0 {
  %4 = alloca %struct.transport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.git_transport_data*, align 8
  %9 = alloca %struct.ref*, align 8
  %10 = alloca %struct.fetch_pack_args, align 4
  %11 = alloca %struct.ref*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ref** %2, %struct.ref*** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.transport*, %struct.transport** %4, align 8
  %15 = getelementptr inbounds %struct.transport, %struct.transport* %14, i32 0, i32 7
  %16 = load %struct.git_transport_data*, %struct.git_transport_data** %15, align 8
  store %struct.git_transport_data* %16, %struct.git_transport_data** %8, align 8
  store %struct.ref* null, %struct.ref** %9, align 8
  store %struct.ref* null, %struct.ref** %11, align 8
  %17 = call i32 @memset(%struct.fetch_pack_args* %10, i32 0, i32 92)
  %18 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %19 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 15
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 22
  store i32 %21, i32* %22, align 4
  %23 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %24 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 21
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %30 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 20
  store i32 %32, i32* %33, align 4
  %34 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %35 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 19
  store i32 %37, i32* %38, align 4
  %39 = load %struct.transport*, %struct.transport** %4, align 8
  %40 = getelementptr inbounds %struct.transport, %struct.transport* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 1
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.transport*, %struct.transport** %4, align 8
  %46 = getelementptr inbounds %struct.transport, %struct.transport* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.transport*, %struct.transport** %4, align 8
  %52 = getelementptr inbounds %struct.transport, %struct.transport* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %59 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 18
  store i32 %61, i32* %62, align 4
  %63 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %64 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 17
  store i32 %66, i32* %67, align 4
  %68 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %69 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 16
  store i32 %71, i32* %72, align 4
  %73 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %74 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 15
  store i32 %76, i32* %77, align 4
  %78 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %79 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 14
  store i32 %81, i32* %82, align 4
  %83 = load %struct.transport*, %struct.transport** %4, align 8
  %84 = getelementptr inbounds %struct.transport, %struct.transport* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 13
  store i32 %85, i32* %86, align 4
  %87 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %88 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 12
  store i32 %90, i32* %91, align 4
  %92 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %93 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 11
  store i32 %95, i32* %96, align 4
  %97 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %98 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 10
  store i32 %100, i32* %101, align 4
  %102 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %103 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 9
  store i32 %105, i32* %106, align 4
  %107 = load %struct.transport*, %struct.transport** %4, align 8
  %108 = getelementptr inbounds %struct.transport, %struct.transport* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 8
  store i32 %109, i32* %110, align 4
  %111 = load %struct.transport*, %struct.transport** %4, align 8
  %112 = getelementptr inbounds %struct.transport, %struct.transport* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 7
  store i32 %113, i32* %114, align 4
  %115 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %116 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 6
  store i32 %118, i32* %119, align 4
  %120 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %121 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %147, label %124

124:                                              ; preds = %3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %140, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = load %struct.ref**, %struct.ref*** %6, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ref*, %struct.ref** %130, i64 %132
  %134 = load %struct.ref*, %struct.ref** %133, align 8
  %135 = getelementptr inbounds %struct.ref, %struct.ref* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  store i32 1, i32* %13, align 4
  br label %143

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %125

143:                                              ; preds = %138, %125
  %144 = load %struct.transport*, %struct.transport** %4, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call %struct.ref* @handshake(%struct.transport* %144, i32 0, i32* null, i32 %145)
  store %struct.ref* %146, %struct.ref** %11, align 8
  br label %147

147:                                              ; preds = %143, %3
  %148 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %149 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %203 [
    i32 128, label %151
    i32 129, label %175
    i32 130, label %175
    i32 131, label %201
  ]

151:                                              ; preds = %147
  %152 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %153 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.ref*, %struct.ref** %11, align 8
  %156 = icmp ne %struct.ref* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load %struct.ref*, %struct.ref** %11, align 8
  br label %163

159:                                              ; preds = %151
  %160 = load %struct.transport*, %struct.transport** %4, align 8
  %161 = getelementptr inbounds %struct.transport, %struct.transport* %160, i32 0, i32 2
  %162 = load %struct.ref*, %struct.ref** %161, align 8
  br label %163

163:                                              ; preds = %159, %157
  %164 = phi %struct.ref* [ %158, %157 ], [ %162, %159 ]
  %165 = load %struct.ref**, %struct.ref*** %6, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %168 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %167, i32 0, i32 5
  %169 = load %struct.transport*, %struct.transport** %4, align 8
  %170 = getelementptr inbounds %struct.transport, %struct.transport* %169, i32 0, i32 1
  %171 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %172 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call %struct.ref* @fetch_pack(%struct.fetch_pack_args* %10, i32* %154, %struct.ref* %164, %struct.ref** %165, i32 %166, i32* %168, i32* %170, i32 %173)
  store %struct.ref* %174, %struct.ref** %9, align 8
  br label %203

175:                                              ; preds = %147, %147
  %176 = load %struct.transport*, %struct.transport** %4, align 8
  %177 = call i32 @die_if_server_options(%struct.transport* %176)
  %178 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %179 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.ref*, %struct.ref** %11, align 8
  %182 = icmp ne %struct.ref* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load %struct.ref*, %struct.ref** %11, align 8
  br label %189

185:                                              ; preds = %175
  %186 = load %struct.transport*, %struct.transport** %4, align 8
  %187 = getelementptr inbounds %struct.transport, %struct.transport* %186, i32 0, i32 2
  %188 = load %struct.ref*, %struct.ref** %187, align 8
  br label %189

189:                                              ; preds = %185, %183
  %190 = phi %struct.ref* [ %184, %183 ], [ %188, %185 ]
  %191 = load %struct.ref**, %struct.ref*** %6, align 8
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %194 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %193, i32 0, i32 5
  %195 = load %struct.transport*, %struct.transport** %4, align 8
  %196 = getelementptr inbounds %struct.transport, %struct.transport* %195, i32 0, i32 1
  %197 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %198 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call %struct.ref* @fetch_pack(%struct.fetch_pack_args* %10, i32* %180, %struct.ref* %190, %struct.ref** %191, i32 %192, i32* %194, i32* %196, i32 %199)
  store %struct.ref* %200, %struct.ref** %9, align 8
  br label %203

201:                                              ; preds = %147
  %202 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %147, %189, %163
  %204 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %205 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @close(i32 %208)
  %210 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %211 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @close(i32 %214)
  %216 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %217 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = call i64 @finish_connect(i32* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %203
  store i32 -1, i32* %7, align 4
  br label %222

222:                                              ; preds = %221, %203
  %223 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %224 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %223, i32 0, i32 3
  store i32* null, i32** %224, align 8
  %225 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %226 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  %227 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %230 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = getelementptr inbounds %struct.fetch_pack_args, %struct.fetch_pack_args* %10, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %235 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 4
  %237 = load %struct.ref*, %struct.ref** %9, align 8
  %238 = icmp eq %struct.ref* %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %222
  store i32 -1, i32* %7, align 4
  br label %240

240:                                              ; preds = %239, %222
  %241 = load %struct.ref**, %struct.ref*** %6, align 8
  %242 = load i32, i32* %5, align 4
  %243 = call i64 @report_unmatched_refs(%struct.ref** %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  store i32 -1, i32* %7, align 4
  br label %246

246:                                              ; preds = %245, %240
  %247 = load %struct.ref*, %struct.ref** %11, align 8
  %248 = call i32 @free_refs(%struct.ref* %247)
  %249 = load %struct.ref*, %struct.ref** %9, align 8
  %250 = call i32 @free_refs(%struct.ref* %249)
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

declare dso_local i32 @memset(%struct.fetch_pack_args*, i32, i32) #1

declare dso_local %struct.ref* @handshake(%struct.transport*, i32, i32*, i32) #1

declare dso_local %struct.ref* @fetch_pack(%struct.fetch_pack_args*, i32*, %struct.ref*, %struct.ref**, i32, i32*, i32*, i32) #1

declare dso_local i32 @die_if_server_options(%struct.transport*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @finish_connect(i32*) #1

declare dso_local i64 @report_unmatched_refs(%struct.ref**, i32) #1

declare dso_local i32 @free_refs(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
