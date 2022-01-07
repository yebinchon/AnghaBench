; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_udpfw.c_find_or_create_connection.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_udpfw.c_find_or_create_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_t = type { i64, i64, %struct.connection_t*, %struct.connection_t*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@find_or_create_connection.cid = internal global i64 0, align 8
@connections = common dso_local global %struct.connection_t zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"FIXME\00", align 1
@server_addr = common dso_local global %struct.TYPE_5__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to connect to server:%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.connection_t* (%struct.sockaddr*, i32)* @find_or_create_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.connection_t* @find_or_create_connection(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.connection_t*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection_t*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.connection_t*, %struct.connection_t** getelementptr inbounds (%struct.connection_t, %struct.connection_t* @connections, i32 0, i32 2), align 8
  store %struct.connection_t* %11, %struct.connection_t** %6, align 8
  br label %12

12:                                               ; preds = %84, %2
  %13 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %14 = icmp ne %struct.connection_t* %13, @connections
  br i1 %14, label %15, label %88

15:                                               ; preds = %12
  %16 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %17 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %84

26:                                               ; preds = %15
  %27 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %28 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %80 [
    i32 129, label %32
    i32 128, label %56
  ]

32:                                               ; preds = %26
  %33 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %34 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %33, i32 0, i32 4
  %35 = bitcast %struct.TYPE_4__* %34 to i8*
  %36 = bitcast i8* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %7, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %38 = bitcast %struct.sockaddr* %37 to i8*
  %39 = bitcast i8* %38 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %39, %struct.sockaddr_in** %8, align 8
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 1
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 1
  %44 = call i32 @memcmp(i32* %41, i32* %43, i32 4)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %32
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %46, %32
  br label %84

55:                                               ; preds = %46
  br label %82

56:                                               ; preds = %26
  %57 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %58 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %57, i32 0, i32 4
  %59 = bitcast %struct.TYPE_4__* %58 to i8*
  %60 = bitcast i8* %59 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %60, %struct.sockaddr_in6** %9, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %62 = bitcast %struct.sockaddr* %61 to i8*
  %63 = bitcast i8* %62 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %63, %struct.sockaddr_in6** %10, align 8
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %64, i32 0, i32 1
  %66 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %66, i32 0, i32 1
  %68 = call i32 @memcmp(i32* %65, i32* %67, i32 4)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %56
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %70, %56
  br label %84

79:                                               ; preds = %70
  br label %82

80:                                               ; preds = %26
  %81 = call i32 @assert(i32 0)
  br label %82

82:                                               ; preds = %80, %79, %55
  %83 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  store %struct.connection_t* %83, %struct.connection_t** %3, align 8
  br label %149

84:                                               ; preds = %78, %54, %25
  %85 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %86 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %85, i32 0, i32 2
  %87 = load %struct.connection_t*, %struct.connection_t** %86, align 8
  store %struct.connection_t* %87, %struct.connection_t** %6, align 8
  br label %12

88:                                               ; preds = %12
  %89 = call %struct.connection_t* @malloc(i32 48)
  store %struct.connection_t* %89, %struct.connection_t** %6, align 8
  %90 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %91 = icmp ne %struct.connection_t* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i64, i64* @find_or_create_connection.cid, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* @find_or_create_connection.cid, align 8
  %96 = trunc i64 %94 to i32
  %97 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %98 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @server_addr, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @new_socket(i32 %101)
  %103 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %104 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %106 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @server_addr, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @server_addr, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @connect(i32 %107, i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %88
  %117 = load i32, i32* @stderr, align 4
  %118 = load i32, i32* @errno, align 4
  %119 = call i8* @strerror(i32 %118)
  %120 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  %121 = call i32 @exit(i32 1) #3
  unreachable

122:                                              ; preds = %88
  %123 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %124 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @memcpy(%struct.TYPE_6__* %125, %struct.sockaddr* %126, i32 %127)
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %131 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.connection_t*, %struct.connection_t** getelementptr inbounds (%struct.connection_t, %struct.connection_t* @connections, i32 0, i32 3), align 8
  %134 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %135 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %134, i32 0, i32 3
  store %struct.connection_t* %133, %struct.connection_t** %135, align 8
  %136 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %137 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %136, i32 0, i32 2
  store %struct.connection_t* @connections, %struct.connection_t** %137, align 8
  %138 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  store %struct.connection_t* %138, %struct.connection_t** getelementptr inbounds (%struct.connection_t, %struct.connection_t* @connections, i32 0, i32 3), align 8
  %139 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %140 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %141 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %140, i32 0, i32 3
  %142 = load %struct.connection_t*, %struct.connection_t** %141, align 8
  %143 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %142, i32 0, i32 2
  store %struct.connection_t* %139, %struct.connection_t** %143, align 8
  %144 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %145 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %144, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  %147 = getelementptr inbounds %struct.connection_t, %struct.connection_t* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  %148 = load %struct.connection_t*, %struct.connection_t** %6, align 8
  store %struct.connection_t* %148, %struct.connection_t** %3, align 8
  br label %149

149:                                              ; preds = %122, %82
  %150 = load %struct.connection_t*, %struct.connection_t** %3, align 8
  ret %struct.connection_t* %150
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.connection_t* @malloc(i32) #1

declare dso_local i32 @new_socket(i32) #1

declare dso_local i64 @connect(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
