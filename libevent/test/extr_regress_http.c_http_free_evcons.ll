; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_free_evcons.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_free_evcons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection**)* @http_free_evcons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_free_evcons(%struct.evhttp_connection** %0) #0 {
  %2 = alloca %struct.evhttp_connection**, align 8
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_connection**, align 8
  store %struct.evhttp_connection** %0, %struct.evhttp_connection*** %2, align 8
  %5 = load %struct.evhttp_connection**, %struct.evhttp_connection*** %2, align 8
  store %struct.evhttp_connection** %5, %struct.evhttp_connection*** %4, align 8
  %6 = load %struct.evhttp_connection**, %struct.evhttp_connection*** %2, align 8
  %7 = icmp ne %struct.evhttp_connection** %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.evhttp_connection**, %struct.evhttp_connection*** %2, align 8
  %12 = getelementptr inbounds %struct.evhttp_connection*, %struct.evhttp_connection** %11, i32 1
  store %struct.evhttp_connection** %12, %struct.evhttp_connection*** %2, align 8
  %13 = load %struct.evhttp_connection*, %struct.evhttp_connection** %11, align 8
  store %struct.evhttp_connection* %13, %struct.evhttp_connection** %3, align 8
  %14 = icmp ne %struct.evhttp_connection* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %17 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %16)
  br label %10

18:                                               ; preds = %10
  %19 = load %struct.evhttp_connection**, %struct.evhttp_connection*** %4, align 8
  %20 = call i32 @free(%struct.evhttp_connection** %19)
  br label %21

21:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @free(%struct.evhttp_connection**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
