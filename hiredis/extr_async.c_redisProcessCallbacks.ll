; ModuleID = '/home/carl/AnghaBench/hiredis/extr_async.c_redisProcessCallbacks.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_async.c_redisProcessCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__*, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (i8*)* }
%struct.TYPE_23__ = type { i32*, i32*, i32, i32*, i32* }
%struct.TYPE_21__ = type { i64, i8* }

@REDIS_OK = common dso_local global i32 0, align 4
@REDIS_DISCONNECTING = common dso_local global i32 0, align 4
@REDIS_MONITORING = common dso_local global i32 0, align 4
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@REDIS_ERR_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REDIS_SUBSCRIBED = common dso_local global i32 0, align 4
@REDIS_FREEING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redisProcessCallbacks(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  store %struct.TYPE_22__* %8, %struct.TYPE_22__** %3, align 8
  %9 = bitcast %struct.TYPE_23__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  store i8* null, i8** %5, align 8
  br label %10

10:                                               ; preds = %154, %1
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = call i32 @redisGetReply(%struct.TYPE_22__* %11, i8** %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @REDIS_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %155

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @REDIS_DISCONNECTING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @sdslen(i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %39 = call i32 @__redisAsyncDisconnect(%struct.TYPE_24__* %38)
  br label %162

40:                                               ; preds = %31, %25, %18
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @REDIS_MONITORING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = call i32 @__redisPushCallback(%struct.TYPE_25__* %49, %struct.TYPE_23__* %4)
  br label %51

51:                                               ; preds = %47, %40
  br label %155

52:                                               ; preds = %15
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = call i32 @__redisShiftCallback(%struct.TYPE_25__* %54, %struct.TYPE_23__* %4)
  %56 = load i32, i32* @REDIS_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to %struct.TYPE_21__*
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %58
  %66 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = bitcast i8* %72 to %struct.TYPE_21__*
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @snprintf(i32 %71, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32 (i8*)*, i32 (i8*)** %82, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 %83(i8* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %87 = call i32 @__redisAsyncDisconnect(%struct.TYPE_24__* %86)
  br label %162

88:                                               ; preds = %58
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @REDIS_MONITORING, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %95, %88
  %103 = phi i1 [ true, %88 ], [ %101, %95 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @__redisGetSubscribeCallback(%struct.TYPE_24__* %113, i8* %114, %struct.TYPE_23__* %4)
  br label %116

116:                                              ; preds = %112, %102
  br label %117

117:                                              ; preds = %116, %52
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %144

121:                                              ; preds = %117
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @__redisRunCallback(%struct.TYPE_24__* %122, %struct.TYPE_23__* %4, i8* %123)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32 (i8*)*, i32 (i8*)** %130, align 8
  %132 = load i8*, i8** %5, align 8
  %133 = call i32 %131(i8* %132)
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @REDIS_FREEING, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %121
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %142 = call i32 @__redisAsyncFree(%struct.TYPE_24__* %141)
  br label %162

143:                                              ; preds = %121
  br label %154

144:                                              ; preds = %117
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32 (i8*)*, i32 (i8*)** %150, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 %151(i8* %152)
  br label %154

154:                                              ; preds = %144, %143
  br label %10

155:                                              ; preds = %51, %10
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @REDIS_OK, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %161 = call i32 @__redisAsyncDisconnect(%struct.TYPE_24__* %160)
  br label %162

162:                                              ; preds = %37, %65, %140, %159, %155
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @redisGetReply(%struct.TYPE_22__*, i8**) #2

declare dso_local i64 @sdslen(i32) #2

declare dso_local i32 @__redisAsyncDisconnect(%struct.TYPE_24__*) #2

declare dso_local i32 @__redisPushCallback(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local i32 @__redisShiftCallback(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @__redisGetSubscribeCallback(%struct.TYPE_24__*, i8*, %struct.TYPE_23__*) #2

declare dso_local i32 @__redisRunCallback(%struct.TYPE_24__*, %struct.TYPE_23__*, i8*) #2

declare dso_local i32 @__redisAsyncFree(%struct.TYPE_24__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
