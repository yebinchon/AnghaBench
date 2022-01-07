; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_hosts.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_19__*, i32*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i8* }

@.str = private unnamed_addr constant [28 x i8] c"the mapping cannot be empty\00", align 1
@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"key (representing the hostname) must be a string\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"invalid key (must be either `host` or `host:port`)\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"wildcard (*) can only be used at the start of the hostname\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"duplicate host entry\00", align 1
@H2O_CONFIGURATOR_FLAG_HOST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"paths\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"mandatory configuration directive `paths` is missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_25__*, %struct.TYPE_23__*)* @on_config_hosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_hosts(i32* %0, %struct.TYPE_25__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_24__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = call i32 @h2o_configurator_errprintf(i32* %22, %struct.TYPE_23__* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %164

25:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %160, %25
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %27, %32
  br i1 %33, label %34, label %163

34:                                               ; preds = %26
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %9, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %10, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %34
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %61 = call i32 @h2o_configurator_errprintf(i32* %59, %struct.TYPE_23__* %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %164

62:                                               ; preds = %34
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @strlen(i32 %70)
  %72 = call i32* @h2o_url_parse_hostport(i32 %66, i32 %71, %struct.TYPE_24__* %11, i32* %12)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %77 = call i32 @h2o_configurator_errprintf(i32* %75, %struct.TYPE_23__* %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %164

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 42
  br i1 %89, label %90, label %101

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 46
  br i1 %100, label %101, label %110

101:                                              ; preds = %94, %90, %78
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = call i32* @memchr(i8* %104, i8 signext 42, i32 %107)
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %101, %94
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %113 = call i32 @h2o_configurator_errprintf(i32* %111, %struct.TYPE_23__* %112, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %164

114:                                              ; preds = %101
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = call %struct.TYPE_25__* @create_context(%struct.TYPE_25__* %115, i32 0)
  store %struct.TYPE_25__* %116, %struct.TYPE_25__** %13, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = bitcast %struct.TYPE_24__* %11 to { i32, i8* }*
  %122 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %121, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call %struct.TYPE_19__* @h2o_config_register_host(i32 %119, i32 %123, i8* %125, i32 %120)
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %128, align 8
  %129 = icmp eq %struct.TYPE_19__* %126, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %114
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %133 = call i32 @h2o_configurator_errprintf(i32* %131, %struct.TYPE_23__* %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %135 = call i32 @destroy_context(%struct.TYPE_25__* %134)
  store i32 -1, i32* %4, align 4
  br label %164

136:                                              ; preds = %114
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %145 = load i32, i32* @H2O_CONFIGURATOR_FLAG_HOST, align 4
  %146 = call i32 @h2o_configurator_apply_commands(%struct.TYPE_25__* %143, %struct.TYPE_23__* %144, i32 %145, i32* null)
  store i32 %146, i32* %14, align 4
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %148 = call i32 @destroy_context(%struct.TYPE_25__* %147)
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %136
  store i32 -1, i32* %4, align 4
  br label %164

152:                                              ; preds = %136
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %154 = call i32* @yoml_get(%struct.TYPE_23__* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %158 = call i32 @h2o_configurator_errprintf(i32* null, %struct.TYPE_23__* %157, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %164

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %8, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %8, align 8
  br label %26

163:                                              ; preds = %26
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %156, %151, %130, %110, %74, %58, %21
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_23__*, i8*) #1

declare dso_local i32* @h2o_url_parse_hostport(i32, i32, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @memchr(i8*, i8 signext, i32) #1

declare dso_local %struct.TYPE_25__* @create_context(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_19__* @h2o_config_register_host(i32, i32, i8*, i32) #1

declare dso_local i32 @destroy_context(%struct.TYPE_25__*) #1

declare dso_local i32 @h2o_configurator_apply_commands(%struct.TYPE_25__*, %struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32* @yoml_get(%struct.TYPE_23__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
