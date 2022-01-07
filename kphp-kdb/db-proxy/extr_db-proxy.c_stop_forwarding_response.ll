; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_stop_forwarding_response.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_stop_forwarding_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, %struct.connection* }

@FORWARD_HIGH_WATERMARK = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [114 x i8] c"forwarding response from outbound connection %d to connection %d stopped: already %d+%d bytes in output buffers.\0A\00", align 1
@FORWARD_LOW_WATERMARK = common dso_local global i32 0, align 4
@C_STOPREAD = common dso_local global i32 0, align 4
@conn_wait_net = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_forwarding_response(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 6
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.connection*, %struct.connection** %8, align 8
  store %struct.connection* %9, %struct.connection** %4, align 8
  %10 = load %struct.connection*, %struct.connection** %4, align 8
  %11 = call i32 @assert(%struct.connection* %10)
  %12 = load %struct.connection*, %struct.connection** %4, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %1
  %22 = load %struct.connection*, %struct.connection** %4, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.connection*, %struct.connection** %4, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = load i64, i64* @FORWARD_HIGH_WATERMARK, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %69

34:                                               ; preds = %21
  %35 = load i64, i64* @verbosity, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.connection*, %struct.connection** %4, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.connection*, %struct.connection** %4, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.connection*, %struct.connection** %4, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i64 %48, i64 %52)
  br label %54

54:                                               ; preds = %37, %34
  %55 = load i32, i32* @FORWARD_LOW_WATERMARK, align 4
  %56 = load %struct.connection*, %struct.connection** %4, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @C_STOPREAD, align 4
  %59 = load %struct.connection*, %struct.connection** %3, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.connection*, %struct.connection** %4, align 8
  %64 = load %struct.connection*, %struct.connection** %3, align 8
  %65 = call i32 @create_reverse_watermark_query(%struct.connection* %63, %struct.connection* %64)
  %66 = load i32, i32* @conn_wait_net, align 4
  %67 = load %struct.connection*, %struct.connection** %3, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %54, %33
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @assert(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @create_reverse_watermark_query(%struct.connection*, %struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
