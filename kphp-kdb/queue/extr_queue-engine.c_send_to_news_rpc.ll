; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_send_to_news_rpc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_send_to_news_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.connection*)* }

@CSN = common dso_local global i32 0, align 4
@CS = common dso_local global i32* null, align 8
@rpc_failed = common dso_local global i32 0, align 4
@rpc_sent = common dso_local global i32 0, align 4
@rpc_sent_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_to_news_rpc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dl_abs(i32 %8)
  %10 = load i32, i32* @CSN, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** @CS, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.connection* @get_target_connection(i32 %16)
  store %struct.connection* %17, %struct.connection** %6, align 8
  %18 = load %struct.connection*, %struct.connection** %6, align 8
  %19 = icmp eq %struct.connection* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @rpc_failed, align 4
  %22 = call i32 @STAT(i32 %21)
  store i32 0, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load i32, i32* @rpc_sent, align 4
  %25 = call i32 @STAT(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 4
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load %struct.connection*, %struct.connection** %6, align 8
  %40 = call %struct.TYPE_4__* @RPCC_DATA(%struct.connection* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %42, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @compute_crc32(i32* %46, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load %struct.connection*, %struct.connection** %6, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 0
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write_out(i32* %60, i32* %61, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @rpc_sent_size, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* @rpc_sent_size, align 4
  %77 = load %struct.connection*, %struct.connection** %6, align 8
  %78 = call %struct.TYPE_3__* @RPCC_FUNC(%struct.connection* %77)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %79, align 8
  %81 = load %struct.connection*, %struct.connection** %6, align 8
  %82 = call i32 %80(%struct.connection* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %23, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @dl_abs(i32) #1

declare dso_local %struct.connection* @get_target_connection(i32) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_4__* @RPCC_DATA(%struct.connection*) #1

declare dso_local i32 @compute_crc32(i32*, i32) #1

declare dso_local i32 @write_out(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @RPCC_FUNC(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
