; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_fragmented_message_record.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_fragmented_message_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.st_ptls_message_emitter_t = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@test_fragmented_message_queue = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.st_ptls_message_emitter_t*, i64, i32, i32*)* @test_fragmented_message_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_fragmented_message_record(i32* %0, %struct.st_ptls_message_emitter_t* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.st_ptls_message_emitter_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = bitcast %struct.TYPE_6__* %6 to i64*
  store i64 %2, i64* %11, align 4
  store i32* %0, i32** %7, align 8
  store %struct.st_ptls_message_emitter_t* %1, %struct.st_ptls_message_emitter_t** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test_fragmented_message_queue, i32 0, i32 1), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test_fragmented_message_queue, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(i32 %16, i32 %18, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test_fragmented_message_queue, i32 0, i32 1), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test_fragmented_message_queue, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test_fragmented_message_queue, i32 0, i32 1), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test_fragmented_message_queue, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test_fragmented_message_queue, i32 0, i32 0), align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @test_fragmented_message_queue, i32 0, i32 0), align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
