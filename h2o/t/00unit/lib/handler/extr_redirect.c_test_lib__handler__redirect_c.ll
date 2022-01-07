; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_redirect.c_test_lib__handler__redirect_c.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_redirect.c_test_lib__handler__redirect_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"https://example.com/bar/\00", align 1
@ctx = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@test_loop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@H2O_TOKEN_LOCATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"/abc\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"https://example.com/bar/abc\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lib__handler__redirect_c() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = call i32 @h2o_config_init(i32* %1)
  %8 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = call i8* @h2o_iovec_init(i32 %8)
  %10 = call i32* @h2o_config_register_host(i32* %1, i8* %9, i32 65535)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @h2o_config_register_path(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @h2o_redirect_register(i32* %13, i32 0, i32 301, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @test_loop, align 4
  %16 = call i32 @h2o_context_init(%struct.TYPE_20__* @ctx, i32 %15, i32* %1)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ctx, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_19__* @h2o_loopback_create(%struct.TYPE_20__* @ctx, i32 %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %4, align 8
  %21 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i8* @h2o_iovec_init(i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i8* %22, i8** %26, align 8
  %27 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i8* @h2o_iovec_init(i32 %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = call i32 @h2o_loopback_run_loop(%struct.TYPE_19__* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 301
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* @H2O_TOKEN_LOCATION, align 4
  %47 = call i32 @check_header(%struct.TYPE_14__* %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @ok(i32 %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = call i32 @h2o_loopback_destroy(%struct.TYPE_19__* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ctx, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_19__* @h2o_loopback_create(%struct.TYPE_20__* @ctx, i32 %61)
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %5, align 8
  %63 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i8* @h2o_iovec_init(i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  store i8* %64, i8** %68, align 8
  %69 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i8* @h2o_iovec_init(i32 %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i8* %70, i8** %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = call i32 @h2o_loopback_run_loop(%struct.TYPE_19__* %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 301
  %83 = zext i1 %82 to i32
  %84 = call i32 @ok(i32 %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* @H2O_TOKEN_LOCATION, align 4
  %89 = call i32 @check_header(%struct.TYPE_14__* %87, i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %90 = call i32 @ok(i32 %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ok(i32 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = call i32 @h2o_loopback_destroy(%struct.TYPE_19__* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ctx, i32 0, i32 0), align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.TYPE_19__* @h2o_loopback_create(%struct.TYPE_20__* @ctx, i32 %103)
  store %struct.TYPE_19__* %104, %struct.TYPE_19__** %6, align 8
  %105 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %106 = call i8* @h2o_iovec_init(i32 %105)
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  store i8* %106, i8** %110, align 8
  %111 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %112 = call i8* @h2o_iovec_init(i32 %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  store i8* %112, i8** %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = call i32 @h2o_loopback_run_loop(%struct.TYPE_19__* %117)
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 301
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* @H2O_TOKEN_LOCATION, align 4
  %131 = call i32 @check_header(%struct.TYPE_14__* %129, i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %132 = call i32 @ok(i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @ok(i32 %139)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %142 = call i32 @h2o_loopback_destroy(%struct.TYPE_19__* %141)
  %143 = call i32 @h2o_context_dispose(%struct.TYPE_20__* @ctx)
  %144 = call i32 @h2o_config_dispose(i32* %1)
  ret void
}

declare dso_local i32 @h2o_config_init(i32*) #1

declare dso_local i32* @h2o_config_register_host(i32*, i8*, i32) #1

declare dso_local i8* @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32* @h2o_config_register_path(i32*, i8*, i32) #1

declare dso_local i32 @h2o_redirect_register(i32*, i32, i32, i8*) #1

declare dso_local i32 @h2o_context_init(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @h2o_loopback_create(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @h2o_loopback_run_loop(%struct.TYPE_19__*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @check_header(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @h2o_loopback_destroy(%struct.TYPE_19__*) #1

declare dso_local i32 @h2o_context_dispose(%struct.TYPE_20__*) #1

declare dso_local i32 @h2o_config_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
