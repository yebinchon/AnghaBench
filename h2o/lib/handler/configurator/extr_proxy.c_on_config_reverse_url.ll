; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_on_config_reverse_url.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_on_config_reverse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_23__** }
%struct.proxy_configurator_t = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"backends:*\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"balancer:s\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"value for the `backends` property must be either a scalar or a sequence\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unexpected node type\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"at least one backend url must be set\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"round-robin\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"least-conn\00", align 1
@.str.7 = private unnamed_addr constant [91 x i8] c"specified balancer is not supported. Currently supported ones are: round-robin, least-conn\00", align 1
@.str.8 = private unnamed_addr constant [158 x i8] c"please either set `proxy.use-proxy-protocol` to `OFF` or disable keep-alive by setting `proxy.timeout.keepalive` to zero; the features are mutually exclusive\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__*)* @on_config_reverse_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_reverse_url(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.proxy_configurator_t*, align 8
  %9 = alloca %struct.TYPE_23__**, align 8
  %10 = alloca %struct.TYPE_23__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.proxy_configurator_t*
  store %struct.proxy_configurator_t* %20, %struct.proxy_configurator_t** %8, align 8
  store %struct.TYPE_23__** null, %struct.TYPE_23__*** %10, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %67 [
    i32 129, label %24
    i32 128, label %25
    i32 130, label %36
  ]

24:                                               ; preds = %3
  store %struct.TYPE_23__** %7, %struct.TYPE_23__*** %9, align 8
  store i64 1, i64* %12, align 8
  br label %69

25:                                               ; preds = %3
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %29, align 8
  store %struct.TYPE_23__** %30, %struct.TYPE_23__*** %9, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  br label %69

36:                                               ; preds = %3
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %39 = call i32 @h2o_configurator_parse_mapping(%struct.TYPE_25__* %37, %struct.TYPE_23__* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_23__*** %9, %struct.TYPE_23__*** %10)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %200

42:                                               ; preds = %36
  %43 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %9, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %61 [
    i32 129, label %47
    i32 128, label %48
  ]

47:                                               ; preds = %42
  store i64 1, i64* %12, align 8
  br label %66

48:                                               ; preds = %42
  %49 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %9, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  %55 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %9, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %59, align 8
  store %struct.TYPE_23__** %60, %struct.TYPE_23__*** %9, align 8
  br label %66

61:                                               ; preds = %42
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %63 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %9, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  %65 = call i32 @h2o_configurator_errprintf(%struct.TYPE_25__* %62, %struct.TYPE_23__* %64, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

66:                                               ; preds = %48, %47
  br label %69

67:                                               ; preds = %3
  %68 = call i32 @h2o_fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

69:                                               ; preds = %66, %25, %24
  %70 = load i64, i64* %12, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %75 = call i32 @h2o_configurator_errprintf(%struct.TYPE_25__* %73, %struct.TYPE_23__* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

76:                                               ; preds = %69
  %77 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %10, align 8
  %78 = icmp ne %struct.TYPE_23__** %77, null
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %10, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @strcmp(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = call i32* (...) @h2o_balancer_create_rr()
  store i32* %88, i32** %13, align 8
  br label %104

89:                                               ; preds = %79
  %90 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %10, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @strcmp(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = call i32* (...) @h2o_balancer_create_lc()
  store i32* %98, i32** %13, align 8
  br label %103

99:                                               ; preds = %89
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %102 = call i32 @h2o_configurator_errprintf(%struct.TYPE_25__* %100, %struct.TYPE_23__* %101, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104, %76
  %106 = load i64, i64* %12, align 8
  %107 = mul i64 8, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32** @alloca(i32 %108)
  store i32** %109, i32*** %14, align 8
  store i64 0, i64* %11, align 8
  br label %110

110:                                              ; preds = %127, %105
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %116 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %9, align 8
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %116, i64 %117
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = call i32* @parse_backend(%struct.TYPE_25__* %115, %struct.TYPE_23__* %119)
  %121 = load i32**, i32*** %14, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i32*, i32** %121, i64 %122
  store i32* %120, i32** %123, align 8
  %124 = icmp eq i32* %120, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  store i32 -1, i32* %4, align 4
  br label %200

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %11, align 8
  br label %110

130:                                              ; preds = %110
  %131 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %132 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %131, i32 0, i32 0
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %130
  %139 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %140 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %139, i32 0, i32 0
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %149 = call i32 @h2o_configurator_errprintf(%struct.TYPE_25__* %147, %struct.TYPE_23__* %148, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %200

150:                                              ; preds = %138, %130
  %151 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %152 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %151, i32 0, i32 0
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %150
  %159 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %160 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %159, i32 0, i32 0
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @h2o_mem_addref_shared(i32* %164)
  br label %166

166:                                              ; preds = %158, %150
  %167 = call i32* @h2o_mem_alloc(i32 4)
  store i32* %167, i32** %15, align 8
  %168 = load i32*, i32** %15, align 8
  %169 = call i32 @memset(i32* %168, i32 0, i32 4)
  %170 = load i32*, i32** %15, align 8
  %171 = load i32, i32* @SIZE_MAX, align 4
  %172 = load i32**, i32*** %14, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i32*, i32** %13, align 8
  %175 = call i32 @h2o_socketpool_init_specific(i32* %170, i32 %171, i32** %172, i64 %173, i32* %174)
  %176 = load i32*, i32** %15, align 8
  %177 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %178 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %177, i32 0, i32 0
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @h2o_socketpool_set_timeout(i32* %176, i64 %182)
  %184 = load i32*, i32** %15, align 8
  %185 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %186 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %185, i32 0, i32 0
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @h2o_socketpool_set_ssl_ctx(i32* %184, i32 %189)
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %195 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %194, i32 0, i32 0
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load i32*, i32** %15, align 8
  %199 = call i32 @h2o_proxy_register_reverse_proxy(i32 %193, %struct.TYPE_19__* %197, i32* %198)
  store i32 0, i32* %4, align 4
  br label %200

200:                                              ; preds = %166, %146, %125, %99, %72, %67, %61, %41
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @h2o_configurator_parse_mapping(%struct.TYPE_25__*, %struct.TYPE_23__*, i8*, i8*, %struct.TYPE_23__***, %struct.TYPE_23__***) #1

declare dso_local i32 @h2o_configurator_errprintf(%struct.TYPE_25__*, %struct.TYPE_23__*, i8*) #1

declare dso_local i32 @h2o_fatal(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @h2o_balancer_create_rr(...) #1

declare dso_local i32* @h2o_balancer_create_lc(...) #1

declare dso_local i32** @alloca(i32) #1

declare dso_local i32* @parse_backend(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @h2o_mem_addref_shared(i32*) #1

declare dso_local i32* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @h2o_socketpool_init_specific(i32*, i32, i32**, i64, i32*) #1

declare dso_local i32 @h2o_socketpool_set_timeout(i32*, i64) #1

declare dso_local i32 @h2o_socketpool_set_ssl_ctx(i32*, i32) #1

declare dso_local i32 @h2o_proxy_register_reverse_proxy(i32, %struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
