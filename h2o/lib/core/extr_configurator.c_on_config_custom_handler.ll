; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_custom_handler.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_custom_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32*, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_29__** }
%struct.TYPE_30__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }

@on_config_custom_handler.ignore_commands = internal global [2 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [10 x i8] c"extension\00", align 1
@YOML_TYPE_MAPPING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"argument must be a MAPPING\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"mandatory key `extension` is missing\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"`extensions` must be a scalar or sequence of scalar\00", align 1
@H2O_CONFIGURATOR_FLAG_EXTENSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"no handler declared for given extension\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"cannot assign more than one handler for given extension\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_31__*, %struct.TYPE_29__*)* @on_config_custom_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_custom_handler(i32* %0, %struct.TYPE_31__* %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %10, align 8
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @YOML_TYPE_MAPPING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %23 = call i32 @h2o_configurator_errprintf(i32* %21, %struct.TYPE_29__* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %145

24:                                               ; preds = %3
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %26 = call %struct.TYPE_29__* @yoml_get(%struct.TYPE_29__* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_29__* %26, %struct.TYPE_29__** %8, align 8
  %27 = icmp eq %struct.TYPE_29__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %31 = call i32 @h2o_configurator_errprintf(i32* %29, %struct.TYPE_29__* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %145

32:                                               ; preds = %24
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  switch i64 %35, label %91 [
    i64 129, label %36
    i64 128, label %48
  ]

36:                                               ; preds = %32
  %37 = call i8** @alloca(i32 16)
  store i8** %37, i8*** %9, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %40 = call i8* @normalize_ext(i32* %38, %struct.TYPE_29__* %39)
  %41 = load i8**, i8*** %9, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %40, i8** %42, align 8
  %43 = icmp eq i8* %40, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %145

45:                                               ; preds = %36
  %46 = load i8**, i8*** %9, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* null, i8** %47, align 8
  br label %95

48:                                               ; preds = %32
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = call i8** @alloca(i32 %56)
  store i8** %57, i8*** %9, align 8
  store i64 0, i64* %11, align 8
  br label %58

58:                                               ; preds = %84, %48
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %58
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %71, i64 %72
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %73, align 8
  store %struct.TYPE_29__* %74, %struct.TYPE_29__** %12, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %77 = call i8* @normalize_ext(i32* %75, %struct.TYPE_29__* %76)
  %78 = load i8**, i8*** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  store i8* %77, i8** %80, align 8
  %81 = icmp eq i8* %77, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %145

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %58

87:                                               ; preds = %58
  %88 = load i8**, i8*** %9, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  store i8* null, i8** %90, align 8
  br label %95

91:                                               ; preds = %32
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %94 = call i32 @h2o_configurator_errprintf(i32* %92, %struct.TYPE_29__* %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %145

95:                                               ; preds = %87, %45
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %97 = call i32 @clone_mimemap_if_clean(%struct.TYPE_31__* %96)
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i8**, i8*** %9, align 8
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.TYPE_30__* @h2o_mimemap_define_dynamic(i32 %101, i8** %102, i32 %105)
  store %struct.TYPE_30__* %106, %struct.TYPE_30__** %10, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %108 = call %struct.TYPE_31__* @create_context(%struct.TYPE_31__* %107, i32 1)
  store %struct.TYPE_31__* %108, %struct.TYPE_31__** %13, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 1
  store %struct.TYPE_26__* %112, %struct.TYPE_26__** %114, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %119 = load i32, i32* @H2O_CONFIGURATOR_FLAG_EXTENSION, align 4
  %120 = call i32 @h2o_configurator_apply_commands(%struct.TYPE_31__* %117, %struct.TYPE_29__* %118, i32 %119, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @on_config_custom_handler.ignore_commands, i64 0, i64 0))
  store i32 %120, i32* %14, align 4
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %122 = call i32 @destroy_context(%struct.TYPE_31__* %121)
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %95
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %4, align 4
  br label %145

127:                                              ; preds = %95
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %140 [
    i32 1, label %135
    i32 0, label %136
  ]

135:                                              ; preds = %127
  br label %144

136:                                              ; preds = %127
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %139 = call i32 @h2o_configurator_errprintf(i32* %137, %struct.TYPE_29__* %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %145

140:                                              ; preds = %127
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %143 = call i32 @h2o_configurator_errprintf(i32* %141, %struct.TYPE_29__* %142, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %145

144:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %140, %136, %125, %91, %82, %44, %28, %20
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_29__*, i8*) #1

declare dso_local %struct.TYPE_29__* @yoml_get(%struct.TYPE_29__*, i8*) #1

declare dso_local i8** @alloca(i32) #1

declare dso_local i8* @normalize_ext(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @clone_mimemap_if_clean(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_30__* @h2o_mimemap_define_dynamic(i32, i8**, i32) #1

declare dso_local %struct.TYPE_31__* @create_context(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @h2o_configurator_apply_commands(%struct.TYPE_31__*, %struct.TYPE_29__*, i32, i8**) #1

declare dso_local i32 @destroy_context(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
