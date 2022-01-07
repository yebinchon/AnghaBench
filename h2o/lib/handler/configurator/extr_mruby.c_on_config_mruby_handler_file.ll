; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_mruby.c_on_config_mruby_handler_file.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_mruby.c_on_config_mruby_handler_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.mruby_configurator_t = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to open file: %s:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"I/O error occurred while reading file:%s:%s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to compile file:%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_14__*)* @on_config_mruby_handler_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_mruby_handler_file(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.mruby_configurator_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.mruby_configurator_t*
  store %struct.mruby_configurator_t* %16, %struct.mruby_configurator_t** %7, align 8
  store i32* null, i32** %8, align 8
  %17 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  store i32 -1, i32* %10, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @fopen(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 @h2o_configurator_errprintf(%struct.TYPE_17__* %25, %struct.TYPE_14__* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %32)
  br label %118

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %72, %34
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @feof(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %73

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 65536
  %46 = call i32* @h2o_mem_realloc(i32* %42, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @fread(i32* %53, i32 1, i32 65536, i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @ferror(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %40
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @errno, align 4
  %70 = call i8* @strerror(i32 %69)
  %71 = call i32 @h2o_configurator_errprintf(%struct.TYPE_17__* %63, %struct.TYPE_14__* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %68, i8* %70)
  br label %118

72:                                               ; preds = %40
  br label %35

73:                                               ; preds = %35
  %74 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %7, align 8
  %75 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = bitcast %struct.TYPE_15__* %77 to i8*
  %79 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 24, i1 false)
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %7, align 8
  %86 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %85, i32 0, i32 0
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 8
  %89 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %7, align 8
  %90 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %89, i32 0, i32 0
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %7, align 8
  %94 = call i32 @get_mrb(%struct.mruby_configurator_t* %93)
  %95 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %7, align 8
  %96 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %99 = call i32 @compile_test(i32 %94, %struct.TYPE_18__* %97, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %73
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %109 = call i32 @h2o_configurator_errprintf(%struct.TYPE_17__* %102, %struct.TYPE_14__* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %107, i8* %108)
  br label %118

110:                                              ; preds = %73
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mruby_configurator_t*, %struct.mruby_configurator_t** %7, align 8
  %115 = getelementptr inbounds %struct.mruby_configurator_t, %struct.mruby_configurator_t* %114, i32 0, i32 0
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = call i32 @h2o_mruby_register(i32 %113, %struct.TYPE_18__* %116)
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %110, %101, %62, %24
  %119 = load i32*, i32** %8, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @fclose(i32* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @free(i32* %130)
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i32, i32* %10, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @h2o_configurator_errprintf(%struct.TYPE_17__*, %struct.TYPE_14__*, i8*, i32, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32* @h2o_mem_realloc(i32*, i32) #2

declare dso_local i32 @fread(i32*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @compile_test(i32, %struct.TYPE_18__*, i8*) #2

declare dso_local i32 @get_mrb(%struct.mruby_configurator_t*) #2

declare dso_local i32 @h2o_mruby_register(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
