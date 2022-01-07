; ModuleID = '/home/carl/AnghaBench/hiredis/extr_async.c___redisGetSubscribeCallback.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_async.c___redisGetSubscribeCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, i32*, i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64, i8*, i64, i32 }
%struct.TYPE_18__ = type { i64 }

@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@REDIS_REPLY_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"subscribe\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"unsubscribe\00", align 1
@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@REDIS_SUBSCRIBED = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_18__*)* @__redisGetSubscribeCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__redisGetSubscribeCallback(%struct.TYPE_19__* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %177

21:                                               ; preds = %3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 2
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %30, i64 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REDIS_REPLY_STRING, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %41, i64 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = call signext i8 @tolower(i8 signext %48)
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 112
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %21
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %8, align 8
  br label %66

61:                                               ; preds = %21
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %8, align 8
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %69, i64 1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REDIS_REPLY_STRING, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %80, i64 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %87, i64 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sdsnewlen(i8* %84, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32* @dictFind(i32* %93, i32 %94)
  store i32* %95, i32** %10, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %174

98:                                               ; preds = %66
  %99 = load i32*, i32** %10, align 8
  %100 = call %struct.TYPE_18__* @dictGetEntryVal(i32* %99)
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %9, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = call i64 @strcasecmp(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %98
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %107, %98
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = call i32 @memcpy(%struct.TYPE_18__* %113, %struct.TYPE_18__* %114, i32 8)
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = call i64 @strcasecmp(i8* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %173

122:                                              ; preds = %112
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @dictDelete(i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %134, i64 2
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %145, i64 2
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %131
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = call i64 @dictSize(i32* %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %151
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i64 @dictSize(i32* %162)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %165, %158, %151, %131
  br label %173

173:                                              ; preds = %172, %112
  br label %174

174:                                              ; preds = %173, %66
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @sdsfree(i32 %175)
  br label %183

177:                                              ; preds = %3
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %182 = call i32 @__redisShiftCallback(i32* %180, %struct.TYPE_18__* %181)
  br label %183

183:                                              ; preds = %177, %174
  %184 = load i32, i32* @REDIS_OK, align 4
  ret i32 %184
}

declare dso_local i32 @assert(i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

declare dso_local i32* @dictFind(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @dictGetEntryVal(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @dictDelete(i32*, i32) #1

declare dso_local i64 @dictSize(i32*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @__redisShiftCallback(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
