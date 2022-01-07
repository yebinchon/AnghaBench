; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_async.c___redisAsyncCommand.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_async.c___redisAsyncCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32* }

@REDIS_DISCONNECTING = common dso_local global i32 0, align 4
@REDIS_FREEING = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"subscribe\0D\0A\00", align 1
@REDIS_SUBSCRIBED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"unsubscribe\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"monitor\0D\0A\00", align 1
@REDIS_MONITORING = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i8*, i8*, i64)* @__redisAsyncCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__redisAsyncCommand(%struct.TYPE_13__* %0, i32* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %12, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REDIS_DISCONNECTING, align 4
  %29 = load i32, i32* @REDIS_FREEING, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @REDIS_ERR, align 4
  store i32 %34, i32* %6, align 4
  br label %166

35:                                               ; preds = %5
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32* %36, i32** %37, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i8* @nextArgument(i8* %40, i8** %16, i64* %18)
  store i8* %41, i8** %20, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8*, i8** %20, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 36
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i8*, i8** %16, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = call signext i8 @tolower(i8 signext %54)
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 112
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i8*, i8** %16, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %16, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %18, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %18, align 8
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %112

70:                                               ; preds = %35
  %71 = load i8*, i8** %16, align 8
  %72 = call i64 @strncasecmp(i8* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %110, %74
  %81 = load i8*, i8** %20, align 8
  %82 = call i8* @nextArgument(i8* %81, i8** %17, i64* %19)
  store i8* %82, i8** %20, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = load i8*, i8** %17, align 8
  %86 = load i64, i64* %19, align 8
  %87 = call i32 @sdsnewlen(i8* %85, i64 %86)
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %21, align 4
  %96 = call i32 @dictReplace(i32 %94, i32 %95, %struct.TYPE_12__* %13)
  store i32 %96, i32* %22, align 4
  br label %104

97:                                               ; preds = %84
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %21, align 4
  %103 = call i32 @dictReplace(i32 %101, i32 %102, %struct.TYPE_12__* %13)
  store i32 %103, i32* %22, align 4
  br label %104

104:                                              ; preds = %97, %90
  %105 = load i32, i32* %22, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %21, align 4
  %109 = call i32 @sdsfree(i32 %108)
  br label %110

110:                                              ; preds = %107, %104
  br label %80

111:                                              ; preds = %80
  br label %158

112:                                              ; preds = %70, %35
  %113 = load i8*, i8** %16, align 8
  %114 = call i64 @strncasecmp(i8* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* @REDIS_ERR, align 4
  store i32 %124, i32* %6, align 4
  br label %166

125:                                              ; preds = %116
  br label %157

126:                                              ; preds = %112
  %127 = load i8*, i8** %16, align 8
  %128 = call i64 @strncasecmp(i8* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* @REDIS_MONITORING, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = call i32 @__redisPushCallback(i32* %137, %struct.TYPE_12__* %13)
  br label %156

139:                                              ; preds = %126
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = call i32 @__redisPushCallback(i32* %149, %struct.TYPE_12__* %13)
  br label %155

151:                                              ; preds = %139
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = call i32 @__redisPushCallback(i32* %153, %struct.TYPE_12__* %13)
  br label %155

155:                                              ; preds = %151, %146
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %156, %125
  br label %158

158:                                              ; preds = %157, %111
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load i64, i64* %11, align 8
  %162 = call i32 @__redisAppendCommand(%struct.TYPE_11__* %159, i8* %160, i64 %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %164 = call i32 @_EL_ADD_WRITE(%struct.TYPE_13__* %163)
  %165 = load i32, i32* @REDIS_OK, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %158, %123, %33
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i8* @nextArgument(i8*, i8**, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @sdsnewlen(i8*, i64) #1

declare dso_local i32 @dictReplace(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @__redisPushCallback(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @__redisAppendCommand(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i32 @_EL_ADD_WRITE(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
