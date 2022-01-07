; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_recv.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i32, i64* }
%struct.TYPE_10__ = type { i32, i64, i64, i32*, i64*, i8*, i8*, i64, i64, i32 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@YRMCDS_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@HEADER_SIZE = common dso_local global i64 0, align 8
@YRMCDS_OK = common dso_local global i64 0, align 8
@YRMCDS_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @yrmcds_cnt_recv(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = icmp eq %struct.TYPE_11__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %2
  %16 = load i64, i64* @YRMCDS_BAD_ARGUMENT, align 8
  store i64 %16, i64* %3, align 8
  br label %243

17:                                               ; preds = %12
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %23, i64* %3, align 8
  br label %243

24:                                               ; preds = %17
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %29
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @memmove(i64* %42, i64* %49, i64 %50)
  br label %52

52:                                               ; preds = %39, %29
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %24
  br label %59

59:                                               ; preds = %73, %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HEADER_SIZE, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = call i64 @recv_data(%struct.TYPE_11__* %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @YRMCDS_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %7, align 8
  store i64 %72, i64* %3, align 8
  br label %243

73:                                               ; preds = %65
  br label %59

74:                                               ; preds = %59
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = icmp ne i32 %80, 145
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %85, i64* %3, align 8
  br label %243

86:                                               ; preds = %74
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 4
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 4
  %106 = call i8* @ntoh32(i64* %105)
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 9
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 8
  %116 = call i32 @memcpy(i32* %111, i64* %115, i32 4)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  store i64* null, i64** %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 5
  store i8* null, i8** %120, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 6
  store i8* null, i8** %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 8
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 7
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  store i32* null, i32** %128, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %161

133:                                              ; preds = %86
  br label %134

134:                                              ; preds = %152, %133
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HEADER_SIZE, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = icmp ult i64 %137, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %134
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = call i64 @recv_data(%struct.TYPE_11__* %145)
  store i64 %146, i64* %8, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* @YRMCDS_OK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i64, i64* %8, align 8
  store i64 %151, i64* %3, align 8
  br label %243

152:                                              ; preds = %144
  br label %134

153:                                              ; preds = %134
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 4
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* @HEADER_SIZE, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 4
  store i64* %158, i64** %160, align 8
  br label %161

161:                                              ; preds = %153, %86
  %162 = load i64, i64* @HEADER_SIZE, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %162, %165
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @YRMCDS_STATUS_OK, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %161
  %175 = load i64, i64* @YRMCDS_OK, align 8
  store i64 %175, i64* %3, align 8
  br label %243

176:                                              ; preds = %161
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  switch i32 %179, label %240 [
    i32 129, label %180
    i32 131, label %196
    i32 128, label %212
    i32 130, label %228
  ]

180:                                              ; preds = %176
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %183, 4
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %188, i64* %3, align 8
  br label %243

189:                                              ; preds = %180
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 4
  %192 = load i64*, i64** %191, align 8
  %193 = call i8* @ntoh32(i64* %192)
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 6
  store i8* %193, i8** %195, align 8
  br label %241

196:                                              ; preds = %176
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %199, 4
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  %204 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %204, i64* %3, align 8
  br label %243

205:                                              ; preds = %196
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 4
  %208 = load i64*, i64** %207, align 8
  %209 = call i8* @ntoh32(i64* %208)
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 5
  store i8* %209, i8** %211, align 8
  br label %241

212:                                              ; preds = %176
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %215 = call i64 @parse_statistics(%struct.TYPE_11__* %213, %struct.TYPE_10__* %214)
  store i64 %215, i64* %9, align 8
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* @YRMCDS_OK, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %212
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load i64, i64* %9, align 8
  store i64 %222, i64* %3, align 8
  br label %243

223:                                              ; preds = %212
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 3
  store i32* %225, i32** %227, align 8
  br label %241

228:                                              ; preds = %176
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %231 = call i64 @parse_dump_record(%struct.TYPE_11__* %229, %struct.TYPE_10__* %230)
  store i64 %231, i64* %9, align 8
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* @YRMCDS_OK, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %228
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  store i32 1, i32* %237, align 8
  %238 = load i64, i64* %9, align 8
  store i64 %238, i64* %3, align 8
  br label %243

239:                                              ; preds = %228
  br label %241

240:                                              ; preds = %176
  br label %241

241:                                              ; preds = %240, %239, %223, %205, %189
  %242 = load i64, i64* @YRMCDS_OK, align 8
  store i64 %242, i64* %3, align 8
  br label %243

243:                                              ; preds = %241, %235, %219, %201, %185, %174, %150, %82, %71, %22, %15
  %244 = load i64, i64* %3, align 8
  ret i64 %244
}

declare dso_local i32 @memmove(i64*, i64*, i64) #1

declare dso_local i64 @recv_data(%struct.TYPE_11__*) #1

declare dso_local i8* @ntoh32(i64*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i64 @parse_statistics(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @parse_dump_record(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
