; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }

@ping_interval = common dso_local global double 0.000000e+00, align 8
@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@CurConf = common dso_local global %struct.TYPE_4__* null, align 8
@ct_memcache_server = common dso_local global i32 0, align 4
@Connections = common dso_local global i64 0, align 8
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
@.str.2 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@precise_now = common dso_local global double 0.000000e+00, align 8
@now = common dso_local global i32 0, align 4
@need_reload_config = common dso_local global i64 0, align 8
@quit_steps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double 0.000000e+00, double* %3, align 8
  %4 = call i32 (...) @init_epoll()
  %5 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %6 = call double (...) @drand48()
  %7 = fmul double 1.000000e-01, %6
  %8 = fadd double 0x3FEE666666666666, %7
  %9 = load double, double* @ping_interval, align 8
  %10 = fmul double %9, %8
  store double %10, double* @ping_interval, align 8
  %11 = load i64, i64* @daemonize, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (...) @setsid()
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i8*, i8** @username, align 8
  %17 = call i64 @change_user(i8* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** @username, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** @username, align 8
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %25 ]
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %74, %30
  %32 = load i32, i32* %1, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurConf, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurConf, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurConf, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = call i64 @init_listening_connection(i64 %45, i32* @ct_memcache_server, i32* %52)
  %54 = icmp sge i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i64, i64* @Connections, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurConf, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %57, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CurConf, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i64 %66, i64* %73, align 8
  br label %74

74:                                               ; preds = %37
  %75 = load i32, i32* %1, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %1, align 4
  br label %31

77:                                               ; preds = %31
  %78 = call i32 (...) @get_utime_monotonic()
  %79 = call i32 (...) @create_all_outbound_connections()
  %80 = load i32, i32* @SIGINT, align 4
  %81 = load i32, i32* @sigint_handler, align 4
  %82 = call i32 @signal(i32 %80, i32 %81)
  %83 = load i32, i32* @SIGTERM, align 4
  %84 = load i32, i32* @sigterm_handler, align 4
  %85 = call i32 @signal(i32 %83, i32 %84)
  %86 = load i32, i32* @SIGUSR1, align 4
  %87 = load i32, i32* @sigusr1_handler, align 4
  %88 = call i32 @signal(i32 %86, i32 %87)
  %89 = load i32, i32* @SIGUSR2, align 4
  %90 = load i32, i32* @sigusr2_handler, align 4
  %91 = call i32 @signal(i32 %89, i32 %90)
  %92 = load i32, i32* @SIGPIPE, align 4
  %93 = load i32, i32* @SIG_IGN, align 4
  %94 = call i32 @signal(i32 %92, i32 %93)
  %95 = load i64, i64* @daemonize, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %77
  %98 = load i32, i32* @SIGHUP, align 4
  %99 = load i32, i32* @sighup_handler, align 4
  %100 = call i32 @signal(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %77
  store i32 0, i32* %1, align 4
  br label %102

102:                                              ; preds = %150, %101
  %103 = load i64, i64* @verbosity, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32, i32* %1, align 4
  %107 = and i32 %106, 255
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @stderr, align 4
  %111 = load i32, i32* @active_connections, align 4
  %112 = load i32, i32* @maxconn, align 4
  %113 = load i32, i32* @NB_used, align 4
  %114 = load i32, i32* @NB_alloc, align 4
  %115 = load i32, i32* @NB_max, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %109, %105, %102
  %118 = call i32 @epoll_work(i32 57)
  %119 = load double, double* @precise_now, align 8
  %120 = load double, double* %3, align 8
  %121 = fcmp ogt double %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = call i32 (...) @create_all_outbound_connections()
  %124 = load double, double* @precise_now, align 8
  %125 = fadd double %124, 5.000000e-02
  %126 = call double (...) @drand48()
  %127 = fmul double 2.000000e-02, %126
  %128 = fadd double %125, %127
  store double %128, double* %3, align 8
  br label %129

129:                                              ; preds = %122, %117
  %130 = load i32, i32* @now, align 4
  %131 = load i32, i32* %2, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* @now, align 4
  store i32 %134, i32* %2, align 4
  %135 = call i32 (...) @cron()
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i64, i64* @need_reload_config, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @do_reload_config(i32 1)
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i64, i64* @quit_steps, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i64, i64* @quit_steps, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* @quit_steps, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  br label %153

149:                                              ; preds = %144, %141
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %1, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %1, align 4
  br label %102

153:                                              ; preds = %148
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local double @drand48(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @init_listening_connection(i64, i32*, i32*) #1

declare dso_local i32 @get_utime_monotonic(...) #1

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @do_reload_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
