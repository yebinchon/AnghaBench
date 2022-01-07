; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_on_upgrade_complete.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_on_upgrade_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_14__* }

@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_12__*, i64)* @on_upgrade_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_upgrade_complete(i8* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = call i32 @close_connection(%struct.TYPE_13__* %14)
  br label %83

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %19, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = call i32 @h2o_buffer_init(%struct.TYPE_14__** %29, i32* @h2o_socket_buffer_prototype)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = call i32 @h2o_socket_read_start(%struct.TYPE_12__* %33, i32 (%struct.TYPE_12__*, i32*)* @on_read)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = call i32 @h2o_http2_conn_get_stream(%struct.TYPE_13__* %36, i32 1)
  %38 = call i32 @execute_or_enqueue_request(%struct.TYPE_13__* %35, i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %16
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %8, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @h2o_buffer_reserve(%struct.TYPE_14__** %55, i64 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %67, %68
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @memcpy(i64 %62, i64 %69, i64 %70)
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %72
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call i32 @on_read(%struct.TYPE_12__* %81, i32* null)
  br label %83

83:                                               ; preds = %13, %46, %16
  ret void
}

declare dso_local i32 @close_connection(%struct.TYPE_13__*) #1

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_14__**, i32*) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_12__*, i32 (%struct.TYPE_12__*, i32*)*) #1

declare dso_local i32 @on_read(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @execute_or_enqueue_request(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @h2o_http2_conn_get_stream(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @h2o_buffer_reserve(%struct.TYPE_14__**, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
