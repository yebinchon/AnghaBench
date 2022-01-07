; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_send_dir_listing.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_send_dir_listing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i8*, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@send_dir_listing.generator = internal global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"Service Unavailable\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"please try again later\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@H2O_TOKEN_CONTENT_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"text/html; charset=utf-8\00", align 1
@H2O_SEND_STATE_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i64, i32)* @send_dir_listing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_dir_listing(%struct.TYPE_14__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32* @opendir(i8* %13)
  store i32* %14, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %69

17:                                               ; preds = %4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call %struct.TYPE_16__* @build_dir_listing_html(i32* %19, i32 %22, i32* %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %11, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @closedir(i32* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %28 = icmp eq %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = call i32 @h2o_send_error_503(%struct.TYPE_14__* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %5, align 4
  br label %69

32:                                               ; preds = %17
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @h2o_iovec_init(i32 %35, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = call i32 @h2o_buffer_link_to_pool(%struct.TYPE_16__* %40, i32* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 200, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32, i32* @H2O_TOKEN_CONTENT_TYPE, align 4
  %56 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @h2o_add_header(i32* %51, i32* %54, i32 %55, i32* null, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %32
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = call i32 @h2o_send_inline(%struct.TYPE_14__* %61, i32* null, i32 0)
  store i32 0, i32* %5, align 4
  br label %69

63:                                               ; preds = %32
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = call i32 @h2o_start_response(%struct.TYPE_14__* %64, %struct.TYPE_15__* @send_dir_listing.generator)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = load i32, i32* @H2O_SEND_STATE_FINAL, align 4
  %68 = call i32 @h2o_send(%struct.TYPE_14__* %66, i32* %12, i32 1, i32 %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %60, %29, %16
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.TYPE_16__* @build_dir_listing_html(i32*, i32, i32*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @h2o_send_error_503(%struct.TYPE_14__*, i8*, i8*, i32) #1

declare dso_local i32 @h2o_iovec_init(i32, i32) #1

declare dso_local i32 @h2o_buffer_link_to_pool(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_send_inline(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @h2o_start_response(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @h2o_send(%struct.TYPE_14__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
