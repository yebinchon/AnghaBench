; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/extr_test.c_test_loopback.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/extr_test.c_test_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@test_loop = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_loopback() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_18__, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = call i32 @h2o_config_init(i32* %1)
  %5 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = call i8* @h2o_iovec_init(i32 %5)
  %7 = call i32 @h2o_config_register_host(i32* %1, i8* %6, i32 65535)
  %8 = load i32, i32* @test_loop, align 4
  %9 = call i32 @h2o_context_init(%struct.TYPE_18__* %2, i32 %8, i32* %1)
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %2, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_17__* @h2o_loopback_create(%struct.TYPE_18__* %2, i32 %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %3, align 8
  %15 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i8* @h2o_iovec_init(i32 %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store i8* %16, i8** %20, align 8
  %21 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i8* @h2o_iovec_init(i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i8* %22, i8** %26, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = call i32 @h2o_loopback_run_loop(%struct.TYPE_17__* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 404
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = call i32 @h2o_loopback_destroy(%struct.TYPE_17__* %37)
  %39 = call i32 @h2o_context_dispose(%struct.TYPE_18__* %2)
  %40 = call i32 @h2o_config_dispose(i32* %1)
  ret void
}

declare dso_local i32 @h2o_config_init(i32*) #1

declare dso_local i32 @h2o_config_register_host(i32*, i8*, i32) #1

declare dso_local i8* @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_context_init(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @h2o_loopback_create(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @h2o_loopback_run_loop(%struct.TYPE_17__*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_loopback_destroy(%struct.TYPE_17__*) #1

declare dso_local i32 @h2o_context_dispose(%struct.TYPE_18__*) #1

declare dso_local i32 @h2o_config_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
