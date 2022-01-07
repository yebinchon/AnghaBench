; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_read.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_ijkiocache.c_ijkio_cache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32, i64, i32, i32, i64, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_14__*, i64, i32)* }

@ENOSYS = common dso_local global i32 0, align 4
@IJKAVERROR_EXIT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@IJKAVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32)* @ijkio_cache_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ijkio_cache_read(%struct.TYPE_12__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25, %20, %3
  %33 = load i32, i32* @ENOSYS, align 4
  %34 = call i32 @IJKAVERROR(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %213

35:                                               ; preds = %25
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @wrapped_url_read(%struct.TYPE_12__* %41, i8* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %213

45:                                               ; preds = %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ijkio_cache_sync_read(%struct.TYPE_12__* %51, i8* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = call i32 @call_inject_statistic(%struct.TYPE_12__* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %213

68:                                               ; preds = %45
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = call i32 @pthread_mutex_lock(i32* %70)
  br label %72

72:                                               ; preds = %174, %68
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %183

75:                                               ; preds = %72
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = call i64 @ijkio_cache_check_interrupt(%struct.TYPE_12__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @IJKAVERROR_EXIT, align 4
  store i32 %80, i32* %9, align 4
  br label %183

81:                                               ; preds = %75
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %124

86:                                               ; preds = %81
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_14__*, i64, i32)*, i32 (%struct.TYPE_14__*, i64, i32)** %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @SEEK_SET, align 4
  %101 = call i32 %93(%struct.TYPE_14__* %96, i64 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %86
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = call i32 @pthread_mutex_unlock(i32* %106)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %213

109:                                              ; preds = %86
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @wrapped_url_read(%struct.TYPE_12__* %110, i8* %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %10, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %9, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = call i32 @pthread_mutex_unlock(i32* %121)
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %4, align 4
  br label %213

124:                                              ; preds = %81
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @ijkio_file_read(%struct.TYPE_12__* %125, i8* %126, i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i8*, i8** %11, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %11, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, %143
  store i64 %147, i64* %145, align 8
  %148 = load i32, i32* %10, align 4
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %131
  br label %183

151:                                              ; preds = %131
  br label %174

152:                                              ; preds = %124
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %152
  %158 = load i32, i32* %9, align 4
  %159 = icmp sle i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %157
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %9, align 4
  br label %171

169:                                              ; preds = %160
  %170 = load i32, i32* @IJKAVERROR_EOF, align 4
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %169, %165
  br label %172

172:                                              ; preds = %171, %157
  br label %183

173:                                              ; preds = %152
  br label %174

174:                                              ; preds = %173, %151
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 5
  %177 = call i32 @pthread_cond_signal(i32* %176)
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 4
  %182 = call i32 @pthread_cond_wait(i32* %179, i32* %181)
  br label %72

183:                                              ; preds = %172, %150, %79, %72
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %204, label %187

187:                                              ; preds = %183
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %208, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %195, %198
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp sle i64 %199, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %192, %183
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 5
  %207 = call i32 @pthread_cond_signal(i32* %206)
  br label %208

208:                                              ; preds = %204, %192, %187
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 4
  %211 = call i32 @pthread_mutex_unlock(i32* %210)
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %208, %109, %104, %64, %40, %32
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @IJKAVERROR(i32) #1

declare dso_local i32 @wrapped_url_read(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @ijkio_cache_sync_read(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @call_inject_statistic(%struct.TYPE_12__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @ijkio_cache_check_interrupt(%struct.TYPE_12__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ijkio_file_read(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
