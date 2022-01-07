; ModuleID = '/home/carl/AnghaBench/hiredis/extr_read.c_processBulkItem.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_read.c_processBulkItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i32, i32, i8*, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i8* (i32*, i8*, i64)*, i8* (i32*)* }

@REDIS_ERR = common dso_local global i64 0, align 8
@REDIS_ERR_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Bad bulk string length\00", align 1
@LLONG_MAX = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Bulk string length out of range\00", align 1
@REDIS_REPLY_NIL = common dso_local global i64 0, align 8
@REDIS_REPLY_STRING = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @processBulkItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processBulkItem(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32* %17, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = call i8* @seekNewline(i8* %26, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %191

37:                                               ; preds = %1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = ptrtoint i8* %46 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %9, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %60, 2
  %62 = call i64 @string2ll(i8* %59, i64 %61, i64* %8)
  %63 = load i64, i64* @REDIS_ERR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %37
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %68 = call i32 @__redisReaderSetError(%struct.TYPE_8__* %66, i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* @REDIS_ERR, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %194

71:                                               ; preds = %37
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %72, -1
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* @LLONG_MAX, align 8
  %76 = load i64, i64* @SIZE_MAX, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @SIZE_MAX, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78, %71
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %85 = call i32 @__redisReaderSetError(%struct.TYPE_8__* %83, i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i64, i64* @REDIS_ERR, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %2, align 4
  br label %194

88:                                               ; preds = %78, %74
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %89, -1
  br i1 %90, label %91, label %115

91:                                               ; preds = %88
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = icmp ne %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i8* (i32*)*, i8* (i32*)** %100, align 8
  %102 = icmp ne i8* (i32*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i8* (i32*)*, i8* (i32*)** %107, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i8* %108(i32* %109)
  store i8* %110, i8** %5, align 8
  br label %114

111:                                              ; preds = %96, %91
  %112 = load i64, i64* @REDIS_REPLY_NIL, align 8
  %113 = inttoptr i64 %112 to i8*
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %111, %103
  store i32 1, i32* %10, align 4
  br label %159

115:                                              ; preds = %88
  %116 = load i64, i64* %8, align 8
  %117 = add nsw i64 %116, 2
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %9, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %123, %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ule i64 %125, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %115
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = icmp ne %struct.TYPE_7__* %134, null
  br i1 %135, label %136, label %154

136:                                              ; preds = %131
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i8* (i32*, i8*, i64)*, i8* (i32*, i8*, i64)** %140, align 8
  %142 = icmp ne i8* (i32*, i8*, i64)* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %136
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i8* (i32*, i8*, i64)*, i8* (i32*, i8*, i64)** %147, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  %152 = load i64, i64* %8, align 8
  %153 = call i8* %148(i32* %149, i8* %151, i64 %152)
  store i8* %153, i8** %5, align 8
  br label %157

154:                                              ; preds = %136, %131
  %155 = load i64, i64* @REDIS_REPLY_STRING, align 8
  %156 = inttoptr i64 %155 to i8*
  store i8* %156, i8** %5, align 8
  br label %157

157:                                              ; preds = %154, %143
  store i32 1, i32* %10, align 4
  br label %158

158:                                              ; preds = %157, %115
  br label %159

159:                                              ; preds = %158, %114
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %190

162:                                              ; preds = %159
  %163 = load i8*, i8** %5, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_8__* %166)
  %168 = load i64, i64* @REDIS_ERR, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %2, align 4
  br label %194

170:                                              ; preds = %162
  %171 = load i64, i64* %9, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = add i64 %175, %171
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %170
  %183 = load i8*, i8** %5, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %182, %170
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = call i32 @moveToNextTask(%struct.TYPE_8__* %187)
  %189 = load i32, i32* @REDIS_OK, align 4
  store i32 %189, i32* %2, align 4
  br label %194

190:                                              ; preds = %159
  br label %191

191:                                              ; preds = %190, %1
  %192 = load i64, i64* @REDIS_ERR, align 8
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %191, %186, %165, %82, %65
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i8* @seekNewline(i8*, i32) #1

declare dso_local i64 @string2ll(i8*, i64, i64*) #1

declare dso_local i32 @__redisReaderSetError(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @__redisReaderSetErrorOOM(%struct.TYPE_8__*) #1

declare dso_local i32 @moveToNextTask(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
