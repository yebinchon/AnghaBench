; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_accept_new_connections.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_accept_new_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.connection = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.sockaddr = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"accept(%d) unexpectedly returns %d\0A\00", align 1
@MAX_EVENTS = common dso_local global i32 0, align 4
@Events = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"accepted incoming connection at %s:%d, fd=%d\0A\00", align 1
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@Connections = common dso_local global %struct.sockaddr_in* null, align 8
@BUFF_SIZE = common dso_local global i32 0, align 4
@server_read_write = common dso_local global i32 0, align 4
@EVT_READ = common dso_local global i32 0, align 4
@EVT_SPEC = common dso_local global i32 0, align 4
@active_connections = common dso_local global i32 0, align 4
@EVA_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accept_new_connections(i32 %0, i8* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.connection*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %113, %3
  store i32 32, i32* %9, align 4
  %14 = call i32 @memset(%struct.sockaddr_in* %8, i32 0, i32 32)
  %15 = load i32, i32* %4, align 4
  %16 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %17 = call i32 @accept(i32 %15, %struct.sockaddr* %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @verbosity, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23, %20
  br label %114

32:                                               ; preds = %13
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MAX_EVENTS, align 4
  %38 = icmp slt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Events, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %6, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 @memcpy(%struct.TYPE_8__* %46, %struct.sockaddr_in* %8, i32 32)
  %48 = load i64, i64* @verbosity, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %35
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %58 = call i8* @conv_addr(i32 %56, i8* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %50, %35
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @MAX_CONNECTIONS, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @close(i32 %70)
  br label %113

72:                                               ; preds = %65
  %73 = load %struct.sockaddr_in*, %struct.sockaddr_in** @Connections, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %73, i64 %75
  %77 = bitcast %struct.sockaddr_in* %76 to %struct.connection*
  store %struct.connection* %77, %struct.connection** %12, align 8
  %78 = load %struct.connection*, %struct.connection** %12, align 8
  %79 = bitcast %struct.connection* %78 to %struct.sockaddr_in*
  %80 = call i32 @memset(%struct.sockaddr_in* %79, i32 0, i32 32)
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.connection*, %struct.connection** %12, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = load %struct.connection*, %struct.connection** %12, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 5
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.connection*, %struct.connection** %12, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 4
  %89 = load %struct.connection*, %struct.connection** %12, align 8
  %90 = getelementptr inbounds %struct.connection, %struct.connection* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BUFF_SIZE, align 4
  %93 = call i32 @init_builtin_buffer(i32* %88, i32 %91, i32 %92)
  %94 = load %struct.connection*, %struct.connection** %12, align 8
  %95 = getelementptr inbounds %struct.connection, %struct.connection* %94, i32 0, i32 2
  %96 = load %struct.connection*, %struct.connection** %12, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @BUFF_SIZE, align 4
  %100 = call i32 @init_builtin_buffer(i32* %95, i32 %98, i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @server_read_write, align 4
  %103 = load %struct.connection*, %struct.connection** %12, align 8
  %104 = bitcast %struct.connection* %103 to %struct.sockaddr_in*
  %105 = call i32 @epoll_sethandler(i32 %101, i32 0, i32 %102, %struct.sockaddr_in* %104)
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @EVT_READ, align 4
  %108 = load i32, i32* @EVT_SPEC, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @epoll_insert(i32 %106, i32 %109)
  %111 = load i32, i32* @active_connections, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @active_connections, align 4
  br label %113

113:                                              ; preds = %72, %69
  br i1 true, label %13, label %114

114:                                              ; preds = %113, %31
  %115 = load i32, i32* @EVA_CONTINUE, align 4
  ret i32 %115
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.sockaddr_in*, i32) #1

declare dso_local i8* @conv_addr(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @init_builtin_buffer(i32*, i32, i32) #1

declare dso_local i32 @epoll_sethandler(i32, i32, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @epoll_insert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
