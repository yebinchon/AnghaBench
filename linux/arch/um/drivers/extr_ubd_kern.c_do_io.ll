; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_do_io.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_kern.c_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_thread_req = type { i32, i32, i8*, i8*, i32*, i32, i64*, i64, i32 }

@REQ_OP_FLUSH = common dso_local global i32 0, align 4
@BLK_STS_NOTSUPP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_thread_req*)* @do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_io(%struct.io_thread_req* %0) #0 {
  %2 = alloca %struct.io_thread_req*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.io_thread_req* %0, %struct.io_thread_req** %2, align 8
  store i8* null, i8** %3, align 8
  %11 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %12 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @req_op(i32 %13)
  %15 = load i32, i32* @REQ_OP_FLUSH, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %19 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @os_sync_file(i32 %22)
  %24 = sub nsw i32 0, %23
  %25 = call i8* @map_error(i32 %24)
  %26 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %27 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  br label %222

28:                                               ; preds = %1
  %29 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %30 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %33 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %213, %28
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %39 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %38, i32 0, i32 8
  %40 = bitcast i32* %39 to i8*
  %41 = call i32 @ubd_test_bit(i32 %37, i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %57, %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %50 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %49, i32 0, i32 8
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @ubd_test_bit(i32 %48, i8* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %52, %53
  br label %55

55:                                               ; preds = %47, %43
  %56 = phi i1 [ false, %43 ], [ %54, %47 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %43

60:                                               ; preds = %55
  %61 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %62 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %65 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %64, i32 0, i32 6
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %63, %70
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %74 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %71, %77
  store i64 %78, i64* %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %83 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %4, align 8
  %87 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %88 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %60
  %92 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %93 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %97 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %94, i64 %100
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %91, %60
  %103 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %104 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @req_op(i32 %105)
  switch i32 %106, label %206 [
    i32 130, label %107
    i32 129, label %163
    i32 131, label %186
    i32 128, label %186
  ]

107:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %145, %107
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8* %112, i8** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %4, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %4, align 8
  %117 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %118 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %3, align 8
  %125 = load i64, i64* %4, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @os_pread_file(i32 %123, i8* %124, i64 %125, i64 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %108
  %131 = load i32, i32* %5, align 4
  %132 = sub nsw i32 0, %131
  %133 = call i8* @map_error(i32 %132)
  %134 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %135 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  br label %222

136:                                              ; preds = %108
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %4, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %142, %137
  %146 = phi i1 [ false, %137 ], [ %144, %142 ]
  br i1 %146, label %108, label %147

147:                                              ; preds = %145
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %4, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load i8*, i8** %3, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i64, i64* %4, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = sub i64 %157, %159
  %161 = call i32 @memset(i8* %156, i32 0, i64 %160)
  br label %162

162:                                              ; preds = %152, %147
  br label %211

163:                                              ; preds = %102
  %164 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %165 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %3, align 8
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @os_pwrite_file(i32 %170, i8* %171, i64 %172, i64 %173)
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %4, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %163
  %180 = load i32, i32* %5, align 4
  %181 = sub nsw i32 0, %180
  %182 = call i8* @map_error(i32 %181)
  %183 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %184 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  br label %222

185:                                              ; preds = %163
  br label %211

186:                                              ; preds = %102, %102
  %187 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %188 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* %4, align 8
  %196 = call i32 @os_falloc_punch(i32 %193, i64 %194, i64 %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %186
  %200 = load i32, i32* %5, align 4
  %201 = sub nsw i32 0, %200
  %202 = call i8* @map_error(i32 %201)
  %203 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %204 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  br label %222

205:                                              ; preds = %186
  br label %211

206:                                              ; preds = %102
  %207 = call i32 @WARN_ON_ONCE(i32 1)
  %208 = load i8*, i8** @BLK_STS_NOTSUPP, align 8
  %209 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %210 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %209, i32 0, i32 3
  store i8* %208, i8** %210, align 8
  br label %222

211:                                              ; preds = %205, %185, %162
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %211
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %36, label %217

217:                                              ; preds = %213
  %218 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %219 = call i8* @update_bitmap(%struct.io_thread_req* %218)
  %220 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %221 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %220, i32 0, i32 3
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %217, %206, %199, %179, %130, %17
  ret void
}

declare dso_local i32 @req_op(i32) #1

declare dso_local i8* @map_error(i32) #1

declare dso_local i32 @os_sync_file(i32) #1

declare dso_local i32 @ubd_test_bit(i32, i8*) #1

declare dso_local i32 @os_pread_file(i32, i8*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @os_pwrite_file(i32, i8*, i64, i64) #1

declare dso_local i32 @os_falloc_punch(i32, i64, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @update_bitmap(%struct.io_thread_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
