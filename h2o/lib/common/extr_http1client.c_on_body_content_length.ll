; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_body_content_length.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_body_content_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.st_h2o_http1client_t* }
%struct.st_h2o_http1client_t = type { %struct.TYPE_13__, i64, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_13__*, i32*)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@h2o_httpclient_error_io = common dso_local global i32 0, align 4
@STREAM_STATE_CLOSED = common dso_local global i64 0, align 8
@h2o_httpclient_error_is_eos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i8*)* @on_body_content_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_body_content_length(%struct.TYPE_22__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_http1client_t*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %9 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %8, align 8
  store %struct.st_h2o_http1client_t* %9, %struct.st_h2o_http1client_t** %5, align 8
  %10 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %11 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = call i32 @h2o_timer_unlink(i32* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %18 = load i32, i32* @h2o_httpclient_error_io, align 4
  %19 = call i32 @on_error(%struct.st_h2o_http1client_t* %17, i32 %18)
  br label %163

20:                                               ; preds = %2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %146

32:                                               ; preds = %25, %20
  %33 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %34 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %32
  %43 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %44 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %42
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %57 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %55, %60
  %62 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %63 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %62, i32 0, i32 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %61
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %73 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %52, %42
  %75 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %76 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %80 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %81 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  store i64 %79, i64* %82, align 8
  %83 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %84 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @h2o_gettimeofday(i32 %88)
  %90 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %91 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  br label %104

94:                                               ; preds = %32
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %99 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, %97
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %94, %74
  %105 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %106 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %108, align 8
  %110 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %111 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %110, i32 0, i32 0
  %112 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %113 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %104
  %119 = load i32*, i32** @h2o_httpclient_error_is_eos, align 8
  br label %121

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32* [ %119, %118 ], [ null, %120 ]
  %123 = call i32 %109(%struct.TYPE_13__* %111, i32* %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %125 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %132 = call i32 @close_response(%struct.st_h2o_http1client_t* %131)
  br label %163

133:                                              ; preds = %121
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %138 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %140 = call i32 @close_client(%struct.st_h2o_http1client_t* %139)
  br label %163

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %144 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %143, i32 0, i32 0
  %145 = call i32 @do_update_window(%struct.TYPE_13__* %144)
  br label %146

146:                                              ; preds = %142, %25
  %147 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %148 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %154 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %160 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = call i32 @h2o_timer_link(i32 %152, i32 %158, i32* %161)
  br label %163

163:                                              ; preds = %146, %136, %130, %16
  ret void
}

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @on_error(%struct.st_h2o_http1client_t*, i32) #1

declare dso_local i32 @h2o_gettimeofday(i32) #1

declare dso_local i32 @close_response(%struct.st_h2o_http1client_t*) #1

declare dso_local i32 @close_client(%struct.st_h2o_http1client_t*) #1

declare dso_local i32 @do_update_window(%struct.TYPE_13__*) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
