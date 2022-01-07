; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkasync.c_async_open.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkasync.c_async_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }

@async_check_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"async:\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ijkapplication\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"ffurl_open_whitelist failed : %s, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"pthread_mutex_init failed : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"pthread_cond_init failed : %s\0A\00", align 1
@async_buffer_task = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"pthread_create failed : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32, i32**)* @async_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_open(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %19 = load i32, i32* @async_check_interrupt, align 4
  store i32 %19, i32* %18, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @av_strstart(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ring_init(i32* %23, i32 %26, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %164

34:                                               ; preds = %4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 9
  store i32* %43, i32** %45, align 8
  %46 = load i32**, i32*** %9, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @av_dict_set_int(i32** %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %49, i32 0)
  br label %51

51:                                               ; preds = %39, %34
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32**, i32*** %9, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = call i32 @ffurl_open_whitelist(%struct.TYPE_15__** %58, i8* %59, i32 %60, %struct.TYPE_14__* %12, i32** %61, i32 %64, i32 %67, %struct.TYPE_12__* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %51
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @av_err2str(i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %73, i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %76, i8* %77)
  br label %160

79:                                               ; preds = %51
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = call i32 @ffurl_size(%struct.TYPE_15__* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = call i32 @pthread_mutex_init(i32* %94, i32* null)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %79
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @av_err2str(i32 %101)
  %103 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %99, i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %155

104:                                              ; preds = %79
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = call i32 @pthread_cond_init(i32* %106, i32* null)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @av_err2str(i32 %113)
  %115 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %111, i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %151

116:                                              ; preds = %104
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 4
  %119 = call i32 @pthread_cond_init(i32* %118, i32* null)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = load i32, i32* @AV_LOG_ERROR, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @av_err2str(i32 %125)
  %127 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %123, i32 %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %147

128:                                              ; preds = %116
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 5
  %131 = load i32, i32* @async_buffer_task, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = call i32 @pthread_create(i32* %130, i32* null, i32 %131, %struct.TYPE_12__* %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = load i32, i32* @AV_LOG_ERROR, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @av_err2str(i32 %139)
  %141 = call i32 (%struct.TYPE_12__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_12__* %137, i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  br label %143

142:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %166

143:                                              ; preds = %136
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 4
  %146 = call i32 @pthread_cond_destroy(i32* %145)
  br label %147

147:                                              ; preds = %143, %122
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  %150 = call i32 @pthread_cond_destroy(i32* %149)
  br label %151

151:                                              ; preds = %147, %110
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = call i32 @pthread_mutex_destroy(i32* %153)
  br label %155

155:                                              ; preds = %151, %98
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = call i32 @ffurl_close(%struct.TYPE_15__* %158)
  br label %160

160:                                              ; preds = %155, %72
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = call i32 @ring_destroy(i32* %162)
  br label %164

164:                                              ; preds = %160, %33
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %142
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @ring_init(i32*, i32, i32) #1

declare dso_local i32 @av_dict_set_int(i32**, i8*, i64, i32) #1

declare dso_local i32 @ffurl_open_whitelist(%struct.TYPE_15__**, i8*, i32, %struct.TYPE_14__*, i32**, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @ffurl_size(%struct.TYPE_15__*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @ffurl_close(%struct.TYPE_15__*) #1

declare dso_local i32 @ring_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
