; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_on_config_ssl_session_cache.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_on_config_ssl_session_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.proxy_configurator_t = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_CAPACITY = common dso_local global i64 0, align 8
@H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_DURATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"scalar argument must be either of: `OFF`, `ON`\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"capacity:*,lifetime:*\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"capacity must be greater than zero\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"lifetime must be greater than zero\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"node must be a scalar or a mapping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*, %struct.TYPE_17__*)* @on_config_ssl_session_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_ssl_session_cache(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.proxy_configurator_t*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__**, align 8
  %14 = alloca %struct.TYPE_17__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.proxy_configurator_t*
  store %struct.proxy_configurator_t* %23, %struct.proxy_configurator_t** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %25 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @h2o_socket_ssl_get_session_cache(i32 %28)
  store i32* %29, i32** %11, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %105 [
    i32 128, label %33
    i32 129, label %66
  ]

33:                                               ; preds = %3
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcasecmp(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  store i32* null, i32** %12, align 8
  %44 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %45 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = call i32 @update_ssl_ctx(i32* %47, i32* null, i32 -1, i32** %12)
  br label %49

49:                                               ; preds = %43, %40
  store i32 0, i32* %4, align 4
  br label %135

50:                                               ; preds = %33
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcasecmp(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i64, i64* @H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_CAPACITY, align 8
  store i64 %58, i64* %9, align 8
  %59 = load i32, i32* @H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_DURATION, align 4
  store i32 %59, i32* %10, align 4
  br label %64

60:                                               ; preds = %50
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = call i32 @h2o_configurator_errprintf(%struct.TYPE_18__* %61, %struct.TYPE_17__* %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %135

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  br label %109

66:                                               ; preds = %3
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = call i32 @h2o_configurator_parse_mapping(%struct.TYPE_18__* %67, %struct.TYPE_17__* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* null, %struct.TYPE_17__*** %13, %struct.TYPE_17__*** %14)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %135

72:                                               ; preds = %66
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = call i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, ...) @h2o_configurator_scanf(%struct.TYPE_18__* %73, %struct.TYPE_17__* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64* %9)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %135

79:                                               ; preds = %72
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = call i32 @h2o_configurator_errprintf(%struct.TYPE_18__* %83, %struct.TYPE_17__* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %135

87:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = call i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, ...) @h2o_configurator_scanf(%struct.TYPE_18__* %88, %struct.TYPE_17__* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %15)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %135

94:                                               ; preds = %87
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = call i32 @h2o_configurator_errprintf(%struct.TYPE_18__* %98, %struct.TYPE_17__* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %135

102:                                              ; preds = %94
  %103 = load i32, i32* %15, align 4
  %104 = mul nsw i32 %103, 1000
  store i32 %104, i32* %10, align 4
  br label %109

105:                                              ; preds = %3
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = call i32 @h2o_configurator_errprintf(%struct.TYPE_18__* %106, %struct.TYPE_17__* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %135

109:                                              ; preds = %102, %65
  %110 = load i32*, i32** %11, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i32*, i32** %11, align 8
  %114 = call i64 @h2o_cache_get_capacity(i32* %113)
  store i64 %114, i64* %16, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @h2o_cache_get_duration(i32* %115)
  store i32 %116, i32* %17, align 4
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %16, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %135

125:                                              ; preds = %120, %112
  br label %126

126:                                              ; preds = %125, %109
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32* @create_ssl_session_cache(i64 %127, i32 %128)
  store i32* %129, i32** %18, align 8
  %130 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %131 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %130, i32 0, i32 0
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = call i32 @update_ssl_ctx(i32* %133, i32* null, i32 -1, i32** %18)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %126, %124, %105, %97, %93, %82, %78, %71, %60, %49
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32* @h2o_socket_ssl_get_session_cache(i32) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @update_ssl_ctx(i32*, i32*, i32, i32**) #1

declare dso_local i32 @h2o_configurator_errprintf(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*) #1

declare dso_local i32 @h2o_configurator_parse_mapping(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, i32*, %struct.TYPE_17__***, %struct.TYPE_17__***) #1

declare dso_local i32 @h2o_configurator_scanf(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, ...) #1

declare dso_local i64 @h2o_cache_get_capacity(i32*) #1

declare dso_local i32 @h2o_cache_get_duration(i32*) #1

declare dso_local i32* @create_ssl_session_cache(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
