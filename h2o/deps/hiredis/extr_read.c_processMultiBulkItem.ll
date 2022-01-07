; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_read.c_processMultiBulkItem.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_read.c_processMultiBulkItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_13__*, i32*, i64 }
%struct.TYPE_11__ = type { i8* (%struct.TYPE_13__*, i64)*, i8* (%struct.TYPE_13__*)* }

@REDIS_ERR_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"No support for nested multi bulk replies with depth > 7\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_REPLY_NIL = common dso_local global i64 0, align 8
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @processMultiBulkItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processMultiBulkItem(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i64 %14
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %23 = call i32 @__redisReaderSetError(%struct.TYPE_12__* %21, i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @REDIS_ERR, align 4
  store i32 %24, i32* %2, align 4
  br label %185

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = call i8* @readLine(%struct.TYPE_12__* %26, i32* null)
  store i8* %27, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %183

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @readLongLong(i8* %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %72

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i8* (%struct.TYPE_13__*)*, i8* (%struct.TYPE_13__*)** %48, align 8
  %50 = icmp ne i8* (%struct.TYPE_13__*)* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8* (%struct.TYPE_13__*)*, i8* (%struct.TYPE_13__*)** %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = call i8* %56(%struct.TYPE_13__* %57)
  store i8* %58, i8** %5, align 8
  br label %62

59:                                               ; preds = %44, %39
  %60 = load i64, i64* @REDIS_REPLY_NIL, align 8
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %5, align 8
  br label %62

62:                                               ; preds = %59, %51
  %63 = load i8*, i8** %5, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_12__* %66)
  %68 = load i32, i32* @REDIS_ERR, align 4
  store i32 %68, i32* %2, align 4
  br label %185

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = call i32 @moveToNextTask(%struct.TYPE_12__* %70)
  br label %174

72:                                               ; preds = %29
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i8* (%struct.TYPE_13__*, i64)*, i8* (%struct.TYPE_13__*, i64)** %81, align 8
  %83 = icmp ne i8* (%struct.TYPE_13__*, i64)* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i8* (%struct.TYPE_13__*, i64)*, i8* (%struct.TYPE_13__*, i64)** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i8* %89(%struct.TYPE_13__* %90, i64 %91)
  store i8* %92, i8** %5, align 8
  br label %96

93:                                               ; preds = %77, %72
  %94 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %93, %84
  %97 = load i8*, i8** %5, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_12__* %100)
  %102 = load i32, i32* @REDIS_ERR, align 4
  store i32 %102, i32* %2, align 4
  br label %185

103:                                              ; preds = %96
  %104 = load i64, i64* %7, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %170

106:                                              ; preds = %103
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  store i32 -1, i32* %125, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i64 -1, i64* %133, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 4
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  store %struct.TYPE_13__* %150, %struct.TYPE_13__** %158, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  store i32 %161, i32* %169, align 4
  br label %173

170:                                              ; preds = %103
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %172 = call i32 @moveToNextTask(%struct.TYPE_12__* %171)
  br label %173

173:                                              ; preds = %170, %106
  br label %174

174:                                              ; preds = %173, %69
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i8*, i8** %5, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %177, %174
  %182 = load i32, i32* @REDIS_OK, align 4
  store i32 %182, i32* %2, align 4
  br label %185

183:                                              ; preds = %25
  %184 = load i32, i32* @REDIS_ERR, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %183, %181, %99, %65, %20
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @__redisReaderSetError(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i8* @readLine(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @readLongLong(i8*) #1

declare dso_local i32 @__redisReaderSetErrorOOM(%struct.TYPE_12__*) #1

declare dso_local i32 @moveToNextTask(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
