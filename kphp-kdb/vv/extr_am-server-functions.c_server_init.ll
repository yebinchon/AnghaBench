; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_am-server-functions.c_server_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_am-server-functions.c_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.sigaction = type { i32, i32 }

@sf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@udp_enabled = common dso_local global i64 0, align 8
@daemonize = common dso_local global i64 0, align 8
@port = common dso_local global i8* null, align 8
@backlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i64 0, align 8
@binlog_disabled = common dso_local global i64 0, align 8
@Binlog = common dso_local global i32 0, align 4
@log_readto_pos = common dso_local global i64 0, align 8
@binlog_fd = common dso_local global i64 0, align 8
@read_new_events = common dso_local global i32 0, align 4
@epoll_pre_event = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_init(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sigaction, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sf, i32 0, i32 3), align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sf, i32 0, i32 2), align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sf, i32 0, i32 1), align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sf, i32 0, i32 0), align 8
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %4
  %50 = call i32 (...) @init_epoll()
  %51 = call i32 (...) @init_netbuffers()
  %52 = load i64, i64* @udp_enabled, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @init_msg_buffers(i32 0)
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i64, i64* @daemonize, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = call i32 (...) @setsid()
  %61 = call i32 (...) @reopen_logs()
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** @port, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @backlog, align 4
  %73 = call i64 @server_socket(i8* %68, i32 %71, i32 %72, i32 0)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %67, %62
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i8*, i8** @port, align 8
  %83 = call i32 @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %76
  %86 = load i8*, i8** @username, align 8
  %87 = call i64 @change_user(i8* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i8*, i8** @username, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i8*, i8** @username, align 8
  br label %95

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i8* [ %93, %92 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %94 ]
  %97 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %85
  %100 = load i64, i64* @binlogname, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i64, i64* @binlog_disabled, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @Binlog, align 4
  %107 = call i64 @append_to_binlog(i32 %106)
  %108 = load i64, i64* @log_readto_pos, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  br label %112

112:                                              ; preds = %105, %102, %99
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @init_listening_connection(i64 %115, i32* %116, i8* %117)
  %119 = load i64, i64* @udp_enabled, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i8*, i8** @port, align 8
  %123 = call i32 @add_udp_socket(i8* %122, i32 0)
  br label %124

124:                                              ; preds = %121, %112
  %125 = load i64, i64* @binlog_disabled, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i64, i64* @binlog_fd, align 8
  %129 = icmp sge i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @read_new_events, align 4
  store i32 %131, i32* @epoll_pre_event, align 4
  br label %132

132:                                              ; preds = %130, %127, %124
  %133 = call i32 @memset(%struct.sigaction* %9, i32 0, i32 8)
  %134 = load i32, i32* @sigint_handler, align 4
  %135 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %137 = call i32 @sigemptyset(i32* %136)
  %138 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %139 = load i32, i32* @SIGTERM, align 4
  %140 = call i32 @sigaddset(i32* %138, i32 %139)
  %141 = load i32, i32* @SIGINT, align 4
  %142 = call i32 @sigaction(i32 %141, %struct.sigaction* %9, i32* null)
  %143 = load i32, i32* @sigterm_handler, align 4
  %144 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  %145 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %146 = call i32 @sigemptyset(i32* %145)
  %147 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %148 = load i32, i32* @SIGINT, align 4
  %149 = call i32 @sigaddset(i32* %147, i32 %148)
  %150 = load i32, i32* @SIGTERM, align 4
  %151 = call i32 @sigaction(i32 %150, %struct.sigaction* %9, i32* null)
  %152 = load i32, i32* @SIG_IGN, align 4
  %153 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* @SIGPIPE, align 4
  %155 = call i32 @sigaction(i32 %154, %struct.sigaction* %9, i32* null)
  %156 = load i32, i32* @SIGPOLL, align 4
  %157 = call i32 @sigaction(i32 %156, %struct.sigaction* %9, i32* null)
  %158 = load i64, i64* @daemonize, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %132
  %161 = load i32, i32* @sighup_handler, align 4
  %162 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1
  store i32 %161, i32* %162, align 4
  %163 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %164 = call i32 @sigemptyset(i32* %163)
  %165 = load i32, i32* @SIGHUP, align 4
  %166 = call i32 @sigaction(i32 %165, %struct.sigaction* %9, i32* null)
  br label %167

167:                                              ; preds = %160, %132
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @init_msg_buffers(i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i64 @server_socket(i8*, i32, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @append_to_binlog(i32) #1

declare dso_local i32 @init_listening_connection(i64, i32*, i8*) #1

declare dso_local i32 @add_udp_socket(i8*, i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
