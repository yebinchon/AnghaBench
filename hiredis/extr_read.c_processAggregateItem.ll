; ModuleID = '/home/carl/AnghaBench/hiredis/extr_read.c_processAggregateItem.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_read.c_processAggregateItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i32, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_13__*, i32*, i64 }
%struct.TYPE_11__ = type { i8* (%struct.TYPE_13__*, i64)*, i8* (%struct.TYPE_13__*)* }

@REDIS_ERR_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"No support for nested multi bulk replies with depth > 7\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Bad multi-bulk length\00", align 1
@LLONG_MAX = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Multi-bulk length out of range\00", align 1
@REDIS_REPLY_NIL = common dso_local global i64 0, align 8
@REDIS_REPLY_MAP = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @processAggregateItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processAggregateItem(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i64 %15
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 8
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %24 = call i32 @__redisReaderSetError(%struct.TYPE_12__* %22, i32 %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @REDIS_ERR, align 4
  store i32 %25, i32* %2, align 4
  br label %222

26:                                               ; preds = %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = call i8* @readLine(%struct.TYPE_12__* %27, i32* %9)
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %220

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @string2ll(i8* %31, i32 %32, i64* %7)
  %34 = load i32, i32* @REDIS_ERR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %39 = call i32 @__redisReaderSetError(%struct.TYPE_12__* %37, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @REDIS_ERR, align 4
  store i32 %40, i32* %2, align 4
  br label %222

41:                                               ; preds = %30
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i64, i64* %7, align 8
  %48 = icmp slt i64 %47, -1
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load i64, i64* @LLONG_MAX, align 8
  %51 = load i64, i64* @SIZE_MAX, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @SIZE_MAX, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53, %41
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %60 = call i32 @__redisReaderSetError(%struct.TYPE_12__* %58, i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @REDIS_ERR, align 4
  store i32 %61, i32* %2, align 4
  br label %222

62:                                               ; preds = %53, %49
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i8* (%struct.TYPE_13__*)*, i8* (%struct.TYPE_13__*)** %74, align 8
  %76 = icmp ne i8* (%struct.TYPE_13__*)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i8* (%struct.TYPE_13__*)*, i8* (%struct.TYPE_13__*)** %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = call i8* %82(%struct.TYPE_13__* %83)
  store i8* %84, i8** %5, align 8
  br label %88

85:                                               ; preds = %70, %65
  %86 = load i64, i64* @REDIS_REPLY_NIL, align 8
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** %5, align 8
  br label %88

88:                                               ; preds = %85, %77
  %89 = load i8*, i8** %5, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_12__* %92)
  %94 = load i32, i32* @REDIS_ERR, align 4
  store i32 %94, i32* %2, align 4
  br label %222

95:                                               ; preds = %88
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = call i32 @moveToNextTask(%struct.TYPE_12__* %96)
  br label %211

98:                                               ; preds = %62
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @REDIS_REPLY_MAP, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i64, i64* %7, align 8
  %106 = mul nsw i64 %105, 2
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %104, %98
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = icmp ne %struct.TYPE_11__* %110, null
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i8* (%struct.TYPE_13__*, i64)*, i8* (%struct.TYPE_13__*, i64)** %116, align 8
  %118 = icmp ne i8* (%struct.TYPE_13__*, i64)* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i8* (%struct.TYPE_13__*, i64)*, i8* (%struct.TYPE_13__*, i64)** %123, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i8* %124(%struct.TYPE_13__* %125, i64 %126)
  store i8* %127, i8** %5, align 8
  br label %133

128:                                              ; preds = %112, %107
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %5, align 8
  br label %133

133:                                              ; preds = %128, %119
  %134 = load i8*, i8** %5, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_12__* %137)
  %139 = load i32, i32* @REDIS_ERR, align 4
  store i32 %139, i32* %2, align 4
  br label %222

140:                                              ; preds = %133
  %141 = load i64, i64* %7, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %207

143:                                              ; preds = %140
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 4
  store i32* %148, i32** %150, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  store i64 -1, i64* %162, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store i64 -1, i64* %170, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 5
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 4
  store i32* null, i32** %186, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %195, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  store i32 %198, i32* %206, align 8
  br label %210

207:                                              ; preds = %140
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %209 = call i32 @moveToNextTask(%struct.TYPE_12__* %208)
  br label %210

210:                                              ; preds = %207, %143
  br label %211

211:                                              ; preds = %210, %95
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i8*, i8** %5, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  br label %218

218:                                              ; preds = %214, %211
  %219 = load i32, i32* @REDIS_OK, align 4
  store i32 %219, i32* %2, align 4
  br label %222

220:                                              ; preds = %26
  %221 = load i32, i32* @REDIS_ERR, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %220, %218, %136, %91, %57, %36, %21
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @__redisReaderSetError(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i8* @readLine(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @__redisReaderSetErrorOOM(%struct.TYPE_12__*) #1

declare dso_local i32 @moveToNextTask(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
