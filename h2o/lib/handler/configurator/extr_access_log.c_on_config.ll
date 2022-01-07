; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_access_log.c_on_config.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_access_log.c_on_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }
%struct.st_h2o_access_log_configurator_t = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32** }

@H2O_LOGCONF_ESCAPE_APACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"path:s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"format:s,escape:*\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"node must be a scalar or a mapping\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"apache,json\00", align 1
@H2O_LOGCONF_ESCAPE_JSON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*)* @on_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.st_h2o_access_log_configurator_t*, align 8
  %9 = alloca %struct.TYPE_19__**, align 8
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca %struct.TYPE_19__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.st_h2o_access_log_configurator_t*
  store %struct.st_h2o_access_log_configurator_t* %18, %struct.st_h2o_access_log_configurator_t** %8, align 8
  store %struct.TYPE_19__** null, %struct.TYPE_19__*** %10, align 8
  store %struct.TYPE_19__** null, %struct.TYPE_19__*** %11, align 8
  %19 = load i32, i32* @H2O_LOGCONF_ESCAPE_APACHE, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %31 [
    i32 128, label %23
    i32 129, label %24
  ]

23:                                               ; preds = %3
  store %struct.TYPE_19__** %7, %struct.TYPE_19__*** %9, align 8
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %27 = call i32 @h2o_configurator_parse_mapping(%struct.TYPE_21__* %25, %struct.TYPE_19__* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__*** %9, %struct.TYPE_19__*** %10, %struct.TYPE_19__*** %11)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %100

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = call i32 @h2o_configurator_errprintf(%struct.TYPE_21__* %32, %struct.TYPE_19__* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %100

35:                                               ; preds = %30, %23
  %36 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %37 = icmp ne %struct.TYPE_19__** %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %11, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = call i32 @h2o_configurator_get_one_of(%struct.TYPE_21__* %39, %struct.TYPE_19__* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  switch i32 %42, label %47 [
    i32 0, label %43
    i32 1, label %45
  ]

43:                                               ; preds = %38
  %44 = load i32, i32* @H2O_LOGCONF_ESCAPE_APACHE, align 4
  store i32 %44, i32* %12, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @H2O_LOGCONF_ESCAPE_JSON, align 4
  store i32 %46, i32* %12, align 4
  br label %48

47:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %100

48:                                               ; preds = %45, %43
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %99, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %61 = icmp ne %struct.TYPE_19__** %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  br label %69

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %62
  %70 = phi i32* [ %67, %62 ], [ null, %68 ]
  %71 = load i32, i32* %12, align 4
  %72 = call i32* @h2o_access_log_open_handle(i32* %59, i32* %70, i32 %71)
  store i32* %72, i32** %13, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %100

75:                                               ; preds = %69
  %76 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %8, align 8
  %77 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %76, i32 0, i32 0
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %77, align 8
  %79 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %8, align 8
  %80 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %79, i32 0, i32 0
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  %85 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_22__* %78, i64 %84)
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %8, align 8
  %88 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %87, i32 0, i32 0
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load %struct.st_h2o_access_log_configurator_t*, %struct.st_h2o_access_log_configurator_t** %8, align 8
  %93 = getelementptr inbounds %struct.st_h2o_access_log_configurator_t, %struct.st_h2o_access_log_configurator_t* %92, i32 0, i32 0
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = getelementptr inbounds i32*, i32** %91, i64 %96
  store i32* %86, i32** %98, align 8
  br label %99

99:                                               ; preds = %75, %49
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %74, %47, %31, %29
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @h2o_configurator_parse_mapping(%struct.TYPE_21__*, %struct.TYPE_19__*, i8*, i8*, %struct.TYPE_19__***, %struct.TYPE_19__***, %struct.TYPE_19__***) #1

declare dso_local i32 @h2o_configurator_errprintf(%struct.TYPE_21__*, %struct.TYPE_19__*, i8*) #1

declare dso_local i32 @h2o_configurator_get_one_of(%struct.TYPE_21__*, %struct.TYPE_19__*, i8*) #1

declare dso_local i32* @h2o_access_log_open_handle(i32*, i32*, i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
