; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@sfd = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@settings_addr = common dso_local global i32 0, align 4
@backlog = common dso_local global i32 0, align 4
@enable_ipv6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@usfd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot open udp port: %m\0A\00", align 1
@tcp_buffers = common dso_local global i32 0, align 4
@ct_rpc_server = common dso_local global i32 0, align 4
@rpc_proxy_inbound = common dso_local global i32 0, align 4
@ct_tcp_rpc_server = common dso_local global i32 0, align 4
@rpc_proxy_tcp = common dso_local global i32 0, align 4
@rpc_proxy_udp_server = common dso_local global i32 0, align 4
@rpc_proxy_udp_server_methods = common dso_local global i32 0, align 4
@default_udp_socket = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@sigusr2_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@precise_now = common dso_local global double 0.000000e+00, align 8
@now = common dso_local global i32 0, align 4
@pending_signals = common dso_local global i64 0, align 8
@need_reload_config = common dso_local global i64 0, align 8
@binlog_mode_on = common dso_local global i64 0, align 8
@quit_steps = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Terminated (pending_signals = 0x%llx).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = call i32 (...) @init_epoll()
  %5 = call i32 (...) @init_netbuffers()
  %6 = call i32 @init_msg_buffers(i32 0)
  store i32 0, i32* %2, align 4
  %7 = load i64, i64* @daemonize, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @setsid()
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i8*, i8** @username, align 8
  %13 = call i64 @change_user(i8* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @username, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8*, i8** @username, align 8
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %11
  %27 = load i64, i64* @sfd, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @port, align 4
  %31 = load i32, i32* @settings_addr, align 4
  %32 = load i32, i32* @backlog, align 4
  %33 = load i64, i64* @enable_ipv6, align 8
  %34 = call i64 @server_socket(i32 %30, i32 %31, i32 %32, i64 %33)
  store i64 %34, i64* @sfd, align 8
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i64, i64* @sfd, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* @port, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %35
  %44 = load i64, i64* @usfd, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @port, align 4
  %48 = load i32, i32* @settings_addr, align 4
  %49 = load i32, i32* @backlog, align 4
  %50 = load i64, i64* @enable_ipv6, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i64 @server_socket(i32 %47, i32 %48, i32 %49, i64 %51)
  store i64 %52, i64* @usfd, align 8
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i64, i64* @usfd, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %53
  %61 = load i32, i32* @tcp_buffers, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @sfd, align 8
  %65 = load i64, i64* @enable_ipv6, align 8
  %66 = call i64 @init_listening_tcpv6_connection(i64 %64, i32* @ct_rpc_server, i32* @rpc_proxy_inbound, i64 %65)
  %67 = icmp sge i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %77

70:                                               ; preds = %60
  %71 = load i64, i64* @sfd, align 8
  %72 = load i64, i64* @enable_ipv6, align 8
  %73 = call i64 @init_listening_tcpv6_connection(i64 %71, i32* @ct_tcp_rpc_server, i32* @rpc_proxy_tcp, i64 %72)
  %74 = icmp sge i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  br label %77

77:                                               ; preds = %70, %63
  %78 = load i64, i64* @usfd, align 8
  %79 = load i32, i32* @port, align 4
  %80 = load i64, i64* @enable_ipv6, align 8
  %81 = call i32 @init_udp_port(i64 %78, i32 %79, i32* @rpc_proxy_udp_server, i32* @rpc_proxy_udp_server_methods, i64 %80)
  store i32 %81, i32* @default_udp_socket, align 4
  %82 = call i32 @assert(i32 %81)
  %83 = call i32 (...) @get_utime_monotonic()
  %84 = call i32 (...) @create_all_outbound_connections()
  %85 = load i32, i32* @SIGINT, align 4
  %86 = load i32, i32* @sigint_handler, align 4
  %87 = call i32 @signal(i32 %85, i32 %86)
  %88 = load i32, i32* @SIGTERM, align 4
  %89 = load i32, i32* @sigterm_handler, align 4
  %90 = call i32 @signal(i32 %88, i32 %89)
  %91 = load i32, i32* @SIGUSR1, align 4
  %92 = load i32, i32* @sigusr1_handler, align 4
  %93 = call i32 @signal(i32 %91, i32 %92)
  %94 = load i32, i32* @SIGUSR2, align 4
  %95 = load i32, i32* @sigusr2_handler, align 4
  %96 = call i32 @signal(i32 %94, i32 %95)
  %97 = load i32, i32* @SIGPIPE, align 4
  %98 = load i32, i32* @SIG_IGN, align 4
  %99 = call i32 @signal(i32 %97, i32 %98)
  %100 = load i64, i64* @daemonize, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %77
  %103 = load i32, i32* @SIGHUP, align 4
  %104 = load i32, i32* @sighup_handler, align 4
  %105 = call i32 @signal(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %77
  store i32 0, i32* %1, align 4
  br label %107

107:                                              ; preds = %164, %106
  %108 = load i64, i64* @verbosity, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i32, i32* %1, align 4
  %112 = and i32 %111, 255
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @stderr, align 4
  %116 = load i32, i32* @active_connections, align 4
  %117 = load i32, i32* @maxconn, align 4
  %118 = load i32, i32* @NB_used, align 4
  %119 = load i32, i32* @NB_alloc, align 4
  %120 = load i32, i32* @NB_max, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %110, %107
  %123 = call i32 @epoll_work(i32 57)
  %124 = load double, double* @precise_now, align 8
  %125 = load double, double* %3, align 8
  %126 = fcmp ogt double %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = call i32 (...) @create_all_outbound_connections()
  %129 = load double, double* @precise_now, align 8
  %130 = fadd double %129, 5.000000e-02
  %131 = call double (...) @drand48()
  %132 = fmul double 2.000000e-02, %131
  %133 = fadd double %130, %132
  store double %133, double* %3, align 8
  br label %134

134:                                              ; preds = %127, %122
  %135 = load i32, i32* @now, align 4
  %136 = load i32, i32* %2, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* @now, align 4
  store i32 %139, i32* %2, align 4
  %140 = call i32 (...) @cron()
  br label %141

141:                                              ; preds = %138, %134
  %142 = load i64, i64* @pending_signals, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %167

145:                                              ; preds = %141
  %146 = load i64, i64* @need_reload_config, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @do_reload_config(i32 1)
  br label %150

150:                                              ; preds = %148, %145
  %151 = load i64, i64* @binlog_mode_on, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 @flush_cbinlog(i32 0)
  br label %155

155:                                              ; preds = %153, %150
  %156 = load i64, i64* @quit_steps, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i64, i64* @quit_steps, align 8
  %160 = add nsw i64 %159, -1
  store i64 %160, i64* @quit_steps, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  br label %167

163:                                              ; preds = %158, %155
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %1, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %1, align 4
  br label %107

167:                                              ; preds = %162, %144
  %168 = load i64, i64* @sfd, align 8
  %169 = call i32 @epoll_close(i64 %168)
  %170 = load i64, i64* @sfd, align 8
  %171 = call i32 @close(i64 %170)
  %172 = load i64, i64* @binlog_mode_on, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = call i32 @flush_cbinlog(i32 2)
  %176 = call i32 (...) @flush_index()
  br label %177

177:                                              ; preds = %174, %167
  %178 = load i64, i64* @pending_signals, align 8
  %179 = call i32 @kprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %178)
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @init_msg_buffers(i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i32, i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @init_listening_tcpv6_connection(i64, i32*, i32*, i64) #1

declare dso_local i32 @init_udp_port(i64, i32, i32*, i32*, i64) #1

declare dso_local i32 @get_utime_monotonic(...) #1

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local double @drand48(...) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @do_reload_config(i32) #1

declare dso_local i32 @flush_cbinlog(i32) #1

declare dso_local i32 @epoll_close(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @flush_index(...) #1

declare dso_local i32 @kprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
