; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { %struct.TYPE_5__, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { %struct.socket* }
%struct.TYPE_4__ = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.kvec = type { i8*, i64 }
%struct.msghdr = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@NET_CONGESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s_sendmsg returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"msock\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@conn = common dso_local global i32 0, align 4
@C_BROKEN_PIPE = common dso_local global i32 0, align 4
@CS_HARD = common dso_local global i32 0, align 4
@C_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send(%struct.drbd_connection* %0, %struct.socket* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_connection*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvec, align 8
  %13 = alloca %struct.msghdr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 0
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 1
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MSG_NOSIGNAL, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  store i32 0, i32* %24, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.socket*, %struct.socket** %8, align 8
  %26 = icmp ne %struct.socket* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EBADR, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %138

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  %32 = load i32, i32* @WRITE, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @iov_iter_kvec(i32* %31, i32 %32, %struct.kvec* %12, i32 1, i64 %33)
  %35 = load %struct.socket*, %struct.socket** %8, align 8
  %36 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %37 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.socket*, %struct.socket** %38, align 8
  %40 = icmp eq %struct.socket* %35, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %30
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %44 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_6__* @rcu_dereference(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %50 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = call i32 (...) @rcu_read_unlock()
  %52 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %53 = call i32 @drbd_update_congested(%struct.drbd_connection* %52)
  br label %54

54:                                               ; preds = %41, %30
  br label %55

55:                                               ; preds = %85, %54
  %56 = load %struct.socket*, %struct.socket** %8, align 8
  %57 = call i32 @sock_sendmsg(%struct.socket* %56, %struct.msghdr* %13)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %64 = load %struct.socket*, %struct.socket** %8, align 8
  %65 = call i64 @we_should_drop_the_connection(%struct.drbd_connection* %63, %struct.socket* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %90

68:                                               ; preds = %62
  br label %85

69:                                               ; preds = %55
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @EINTR, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @current, align 4
  %76 = call i32 @flush_signals(i32 %75)
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %90

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %81, %68
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %10, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %55, label %90

90:                                               ; preds = %85, %80, %67
  %91 = load %struct.socket*, %struct.socket** %8, align 8
  %92 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %93 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.socket*, %struct.socket** %94, align 8
  %96 = icmp eq %struct.socket* %91, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i32, i32* @NET_CONGESTED, align 4
  %99 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %100 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %99, i32 0, i32 1
  %101 = call i32 @clear_bit(i32 %98, i32* %100)
  br label %102

102:                                              ; preds = %97, %90
  %103 = load i32, i32* %14, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %136

105:                                              ; preds = %102
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %112 = load %struct.socket*, %struct.socket** %8, align 8
  %113 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %114 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.socket*, %struct.socket** %115, align 8
  %117 = icmp eq %struct.socket* %112, %116
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @drbd_err(%struct.drbd_connection* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %119, i32 %120)
  %122 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %123 = load i32, i32* @conn, align 4
  %124 = load i32, i32* @C_BROKEN_PIPE, align 4
  %125 = call i32 @NS(i32 %123, i32 %124)
  %126 = load i32, i32* @CS_HARD, align 4
  %127 = call i32 @conn_request_state(%struct.drbd_connection* %122, i32 %125, i32 %126)
  br label %135

128:                                              ; preds = %105
  %129 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %130 = load i32, i32* @conn, align 4
  %131 = load i32, i32* @C_TIMEOUT, align 4
  %132 = call i32 @NS(i32 %130, i32 %131)
  %133 = load i32, i32* @CS_HARD, align 4
  %134 = call i32 @conn_request_state(%struct.drbd_connection* %129, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %110
  br label %136

136:                                              ; preds = %135, %102
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %27
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_6__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @drbd_update_congested(%struct.drbd_connection*) #1

declare dso_local i32 @sock_sendmsg(%struct.socket*, %struct.msghdr*) #1

declare dso_local i64 @we_should_drop_the_connection(%struct.drbd_connection*, %struct.socket*) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_connection*, i8*, i8*, i32) #1

declare dso_local i32 @conn_request_state(%struct.drbd_connection*, i32, i32) #1

declare dso_local i32 @NS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
