; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_parse_backend.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_parse_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"url:s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"weight:*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@H2O_SOCKETPOOL_TARGET_MAX_WEIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"weight must be an integer in range 1 - 256\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"items of arguments passed to proxy.reverse.url must be either a scalar or a mapping\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to parse URL: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_12__*)* @parse_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_backend(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %49 [
    i32 128, label %15
    i32 129, label %16
  ]

15:                                               ; preds = %2
  store %struct.TYPE_12__** %5, %struct.TYPE_12__*** %6, align 8
  br label %53

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i32 @h2o_configurator_parse_mapping(i32* %17, %struct.TYPE_12__* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__*** %6, %struct.TYPE_12__*** %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %74

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %24 = icmp ne %struct.TYPE_12__** %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = call i32 @h2o_configurator_scanf(i32* %26, %struct.TYPE_12__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %74

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = icmp ule i32 1, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @H2O_SOCKETPOOL_TARGET_MAX_WEIGHT, align 4
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %35, %32
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @h2o_configurator_errprintf(i32* %40, %struct.TYPE_12__* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %74

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = sub i32 %45, 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %22
  br label %53

49:                                               ; preds = %2
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @h2o_configurator_errprintf(i32* %50, %struct.TYPE_12__* %51, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %74

53:                                               ; preds = %48, %15
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SIZE_MAX, align 4
  %60 = call i64 @h2o_url_parse(i32 %58, i32 %59, i32* %10)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32*, %struct.TYPE_12__*, i8*, ...) @h2o_configurator_errprintf(i32* %63, %struct.TYPE_12__* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  store i32* null, i32** %3, align 8
  br label %74

72:                                               ; preds = %53
  %73 = call i32* @h2o_socketpool_create_target(i32* %10, %struct.TYPE_13__* %7)
  store i32* %73, i32** %3, align 8
  br label %74

74:                                               ; preds = %72, %62, %49, %39, %31, %21
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @h2o_configurator_parse_mapping(i32*, %struct.TYPE_12__*, i8*, i8*, %struct.TYPE_12__***, %struct.TYPE_12__***) #2

declare dso_local i32 @h2o_configurator_scanf(i32*, %struct.TYPE_12__*, i8*, i32*) #2

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_12__*, i8*, ...) #2

declare dso_local i64 @h2o_url_parse(i32, i32, i32*) #2

declare dso_local i32* @h2o_socketpool_create_target(i32*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
