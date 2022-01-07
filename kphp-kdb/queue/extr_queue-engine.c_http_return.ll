; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_http_return.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_http_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@http_sent = common dso_local global i32 0, align 4
@http_sent_size = common dso_local global i32 0, align 4
@no_cache_headers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"text/javascript; charset=UTF-8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_return(%struct.connection* %0, i8* %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @http_sent, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @http_sent, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @http_sent_size, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* @http_sent_size, align 4
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @no_cache_headers, align 4
  %20 = call i32 @write_basic_http_header(%struct.connection* %17, i32 200, i32 0, i32 %18, i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.connection*, %struct.connection** %3, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 0
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @write_out(i32* %22, i8* %23, i32 %24)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @write_basic_http_header(%struct.connection*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
