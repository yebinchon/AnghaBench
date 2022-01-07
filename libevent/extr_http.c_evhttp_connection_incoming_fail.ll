; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_incoming_fail.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_incoming_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32 (%struct.evhttp_request*, i32)*, i32*, i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HTTP_ENTITYTOOLARGE = common dso_local global i32 0, align 4
@HTTP_BADREQUEST = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp_request*, i32)* @evhttp_connection_incoming_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evhttp_connection_incoming_fail(%struct.evhttp_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i32, align 4
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 132, label %7
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @HTTP_ENTITYTOOLARGE, align 4
  %9 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %10 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @HTTP_BADREQUEST, align 4
  %13 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %14 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %34 [
    i32 128, label %17
    i32 131, label %17
    i32 130, label %33
    i32 133, label %33
    i32 129, label %33
    i32 132, label %33
  ]

17:                                               ; preds = %15, %15
  %18 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %19 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %24 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %28 = load i32, i32* @next, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %26, %struct.evhttp_request* %27, i32 %28)
  %30 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %31 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %30, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %31, align 8
  br label %32

32:                                               ; preds = %22, %17
  store i32 -1, i32* %3, align 4
  br label %68

33:                                               ; preds = %15, %15, %15, %15
  br label %34

34:                                               ; preds = %15, %33
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %36 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %41 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @mm_free(i32* %42)
  %44 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %45 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %48 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %53 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @evhttp_uri_free(i32* %54)
  %56 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %57 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %60 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %59, i32 0, i32 1
  %61 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %60, align 8
  %62 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %64 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %61(%struct.evhttp_request* %62, i32 %65)
  br label %67

67:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @mm_free(i32*) #1

declare dso_local i32 @evhttp_uri_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
