; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64, i32, i64, i32 }

@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@interactive = common dso_local global i32 0, align 4
@test_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@VB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"disable%s.bin\00", align 1
@suffix = common dso_local global i8* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@disable_log = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"query%s.bin\00", align 1
@query_log = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"stat%s.bin\00", align 1
@stat_log = common dso_local global i64 0, align 8
@hostname = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"fatal: cannot resolve hostname %s: %m\0A\00", align 1
@default_ct = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@port = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@quit_steps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostent*, align 8
  %4 = call i32 (...) @init_epoll()
  %5 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %2, align 4
  %6 = load i64, i64* @daemonize, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @setsid()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i8*, i8** @username, align 8
  %12 = call i64 @change_user(i8* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* @interactive, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @test_mode, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** @username, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** @username, align 8
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 @exit(i32 1) #4
  unreachable

31:                                               ; preds = %17, %14, %10
  %32 = load i32, i32* @VB, align 4
  %33 = load i8*, i8** @suffix, align 8
  %34 = call i32 @sprintf(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @VB, align 4
  %36 = load i32, i32* @O_CREAT, align 4
  %37 = load i32, i32* @O_EXCL, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @O_WRONLY, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @open(i32 %35, i32 %40, i32 416)
  store i64 %41, i64* @disable_log, align 8
  %42 = load i32, i32* @VB, align 4
  %43 = load i8*, i8** @suffix, align 8
  %44 = call i32 @sprintf(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @VB, align 4
  %46 = load i32, i32* @O_CREAT, align 4
  %47 = load i32, i32* @O_EXCL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @O_WRONLY, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @open(i32 %45, i32 %50, i32 416)
  store i64 %51, i64* @query_log, align 8
  %52 = load i32, i32* @VB, align 4
  %53 = load i8*, i8** @suffix, align 8
  %54 = call i32 @sprintf(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @VB, align 4
  %56 = load i32, i32* @O_CREAT, align 4
  %57 = load i32, i32* @O_EXCL, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @O_WRONLY, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @open(i32 %55, i32 %60, i32 416)
  store i64 %61, i64* @stat_log, align 8
  %62 = load i64, i64* @disable_log, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %31
  %65 = load i64, i64* @query_log, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* @stat_log, align 8
  %69 = icmp sge i64 %68, 0
  br label %70

70:                                               ; preds = %67, %64, %31
  %71 = phi i1 [ false, %64 ], [ false, %31 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i8*, i8** @hostname, align 8
  %75 = call %struct.hostent* @gethostbyname(i8* %74)
  store %struct.hostent* %75, %struct.hostent** %3, align 8
  %76 = icmp ne %struct.hostent* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %70
  %78 = load %struct.hostent*, %struct.hostent** %3, align 8
  %79 = getelementptr inbounds %struct.hostent, %struct.hostent* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AF_INET, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %98, label %83

83:                                               ; preds = %77
  %84 = load %struct.hostent*, %struct.hostent** %3, align 8
  %85 = getelementptr inbounds %struct.hostent, %struct.hostent* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 4
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load %struct.hostent*, %struct.hostent** %3, align 8
  %90 = getelementptr inbounds %struct.hostent, %struct.hostent* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.hostent*, %struct.hostent** %3, align 8
  %95 = getelementptr inbounds %struct.hostent, %struct.hostent* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93, %88, %83, %77, %70
  %99 = load i32, i32* @stderr, align 4
  %100 = load i8*, i8** @hostname, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = call i32 @exit(i32 1) #4
  unreachable

103:                                              ; preds = %93
  %104 = load %struct.hostent*, %struct.hostent** %3, align 8
  %105 = getelementptr inbounds %struct.hostent, %struct.hostent* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.in_addr*
  %108 = bitcast %struct.in_addr* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.in_addr* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @default_ct, i32 0, i32 1) to i8*), i8* align 4 %108, i64 4, i1 false)
  %109 = load i32, i32* @port, align 4
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @default_ct, i32 0, i32 0), align 4
  %110 = call i32 @create_target(%struct.TYPE_3__* @default_ct, i32 0)
  store i32 %110, i32* @conn, align 4
  %111 = call i32 (...) @create_all_outbound_connections()
  %112 = load i32, i32* @SIGINT, align 4
  %113 = load i32, i32* @sigint_handler, align 4
  %114 = call i32 @signal(i32 %112, i32 %113)
  %115 = load i32, i32* @SIGTERM, align 4
  %116 = load i32, i32* @sigterm_handler, align 4
  %117 = call i32 @signal(i32 %115, i32 %116)
  %118 = load i32, i32* @SIGUSR1, align 4
  %119 = load i32, i32* @sigusr1_handler, align 4
  %120 = call i32 @signal(i32 %118, i32 %119)
  %121 = load i64, i64* @daemonize, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %103
  %124 = load i32, i32* @SIGHUP, align 4
  %125 = load i32, i32* @sighup_handler, align 4
  %126 = call i32 @signal(i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %103
  store i32 0, i32* %1, align 4
  br label %128

128:                                              ; preds = %160, %127
  %129 = load i64, i64* @verbosity, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load i32, i32* %1, align 4
  %133 = and i32 %132, 255
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @stderr, align 4
  %137 = load i32, i32* @active_connections, align 4
  %138 = load i32, i32* @maxconn, align 4
  %139 = load i32, i32* @NB_used, align 4
  %140 = load i32, i32* @NB_alloc, align 4
  %141 = load i32, i32* @NB_max, align 4
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0), i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %135, %131, %128
  %144 = call i32 @epoll_work(i32 57)
  %145 = load i32, i32* @now, align 4
  %146 = load i32, i32* %2, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* @now, align 4
  store i32 %149, i32* %2, align 4
  %150 = call i32 (...) @cron()
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i64, i64* @quit_steps, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i64, i64* @quit_steps, align 8
  %156 = add nsw i64 %155, -1
  store i64 %156, i64* @quit_steps, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  br label %163

159:                                              ; preds = %154, %151
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %1, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %1, align 4
  br label %128

163:                                              ; preds = %158
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i64 @open(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @create_target(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @create_all_outbound_connections(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
