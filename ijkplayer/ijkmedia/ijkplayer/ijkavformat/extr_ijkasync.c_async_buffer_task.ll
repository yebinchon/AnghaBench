; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkasync.c_async_buffer_task.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkasync.c_async_buffer_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }

@AVERROR_EXIT = common dso_local global i32 0, align 4
@wrapped_url_read = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @async_buffer_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @async_buffer_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 13
  store i32* %20, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %21 = call i64 (...) @av_gettime_relative()
  store i64 %21, i64* %10, align 8
  br label %22

22:                                               ; preds = %1, %71, %97, %167
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = call i32 @pthread_mutex_lock(i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i64 @async_check_interrupt(%struct.TYPE_6__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @AVERROR_EXIT, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = call i32 @pthread_cond_signal(i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  %40 = call i32 @pthread_mutex_unlock(i32* %39)
  br label %176

41:                                               ; preds = %22
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @ffurl_seek(i32 %49, i32 %52, i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %71

66:                                               ; preds = %46
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 9
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 8
  store i64 0, i64* %78, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ring_reset(i32* %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  %83 = call i32 @pthread_cond_signal(i32* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = call i32 @pthread_mutex_unlock(i32* %85)
  store i32 0, i32* %8, align 4
  br label %22

87:                                               ; preds = %41
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @ring_space(i32* %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94, %87
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  %100 = call i32 @pthread_cond_signal(i32* %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  %105 = call i32 @pthread_cond_wait(i32* %102, i32* %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = call i32 @pthread_mutex_unlock(i32* %107)
  store i32 0, i32* %8, align 4
  br label %22

109:                                              ; preds = %94
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  %112 = call i32 @pthread_mutex_unlock(i32* %111)
  %113 = load i32, i32* %11, align 4
  %114 = call i64 @FFMIN(i32 4096, i32 %113)
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %12, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = bitcast %struct.TYPE_6__* %117 to i8*
  %119 = load i32, i32* %12, align 4
  %120 = load i64, i64* @wrapped_url_read, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @ring_generic_write(i32* %116, i8* %118, i32 %119, i8* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %109
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %9, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @FFMIN(i32 1048576, i32 %133)
  %135 = icmp sgt i64 %130, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %125
  %137 = call i64 (...) @av_gettime_relative()
  store i64 %137, i64* %13, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %10, align 8
  %143 = sub nsw i64 %141, %142
  %144 = call i32 @call_inject_async_fill_speed(%struct.TYPE_6__* %138, i32 %139, i64 %140, i64 %143)
  store i32 1, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %145 = load i64, i64* %13, align 8
  store i64 %145, i64* %10, align 8
  br label %146

146:                                              ; preds = %136, %125
  br label %147

147:                                              ; preds = %146, %109
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 5
  %150 = call i32 @pthread_mutex_lock(i32* %149)
  %151 = load i32, i32* %6, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %160, %153
  br label %167

167:                                              ; preds = %166, %147
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 6
  %170 = call i32 @pthread_cond_signal(i32* %169)
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 5
  %173 = call i32 @pthread_mutex_unlock(i32* %172)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %175 = call i32 @call_inject_statistic(%struct.TYPE_6__* %174)
  br label %22

176:                                              ; preds = %29
  ret i8* null
}

declare dso_local i64 @av_gettime_relative(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @async_check_interrupt(%struct.TYPE_6__*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @ffurl_seek(i32, i32, i32) #1

declare dso_local i32 @ring_reset(i32*) #1

declare dso_local i32 @ring_space(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i32 @ring_generic_write(i32*, i8*, i32, i8*) #1

declare dso_local i32 @call_inject_async_fill_speed(%struct.TYPE_6__*, i32, i64, i64) #1

declare dso_local i32 @call_inject_statistic(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
