; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_accept_client.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_accept_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unable to set accept: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unable to accept: %s.\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @accept_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accept_client(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 4, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %13 = call i32 @accept(i32 %11, %struct.sockaddr* %12, i32* %10)
  store i32 %13, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @FATAL(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @LOG(i8* %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %19
  %30 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %31 = call i8* @ws_get_raddr(%struct.sockaddr* %30)
  store i8* %31, i8** %9, align 8
  %32 = call %struct.TYPE_5__* (...) @new_wsclient()
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %43 = call i32 @inet_ntop(i32 %37, i8* %38, i32 %41, i32 %42)
  %44 = load i32**, i32*** %5, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = call i32* @list_create(%struct.TYPE_5__* %48)
  %50 = load i32**, i32*** %5, align 8
  store i32* %49, i32** %50, align 8
  br label %57

51:                                               ; preds = %29
  %52 = load i32**, i32*** %5, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = call i32* @list_insert_prepend(i32* %53, %struct.TYPE_5__* %54)
  %56 = load i32**, i32*** %5, align 8
  store i32* %55, i32** %56, align 8
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_nonblocking(i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %22
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i8* @ws_get_raddr(%struct.sockaddr*) #1

declare dso_local %struct.TYPE_5__* @new_wsclient(...) #1

declare dso_local i32 @inet_ntop(i32, i8*, i32, i32) #1

declare dso_local i32* @list_create(%struct.TYPE_5__*) #1

declare dso_local i32* @list_insert_prepend(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @set_nonblocking(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
