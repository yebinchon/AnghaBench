; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_packet_parse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_packet_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32, i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i8*, i32, i8* }
%struct.TYPE_10__ = type { i8*, i8* }

@tftp_undef = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"Format error: opcode expected, but packet is too short\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Format error: filename expected, but end of packet found.\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Format error: mode expected, but end of packet found.\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Format error: block expected, but packet is too short\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Format error: error code expected, but packet is too short\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"Format error: error message expected, but end of packet found.\00", align 1
@tftp_illegal_operation = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Format error: packet contains extra data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tftp_packet_parse(%struct.TYPE_15__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = call i32 @memset(%struct.TYPE_15__* %10, i32 0, i32 88)
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** @tftp_undef, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  store i32 -1, i32* %4, align 4
  br label %218

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @get_ushort(i8* %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %204 [
    i32 129, label %33
    i32 128, label %33
    i32 132, label %105
    i32 133, label %135
    i32 131, label %155
    i32 130, label %199
  ]

33:                                               ; preds = %20, %20
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @tftp_fetch_string(i8* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i8*, i8** @tftp_undef, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  store i32 -1, i32* %4, align 4
  br label %218

45:                                               ; preds = %33
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @tftp_fetch_string(i8* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %45
  %64 = load i8*, i8** @tftp_undef, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8** %68, align 8
  store i32 -1, i32* %4, align 4
  br label %218

69:                                               ; preds = %45
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i8* %70, i8** %74, align 8
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %90, %69
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = call signext i8 @tolower(i8 signext %84)
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load i32, i32* %9, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @tftp_parse_options(%struct.TYPE_15__* %101, i8* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %218

105:                                              ; preds = %20
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i8*, i8** @tftp_undef, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8** %113, align 8
  store i32 -1, i32* %4, align 4
  br label %218

114:                                              ; preds = %105
  %115 = load i8*, i8** %6, align 8
  %116 = call i8* @get_ushort(i8* %115)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  store i8* %116, i8** %120, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  store i8* %122, i8** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, 2
  store i32 %124, i32* %7, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i8* %125, i8** %129, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 8
  store i32 0, i32* %4, align 4
  br label %218

135:                                              ; preds = %20
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i8*, i8** @tftp_undef, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8** %143, align 8
  store i32 -1, i32* %4, align 4
  br label %218

144:                                              ; preds = %135
  %145 = load i8*, i8** %6, align 8
  %146 = call i8* @get_ushort(i8* %145)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i8* %146, i8** %150, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 2
  store i8* %152, i8** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sub nsw i32 %153, 2
  store i32 %154, i32* %7, align 4
  br label %208

155:                                              ; preds = %20
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 2
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i8*, i8** @tftp_undef, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8** %163, align 8
  store i32 -1, i32* %4, align 4
  br label %218

164:                                              ; preds = %155
  %165 = load i8*, i8** %6, align 8
  %166 = call i8* @get_ushort(i8* %165)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store i8* %166, i8** %170, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  store i8* %172, i8** %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %173, 2
  store i32 %174, i32* %7, align 4
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @tftp_fetch_string(i8* %175, i32 %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %164
  %181 = load i8*, i8** @tftp_undef, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i8** %185, align 8
  store i32 -1, i32* %4, align 4
  br label %218

186:                                              ; preds = %164
  %187 = load i8*, i8** %6, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store i8* %187, i8** %191, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i8*, i8** %6, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8* %195, i8** %6, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %7, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %7, align 4
  br label %208

199:                                              ; preds = %20
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @tftp_parse_options(%struct.TYPE_15__* %200, i8* %201, i32 %202)
  store i32 %203, i32* %4, align 4
  br label %218

204:                                              ; preds = %20
  %205 = load i8*, i8** @tftp_illegal_operation, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  store i32 -1, i32* %4, align 4
  br label %218

208:                                              ; preds = %186, %144
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load i8*, i8** @tftp_undef, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %216, align 8
  store i32 -1, i32* %4, align 4
  br label %218

217:                                              ; preds = %208
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %211, %204, %199, %180, %158, %138, %114, %108, %93, %63, %39, %14
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i8* @get_ushort(i8*) #1

declare dso_local i32 @tftp_fetch_string(i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @tftp_parse_options(%struct.TYPE_15__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
