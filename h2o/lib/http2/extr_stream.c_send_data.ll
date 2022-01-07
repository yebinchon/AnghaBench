; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_send_data.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*, i32*, i32, i64)* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }

@H2O_HTTP2_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_20__*, i64, i64*, i32)* @send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @send_data(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, %struct.TYPE_20__* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %21 = call i64 @calc_max_payload_size(%struct.TYPE_23__* %19, %struct.TYPE_22__* %20)
  store i64 %21, i64* %15, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %152

24:                                               ; preds = %6
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %29 = load i64, i64* %15, align 8
  %30 = add i64 %28, %29
  %31 = call i64 @h2o_buffer_reserve(i32* %27, i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %36 = add nsw i64 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %51, %24
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %57

51:                                               ; preds = %43
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 1
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %11, align 8
  %56 = load i64*, i64** %12, align 8
  store i64 0, i64* %56, align 8
  br label %40

57:                                               ; preds = %50, %40
  br label %58

58:                                               ; preds = %123, %57
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %124

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %66, %68
  %70 = call i64 @sz_min(i64 %63, i64 %69)
  store i64 %70, i64* %17, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_20__*, i32*, i32, i64)*, i32 (%struct.TYPE_20__*, i32*, i32, i64)** %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %17, align 8
  %82 = call i32 @h2o_iovec_init(i64 %80, i64 %81)
  %83 = load i64*, i64** %12, align 8
  %84 = load i64, i64* %83, align 8
  %85 = call i32 %75(%struct.TYPE_20__* %76, i32* %78, i32 %82, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %61
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  br label %154

88:                                               ; preds = %61
  %89 = load i64, i64* %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, %89
  store i64 %92, i64* %90, align 8
  %93 = load i64, i64* %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %97
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %117, %88
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %12, align 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %104, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 1
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %11, align 8
  %113 = load i64*, i64** %12, align 8
  store i64 0, i64* %113, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %118

117:                                              ; preds = %108
  br label %101

118:                                              ; preds = %116, %101
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %124

123:                                              ; preds = %118
  br label %58

124:                                              ; preds = %122, %58
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @h2o_send_state_is_in_progress(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %129, %124
  %134 = load i64, i64* %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %134, %136
  store i64 %137, i64* %18, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %140, %133
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i64, i64* %18, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @commit_data_header(%struct.TYPE_23__* %143, %struct.TYPE_22__* %144, i32* %147, i64 %148, i32 %149)
  br label %151

151:                                              ; preds = %142, %129
  br label %152

152:                                              ; preds = %151, %23
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %153, %struct.TYPE_20__** %7, align 8
  br label %154

154:                                              ; preds = %152, %87
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  ret %struct.TYPE_20__* %155
}

declare dso_local i64 @calc_max_payload_size(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i64 @h2o_buffer_reserve(i32*, i64) #1

declare dso_local i64 @sz_min(i64, i64) #1

declare dso_local i32 @h2o_iovec_init(i64, i64) #1

declare dso_local i32 @h2o_send_state_is_in_progress(i32) #1

declare dso_local i32 @commit_data_header(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
