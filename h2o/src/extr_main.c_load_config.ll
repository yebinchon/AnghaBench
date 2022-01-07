; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_load_config.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i8*, i64 }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"could not open configuration file %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to parse configuration file %s line %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c" (included from file %s line %d)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c": %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, %struct.TYPE_15__*)* @load_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @load_config(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @errno, align 4
  %20 = call i8* @strerror(i32 %19)
  %21 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %20)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %64

22:                                               ; preds = %2
  %23 = call i32 @yaml_parser_initialize(%struct.TYPE_17__* %7)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @yaml_parser_set_input_file(%struct.TYPE_17__* %7, i32* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = call %struct.TYPE_15__* @yoml_parse_document(%struct.TYPE_17__* %7, i32* null, %struct.TYPE_16__* %26)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %8, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = icmp eq %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %22
  %31 = load i32, i32* @stderr, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %38, 1
  %40 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = icmp ne %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %30
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = add nsw i32 %51, 1
  %53 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %47, i32 %52)
  br label %54

54:                                               ; preds = %43, %30
  %55 = load i32, i32* @stderr, align 4
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %22
  %60 = call i32 @yaml_parser_delete(%struct.TYPE_17__* %7)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @fclose(i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %3, align 8
  br label %64

64:                                               ; preds = %59, %14
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %65
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @yaml_parser_initialize(%struct.TYPE_17__*) #1

declare dso_local i32 @yaml_parser_set_input_file(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_15__* @yoml_parse_document(%struct.TYPE_17__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @yaml_parser_delete(%struct.TYPE_17__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
