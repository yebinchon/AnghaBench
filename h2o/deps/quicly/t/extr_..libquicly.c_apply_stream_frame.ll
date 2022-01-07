; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_apply_stream_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_apply_stream_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, %struct.TYPE_31__*, %struct.TYPE_23__, %struct.TYPE_25__*, %struct.TYPE_24__ }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_33__*, i64, i64, i64)* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i64, i64 }

@STREAM_RECEIVE = common dso_local global i32 0, align 4
@QUICLY_TRANSPORT_ERROR_FLOW_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_22__*)* @apply_stream_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_stream_frame(%struct.TYPE_33__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load i32, i32* @STREAM_RECEIVE, align 4
  %12 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %15 = call i32 (...) @probe_now()
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @QUICLY_PROBE(i32 %11, %struct.TYPE_25__* %14, i32 %15, %struct.TYPE_33__* %16, i64 %19, i64 %23)
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %25, i32 0, i32 2
  %27 = call i64 @quicly_recvstate_transfer_complete(%struct.TYPE_23__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %204

30:                                               ; preds = %2
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %124

35:                                               ; preds = %30
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %38, %42
  store i64 %43, i64* %7, align 8
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %48, %52
  %54 = icmp slt i64 %47, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %35
  %56 = load i32, i32* @QUICLY_TRANSPORT_ERROR_FLOW_CONTROL, align 4
  store i32 %56, i32* %3, align 4
  br label %204

57:                                               ; preds = %35
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %61, align 8
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %123

75:                                               ; preds = %57
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %76, %91
  store i64 %92, i64* %8, align 8
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %99, %100
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %101, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %75
  %112 = load i32, i32* @QUICLY_TRANSPORT_ERROR_FLOW_CONTROL, align 4
  store i32 %112, i32* %3, align 4
  br label %204

113:                                              ; preds = %75
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %114
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %113, %57
  br label %124

124:                                              ; preds = %123, %30
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %9, align 8
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @quicly_recvstate_update(%struct.TYPE_23__* %130, i64 %133, i64* %9, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %124
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %204

141:                                              ; preds = %124
  %142 = load i64, i64* %9, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 2
  %147 = call i64 @quicly_recvstate_transfer_complete(%struct.TYPE_23__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %189

149:                                              ; preds = %144, %141
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %152, %156
  %158 = load i64, i64* %9, align 8
  %159 = sub i64 %157, %158
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %159, %163
  store i64 %164, i64* %10, align 8
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 0
  %169 = load i32 (%struct.TYPE_33__*, i64, i64, i64)*, i32 (%struct.TYPE_33__*, i64, i64, i64)** %168, align 8
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %175, %179
  %181 = load i64, i64* %9, align 8
  %182 = sub i64 %180, %181
  %183 = load i64, i64* %9, align 8
  %184 = call i32 %169(%struct.TYPE_33__* %170, i64 %171, i64 %182, i64 %183)
  store i32 %184, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %149
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %204

188:                                              ; preds = %149
  br label %189

189:                                              ; preds = %188, %144
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %191 = call i64 @should_send_max_stream_data(%struct.TYPE_33__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %195 = call i32 @sched_stream_control(%struct.TYPE_33__* %194)
  br label %196

196:                                              ; preds = %193, %189
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %198 = call i64 @stream_is_destroyable(%struct.TYPE_33__* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %202 = call i32 @destroy_stream(%struct.TYPE_33__* %201, i32 0)
  br label %203

203:                                              ; preds = %200, %196
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %186, %139, %111, %55, %29
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @QUICLY_PROBE(i32, %struct.TYPE_25__*, i32, %struct.TYPE_33__*, i64, i64) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local i64 @quicly_recvstate_transfer_complete(%struct.TYPE_23__*) #1

declare dso_local i32 @quicly_recvstate_update(%struct.TYPE_23__*, i64, i64*, i32) #1

declare dso_local i64 @should_send_max_stream_data(%struct.TYPE_33__*) #1

declare dso_local i32 @sched_stream_control(%struct.TYPE_33__*) #1

declare dso_local i64 @stream_is_destroyable(%struct.TYPE_33__*) #1

declare dso_local i32 @destroy_stream(%struct.TYPE_33__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
