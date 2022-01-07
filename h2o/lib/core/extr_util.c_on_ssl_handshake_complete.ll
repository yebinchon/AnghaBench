; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_util.c_on_ssl_handshake_complete.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_util.c_on_ssl_handshake_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 (%struct.st_h2o_accept_data_t*)* }
%struct.st_h2o_accept_data_t = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.st_h2o_accept_data_t* }
%struct.timeval = type { i32 }

@h2o_http2_alpn_protocols = common dso_local global %struct.TYPE_21__* null, align 8
@accept_data_callbacks = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i8*)* @on_ssl_handshake_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_ssl_handshake_complete(%struct.TYPE_20__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_accept_data_t*, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %11, align 8
  store %struct.st_h2o_accept_data_t* %12, %struct.st_h2o_accept_data_t** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  store %struct.st_h2o_accept_data_t* null, %struct.st_h2o_accept_data_t** %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %19 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = call i32 @h2o_socket_close(%struct.TYPE_20__* %27)
  br label %165

29:                                               ; preds = %2
  %30 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %31 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %30, i32 0, i32 1
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @h2o_gettimeofday(i32 %36)
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %40 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %39, i32 0, i32 0
  %41 = call i64 @h2o_timeval_subtract(i32* %40, %struct.timeval* %6)
  store i64 %41, i64* %7, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = call i64 @h2o_socket_get_ssl_session_reused(%struct.TYPE_20__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %29
  %46 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %47 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %57 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %55
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  br label %89

67:                                               ; preds = %29
  %68 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %69 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %68, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %79 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %77
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  br label %89

89:                                               ; preds = %67, %45
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = call { i64, i32 } @h2o_socket_ssl_get_selected_protocol(%struct.TYPE_20__* %90)
  %92 = bitcast %struct.TYPE_21__* %8 to { i64, i32 }*
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %92, i32 0, i32 0
  %94 = extractvalue { i64, i32 } %91, 0
  store i64 %94, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %92, i32 0, i32 1
  %96 = extractvalue { i64, i32 } %91, 1
  store i32 %96, i32* %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** @h2o_http2_alpn_protocols, align 8
  store %struct.TYPE_21__* %97, %struct.TYPE_21__** %9, align 8
  br label %98

98:                                               ; preds = %139, %89
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %142

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @memcmp(i32 %112, i32 %115, i64 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %110
  %121 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %122 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %121, i32 0, i32 1
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %131 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %135 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @h2o_http2_accept(%struct.TYPE_16__* %132, %struct.TYPE_20__* %133, i32 %136)
  br label %165

138:                                              ; preds = %110, %103
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 1
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %9, align 8
  br label %98

142:                                              ; preds = %98
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %148 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %147, i32 0, i32 1
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %146, %142
  %157 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %158 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %157, i32 0, i32 1
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %162 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @h2o_http1_accept(%struct.TYPE_16__* %159, %struct.TYPE_20__* %160, i32 %163)
  br label %165

165:                                              ; preds = %156, %120, %17
  %166 = load i32 (%struct.st_h2o_accept_data_t*)*, i32 (%struct.st_h2o_accept_data_t*)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @accept_data_callbacks, i32 0, i32 0), align 8
  %167 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %5, align 8
  %168 = call i32 %166(%struct.st_h2o_accept_data_t* %167)
  ret void
}

declare dso_local i32 @h2o_socket_close(%struct.TYPE_20__*) #1

declare dso_local i32 @h2o_gettimeofday(i32) #1

declare dso_local i64 @h2o_timeval_subtract(i32*, %struct.timeval*) #1

declare dso_local i64 @h2o_socket_get_ssl_session_reused(%struct.TYPE_20__*) #1

declare dso_local { i64, i32 } @h2o_socket_ssl_get_selected_protocol(%struct.TYPE_20__*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @h2o_http2_accept(%struct.TYPE_16__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @h2o_http1_accept(%struct.TYPE_16__*, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
