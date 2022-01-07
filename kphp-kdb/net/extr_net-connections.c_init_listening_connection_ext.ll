; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_init_listening_connection_ext.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_init_listening_connection_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i8*, i32* }

@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@max_connection = common dso_local global i32 0, align 4
@Connections = common dso_local global %struct.connection* null, align 8
@ct_listen = common dso_local global i32 0, align 4
@conn_listen = common dso_local global i32 0, align 4
@SM_LOWPRIO = common dso_local global i32 0, align 4
@accept_new_connections_gateway = common dso_local global i32 0, align 4
@EVT_RWX = common dso_local global i32 0, align 4
@EVT_LEVEL = common dso_local global i32 0, align 4
@SM_SPECIAL = common dso_local global i32 0, align 4
@C_SPECIAL = common dso_local global i32 0, align 4
@SM_NOQACK = common dso_local global i32 0, align 4
@C_NOQACK = common dso_local global i32 0, align 4
@SM_IPV6 = common dso_local global i32 0, align 4
@C_IPV6 = common dso_local global i32 0, align 4
@SM_RAWMSG = common dso_local global i32 0, align 4
@C_RAWMSG = common dso_local global i32 0, align 4
@listening_connections = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_listening_connection_ext(i32 %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.connection*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i64 @check_conn_functions(i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %116

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MAX_CONNECTIONS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %116

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @max_connection, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* @max_connection, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load %struct.connection*, %struct.connection** @Connections, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %29, i64 %31
  store %struct.connection* %32, %struct.connection** %12, align 8
  %33 = load %struct.connection*, %struct.connection** %12, align 8
  %34 = call i32 @memset(%struct.connection* %33, i32 0, i32 32)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.connection*, %struct.connection** %12, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.connection*, %struct.connection** %12, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 5
  store i32* %38, i32** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.connection*, %struct.connection** %12, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @ct_listen, align 4
  %45 = load %struct.connection*, %struct.connection** %12, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @conn_listen, align 4
  %48 = load %struct.connection*, %struct.connection** %12, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @SM_LOWPRIO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %28
  store i32 10, i32* %11, align 4
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @accept_new_connections_gateway, align 4
  %59 = load %struct.connection*, %struct.connection** %12, align 8
  %60 = call i32 @epoll_sethandler(i32 %56, i32 %57, i32 %58, %struct.connection* %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @EVT_RWX, align 4
  %63 = load i32, i32* @EVT_LEVEL, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @epoll_insert(i32 %61, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @SM_SPECIAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load i32, i32* @C_SPECIAL, align 4
  %72 = load %struct.connection*, %struct.connection** %12, align 8
  %73 = getelementptr inbounds %struct.connection, %struct.connection* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %55
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @SM_NOQACK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, i32* @C_NOQACK, align 4
  %83 = load %struct.connection*, %struct.connection** %12, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.connection*, %struct.connection** %12, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @disable_qack(i32 %89)
  br label %91

91:                                               ; preds = %81, %76
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @SM_IPV6, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* @C_IPV6, align 4
  %98 = load %struct.connection*, %struct.connection** %12, align 8
  %99 = getelementptr inbounds %struct.connection, %struct.connection* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @SM_RAWMSG, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @C_RAWMSG, align 4
  %109 = load %struct.connection*, %struct.connection** %12, align 8
  %110 = getelementptr inbounds %struct.connection, %struct.connection* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* @listening_connections, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @listening_connections, align 4
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %113, %21, %16
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i64 @check_conn_functions(i32*) #1

declare dso_local i32 @memset(%struct.connection*, i32, i32) #1

declare dso_local i32 @epoll_sethandler(i32, i32, i32, %struct.connection*) #1

declare dso_local i32 @epoll_insert(i32, i32) #1

declare dso_local i32 @disable_qack(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
