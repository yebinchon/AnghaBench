; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i64, i64, i32, i32, i32, i32 }
%struct.timeval = type { i32, i64 }
%struct.timespec = type { i32, i64 }

@CURLPAUSE_CONT = common dso_local global i32 0, align 4
@CURL_MAX_WRITE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_buffer(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timespec, align 8
  %14 = alloca %struct.timespec, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

42:                                               ; preds = %1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = call i64 @kurl_isfile(%struct.TYPE_4__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %96

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %77, %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = call i32 @read(i32 %58, i64 %65, i64 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  br label %84

77:                                               ; preds = %55
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %47

84:                                               ; preds = %76, %47
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %84
  br label %184

96:                                               ; preds = %42
  br label %97

97:                                               ; preds = %168, %96
  store i32 -1, i32* %10, align 4
  store i64 -1, i64* %11, align 8
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 10, i32* %98, align 8
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @curl_multi_timeout(i32 %102, i64* %11)
  %104 = load i64, i64* %11, align 8
  %105 = icmp sge i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %97
  %107 = load i64, i64* %11, align 8
  %108 = sdiv i64 %107, 1000
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %121

116:                                              ; preds = %106
  %117 = load i64, i64* %11, align 8
  %118 = srem i64 %117, 1000
  %119 = mul nsw i64 %118, 1000
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %114
  br label %122

122:                                              ; preds = %121, %97
  %123 = call i32 @FD_ZERO(i32* %7)
  %124 = call i32 @FD_ZERO(i32* %8)
  %125 = call i32 @FD_ZERO(i32* %9)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @curl_multi_fdset(i32 %128, i32* %7, i32* %8, i32* %9, i32* %10)
  %130 = load i32, i32* %10, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %122
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  %135 = call i32 @select(i32 %134, i32* %7, i32* %8, i32* %9, %struct.timeval* %12)
  store i32 %135, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %170

138:                                              ; preds = %132, %122
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  store i32 100000000, i32* %143, align 8
  %144 = call i32 @nanosleep(%struct.timespec* %13, %struct.timespec* %14)
  br label %145

145:                                              ; preds = %141, %138
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CURLPAUSE_CONT, align 4
  %150 = call i32 @curl_easy_pause(i32 %148, i32 %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @curl_multi_perform(i32 %153, i32* %5)
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %145
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CURL_MAX_WRITE_SIZE, align 8
  %166 = sub nsw i64 %164, %165
  %167 = icmp slt i64 %161, %166
  br label %168

168:                                              ; preds = %158, %155
  %169 = phi i1 [ false, %155 ], [ %167, %158 ]
  br i1 %169, label %97, label %170

170:                                              ; preds = %168, %137
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CURL_MAX_WRITE_SIZE, align 8
  %178 = sub nsw i64 %176, %177
  %179 = icmp slt i64 %173, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %170
  br label %184

184:                                              ; preds = %183, %95
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %184, %41
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @kurl_isfile(%struct.TYPE_4__*) #1

declare dso_local i32 @read(i32, i64, i64) #1

declare dso_local i32 @curl_multi_timeout(i32, i64*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_fdset(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @curl_easy_pause(i32, i32) #1

declare dso_local i32 @curl_multi_perform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
