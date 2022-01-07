; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_send_internal_skspcl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_send_internal_skspcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32 }
%struct.skd_special_context = type { i8*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32, %struct.fit_sg_descriptor* }
%struct.fit_sg_descriptor = type { i32 }
%struct.TYPE_4__ = type { %struct.skd_scsi_request* }
%struct.skd_scsi_request = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@SKD_REQ_STATE_IDLE = common dso_local global i64 0, align 8
@SKD_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@SKD_N_READ_CAP_BYTES = common dso_local global i32 0, align 4
@WR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Don't know what to send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*, %struct.skd_special_context*, i32)* @skd_send_internal_skspcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_send_internal_skspcl(%struct.skd_device* %0, %struct.skd_special_context* %1, i32 %2) #0 {
  %4 = alloca %struct.skd_device*, align 8
  %5 = alloca %struct.skd_special_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fit_sg_descriptor*, align 8
  %8 = alloca %struct.skd_scsi_request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %4, align 8
  store %struct.skd_special_context* %1, %struct.skd_special_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %12 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %13, align 8
  %15 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %14, i64 0
  store %struct.fit_sg_descriptor* %15, %struct.fit_sg_descriptor** %7, align 8
  %16 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %17 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %20 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SKD_REQ_STATE_IDLE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %206

26:                                               ; preds = %3
  %27 = load i64, i64* @SKD_REQ_STATE_BUSY, align 8
  %28 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %29 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %32 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %34, align 8
  %36 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %35, i64 0
  store %struct.skd_scsi_request* %36, %struct.skd_scsi_request** %8, align 8
  %37 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %38 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %42 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %45 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @memset(i32* %46, i32 0, i32 8)
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %200 [
    i32 129, label %49
    i32 131, label %59
    i32 133, label %74
    i32 130, label %100
    i32 128, label %110
    i32 132, label %160
  ]

49:                                               ; preds = %26
  %50 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %51 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 129, i32* %53, align 4
  %54 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %55 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %57 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8* null, i8** %58, align 8
  br label %202

59:                                               ; preds = %26
  %60 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %61 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 131, i32* %63, align 4
  %64 = load i32, i32* @SKD_N_READ_CAP_BYTES, align 4
  %65 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %66 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %68 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %72 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  br label %202

74:                                               ; preds = %26
  %75 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %76 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 133, i32* %78, align 4
  %79 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %80 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %84 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 128, i32* %86, align 4
  %87 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %88 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  store i32 16, i32* %90, align 4
  %91 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %92 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %91, i32 0, i32 0
  store i32 16, i32* %92, align 4
  %93 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %94 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_be32(i32 %95)
  %97 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %98 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  br label %202

100:                                              ; preds = %26
  %101 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %102 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 130, i32* %104, align 4
  %105 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %106 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %108 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i8* null, i8** %109, align 8
  br label %202

110:                                              ; preds = %26
  %111 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %112 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 128, i32* %114, align 4
  %115 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %116 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 2, i32* %118, align 4
  %119 = load i32, i32* @WR_BUF_SIZE, align 4
  %120 = and i32 %119, 65280
  %121 = ashr i32 %120, 8
  %122 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %123 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* @WR_BUF_SIZE, align 4
  %127 = and i32 %126, 255
  %128 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %129 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 8
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @WR_BUF_SIZE, align 4
  %133 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %134 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %136 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @cpu_to_be32(i32 %137)
  %139 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %140 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %156, %110
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %145 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %142
  %149 = load i32, i32* %10, align 4
  %150 = and i32 %149, 255
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 %151, i8* %155, align 1
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %142

159:                                              ; preds = %142
  br label %202

160:                                              ; preds = %26
  %161 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %162 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 132, i32* %164, align 4
  %165 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %166 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 2, i32* %168, align 4
  %169 = load i32, i32* @WR_BUF_SIZE, align 4
  %170 = and i32 %169, 65280
  %171 = ashr i32 %170, 8
  %172 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %173 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 7
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* @WR_BUF_SIZE, align 4
  %177 = and i32 %176, 255
  %178 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %179 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 8
  store i32 %177, i32* %181, align 4
  %182 = load i32, i32* @WR_BUF_SIZE, align 4
  %183 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %184 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %186 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @cpu_to_be32(i32 %187)
  %189 = load %struct.skd_scsi_request*, %struct.skd_scsi_request** %8, align 8
  %190 = getelementptr inbounds %struct.skd_scsi_request, %struct.skd_scsi_request* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  store i8* %188, i8** %191, align 8
  %192 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %193 = getelementptr inbounds %struct.skd_special_context, %struct.skd_special_context* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = bitcast i8* %194 to i32*
  %196 = load %struct.fit_sg_descriptor*, %struct.fit_sg_descriptor** %7, align 8
  %197 = getelementptr inbounds %struct.fit_sg_descriptor, %struct.fit_sg_descriptor* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @memset(i32* %195, i32 0, i32 %198)
  br label %202

200:                                              ; preds = %26
  %201 = call i32 @SKD_ASSERT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %206

202:                                              ; preds = %160, %159, %100, %74, %59, %49
  %203 = load %struct.skd_device*, %struct.skd_device** %4, align 8
  %204 = load %struct.skd_special_context*, %struct.skd_special_context** %5, align 8
  %205 = call i32 @skd_send_special_fitmsg(%struct.skd_device* %203, %struct.skd_special_context* %204)
  br label %206

206:                                              ; preds = %202, %200, %25
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @SKD_ASSERT(i8*) #1

declare dso_local i32 @skd_send_special_fitmsg(%struct.skd_device*, %struct.skd_special_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
