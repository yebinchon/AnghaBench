; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_headers_complete_cb.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_headers_complete_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@parser = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@messages = common dso_local global %struct.TYPE_7__* null, align 8
@num_messages = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @headers_complete_cb(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = icmp eq %struct.TYPE_6__* %3, @parser
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @parser, i32 0, i32 3), align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @messages, align 8
  %9 = load i64, i64* @num_messages, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  store i32 %7, i32* %11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @parser, i32 0, i32 2), align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @messages, align 8
  %14 = load i64, i64* @num_messages, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @parser, i32 0, i32 1), align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @messages, align 8
  %19 = load i64, i64* @num_messages, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @parser, i32 0, i32 0), align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @messages, align 8
  %24 = load i64, i64* @num_messages, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @messages, align 8
  %29 = load i64, i64* @num_messages, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = call i32 @http_should_keep_alive(%struct.TYPE_6__* @parser)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @messages, align 8
  %34 = load i64, i64* @num_messages, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @http_should_keep_alive(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
