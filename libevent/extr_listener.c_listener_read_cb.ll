; ModuleID = '/home/carl/AnghaBench/libevent/extr_listener.c_listener_read_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_listener.c_listener_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32, i8*, i32 (%struct.evconnlistener*, i8*)*, i32, i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)*, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Error from accept() call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i16, i8*)* @listener_read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listener_read_cb(i64 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evconnlistener*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)*, align 8
  %10 = alloca i32 (%struct.evconnlistener*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sockaddr_storage, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.evconnlistener*
  store %struct.evconnlistener* %17, %struct.evconnlistener** %7, align 8
  %18 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %19 = call i32 @LOCK(%struct.evconnlistener* %18)
  br label %20

20:                                               ; preds = %3, %33, %90
  store i64 4, i64* %13, align 8
  %21 = load i64, i64* %4, align 8
  %22 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  %23 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %24 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @evutil_accept4_(i64 %21, %struct.sockaddr* %22, i64* %13, i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %91

30:                                               ; preds = %20
  %31 = load i64, i64* %13, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @evutil_closesocket(i64 %34)
  br label %20

36:                                               ; preds = %30
  %37 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %38 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %37, i32 0, i32 4
  %39 = load i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)*, i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)** %38, align 8
  %40 = icmp eq i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @evutil_closesocket(i64 %42)
  %44 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %45 = call i32 @UNLOCK(%struct.evconnlistener* %44)
  br label %131

46:                                               ; preds = %36
  %47 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %48 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %52 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %51, i32 0, i32 4
  %53 = load i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)*, i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)** %52, align 8
  store i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)* %53, i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)** %9, align 8
  %54 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %55 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  %57 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %58 = call i32 @UNLOCK(%struct.evconnlistener* %57)
  %59 = load i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)*, i32 (%struct.evconnlistener*, i64, %struct.sockaddr*, i32, i8*)** %9, align 8
  %60 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %61 = load i64, i64* %14, align 8
  %62 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  %63 = load i64, i64* %13, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 %59(%struct.evconnlistener* %60, i64 %61, %struct.sockaddr* %62, i32 %64, i8* %65)
  %67 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %68 = call i32 @LOCK(%struct.evconnlistener* %67)
  %69 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %70 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %78

73:                                               ; preds = %46
  %74 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %75 = call i32 @listener_decref_and_unlock(%struct.evconnlistener* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @EVUTIL_ASSERT(i32 %76)
  br label %131

78:                                               ; preds = %46
  %79 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %80 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %84 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %89 = call i32 @UNLOCK(%struct.evconnlistener* %88)
  br label %131

90:                                               ; preds = %78
  br label %20

91:                                               ; preds = %29
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @evutil_socket_geterror(i64 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @EVUTIL_ERR_ACCEPT_RETRIABLE(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %99 = call i32 @UNLOCK(%struct.evconnlistener* %98)
  br label %131

100:                                              ; preds = %91
  %101 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %102 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %101, i32 0, i32 2
  %103 = load i32 (%struct.evconnlistener*, i8*)*, i32 (%struct.evconnlistener*, i8*)** %102, align 8
  %104 = icmp ne i32 (%struct.evconnlistener*, i8*)* %103, null
  br i1 %104, label %105, label %126

105:                                              ; preds = %100
  %106 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %107 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %111 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %110, i32 0, i32 2
  %112 = load i32 (%struct.evconnlistener*, i8*)*, i32 (%struct.evconnlistener*, i8*)** %111, align 8
  store i32 (%struct.evconnlistener*, i8*)* %112, i32 (%struct.evconnlistener*, i8*)** %10, align 8
  %113 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %114 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %11, align 8
  %116 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %117 = call i32 @UNLOCK(%struct.evconnlistener* %116)
  %118 = load i32 (%struct.evconnlistener*, i8*)*, i32 (%struct.evconnlistener*, i8*)** %10, align 8
  %119 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 %118(%struct.evconnlistener* %119, i8* %120)
  %122 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %123 = call i32 @LOCK(%struct.evconnlistener* %122)
  %124 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %125 = call i32 @listener_decref_and_unlock(%struct.evconnlistener* %124)
  br label %131

126:                                              ; preds = %100
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @event_sock_warn(i64 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %129 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %130 = call i32 @UNLOCK(%struct.evconnlistener* %129)
  br label %131

131:                                              ; preds = %41, %73, %87, %97, %126, %105
  ret void
}

declare dso_local i32 @LOCK(%struct.evconnlistener*) #1

declare dso_local i64 @evutil_accept4_(i64, %struct.sockaddr*, i64*, i32) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @UNLOCK(%struct.evconnlistener*) #1

declare dso_local i32 @listener_decref_and_unlock(%struct.evconnlistener*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evutil_socket_geterror(i64) #1

declare dso_local i64 @EVUTIL_ERR_ACCEPT_RETRIABLE(i32) #1

declare dso_local i32 @event_sock_warn(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
