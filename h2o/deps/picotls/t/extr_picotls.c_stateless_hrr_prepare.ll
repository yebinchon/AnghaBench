; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_stateless_hrr_prepare.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_stateless_hrr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }

@ctx = common dso_local global i32 0, align 4
@ctx_peer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PTLS_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@PTLS_ERROR_STATELESS_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*)* @stateless_hrr_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stateless_hrr_prepare(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @ctx, align 4
  %11 = call i32* @ptls_new(i32 %10, i32 0)
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @ctx_peer, align 4
  %13 = call i32* @ptls_new(i32 %12, i32 1)
  store i32* %13, i32** %6, align 8
  %14 = call i32 @ptls_buffer_init(%struct.TYPE_6__* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = call i32 @ptls_buffer_init(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @ptls_handshake(i32* %17, %struct.TYPE_6__* %7, i32* null, i64* null, i32* null)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ptls_handshake(i32* %26, %struct.TYPE_6__* %27, i32* %29, i64* %8, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @PTLS_ERROR_STATELESS_RETRY, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35)
  %37 = call i32 @ptls_buffer_dispose(%struct.TYPE_6__* %7)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @ptls_free(i32* %38)
  %40 = load i32*, i32** %5, align 8
  ret i32* %40
}

declare dso_local i32* @ptls_new(i32, i32) #1

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ptls_handshake(i32*, %struct.TYPE_6__*, i32*, i64*, i32*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_6__*) #1

declare dso_local i32 @ptls_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
