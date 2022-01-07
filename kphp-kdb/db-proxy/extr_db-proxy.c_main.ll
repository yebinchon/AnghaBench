; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"b:c:l:p:rs:n:dCRThu:v\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@memcache_port = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@sql_username_r = common dso_local global i32 0, align 4
@sql_username = common dso_local global i32 0, align 4
@sql_password_r = common dso_local global i32 0, align 4
@sql_password = common dso_local global i32 0, align 4
@sql_database_r = common dso_local global i32 0, align 4
@sql_database = common dso_local global i32 0, align 4
@replicator_mode = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@test_mode = common dso_local global i32 0, align 4
@round_robin = common dso_local global i32 0, align 4
@daemonize = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@config_filename = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"config check failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"config loaded!\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@settings_addr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@sfd = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"created listening socket at %s:%d, fd=%d\0A\00", align 1
@memcache_sfd = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"cannot open memcache server socket at port %d: %m\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"created memcache listening socket at %s:%d, fd=%d\0A\00", align 1
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @set_debug_handlers()
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  br label %12

12:                                               ; preds = %82, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %83

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %82 [
    i32 118, label %19
    i32 104, label %22
    i32 98, label %24
    i32 99, label %32
    i32 112, label %45
    i32 115, label %49
    i32 110, label %53
    i32 82, label %62
    i32 117, label %68
    i32 108, label %70
    i32 84, label %72
    i32 67, label %75
    i32 114, label %76
    i32 100, label %79
  ]

19:                                               ; preds = %17
  %20 = load i64, i64* @verbosity, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @verbosity, align 8
  br label %82

22:                                               ; preds = %17
  %23 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %181

24:                                               ; preds = %17
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i8* @atoi(i8* %25)
  store i8* %26, i8** @backlog, align 8
  %27 = load i8*, i8** @backlog, align 8
  %28 = icmp ule i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** @BACKLOG, align 8
  store i8* %30, i8** @backlog, align 8
  br label %31

31:                                               ; preds = %29, %24
  br label %82

32:                                               ; preds = %17
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i8* @atoi(i8* %33)
  %35 = ptrtoint i8* %34 to i64
  store i64 %35, i64* @maxconn, align 8
  %36 = load i64, i64* @maxconn, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* @maxconn, align 8
  %40 = load i64, i64* @MAX_CONNECTIONS, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %32
  %43 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %43, i64* @maxconn, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %82

45:                                               ; preds = %17
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i8* @atoi(i8* %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* @port, align 4
  br label %82

49:                                               ; preds = %17
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i8* @atoi(i8* %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* @memcache_port, align 4
  br label %82

53:                                               ; preds = %17
  store i32 0, i32* @errno, align 4
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i8* @atoi(i8* %54)
  %56 = call i32 @nice(i8* %55)
  %57 = load i32, i32* @errno, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %53
  br label %82

62:                                               ; preds = %17
  %63 = load i32, i32* @sql_username_r, align 4
  store i32 %63, i32* @sql_username, align 4
  %64 = load i32, i32* @sql_password_r, align 4
  store i32 %64, i32* @sql_password, align 4
  %65 = load i32, i32* @sql_database_r, align 4
  store i32 %65, i32* @sql_database, align 4
  %66 = load i32, i32* @replicator_mode, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @replicator_mode, align 4
  br label %82

68:                                               ; preds = %17
  %69 = load i8*, i8** @optarg, align 8
  store i8* %69, i8** @username, align 8
  br label %82

70:                                               ; preds = %17
  %71 = load i8*, i8** @optarg, align 8
  store i8* %71, i8** @logname, align 8
  br label %82

72:                                               ; preds = %17
  %73 = load i32, i32* @test_mode, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @test_mode, align 4
  br label %82

75:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %82

76:                                               ; preds = %17
  %77 = load i32, i32* @round_robin, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @round_robin, align 4
  br label %82

79:                                               ; preds = %17
  %80 = load i32, i32* @daemonize, align 4
  %81 = xor i32 %80, 1
  store i32 %81, i32* @daemonize, align 4
  br label %82

82:                                               ; preds = %79, %17, %76, %75, %72, %70, %68, %62, %61, %49, %45, %44, %31, %19
  br label %12

83:                                               ; preds = %12
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @optind, align 4
  %86 = add nsw i32 %85, 1
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %181

90:                                               ; preds = %83
  %91 = call i32 (...) @init_dyn_data()
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* @optind, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** @config_filename, align 8
  %97 = call i32 @do_reload_config(i32 0)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %181

105:                                              ; preds = %90
  %106 = load i64, i64* @verbosity, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %181

115:                                              ; preds = %111
  %116 = call i32 @aes_load_pwd_file(i32 0)
  %117 = load i64, i64* @maxconn, align 8
  %118 = add nsw i64 %117, 16
  %119 = call i64 @raise_file_rlimit(i64 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load i32, i32* @test_mode, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @stderr, align 4
  %126 = load i64, i64* @maxconn, align 8
  %127 = add nsw i64 %126, 16
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %127)
  %129 = call i32 @exit(i32 1) #3
  unreachable

130:                                              ; preds = %121, %115
  %131 = load i32, i32* @port, align 4
  %132 = load i8*, i8** @backlog, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %134 = call i64 @server_socket(i32 %131, i32 %133, i8* %132, i32 0)
  store i64 %134, i64* @sfd, align 8
  %135 = load i64, i64* @sfd, align 8
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i32, i32* @stderr, align 4
  %139 = load i32, i32* @port, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = call i32 @exit(i32 1) #3
  unreachable

142:                                              ; preds = %130
  %143 = load i64, i64* @verbosity, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i32, i32* @stderr, align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %148 = call i8* @conv_addr(i32 %147, i32 0)
  %149 = load i32, i32* @port, align 4
  %150 = load i64, i64* @sfd, align 8
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %148, i32 %149, i64 %150)
  br label %152

152:                                              ; preds = %145, %142
  %153 = load i32, i32* @memcache_port, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %152
  %156 = load i32, i32* @memcache_port, align 4
  %157 = load i8*, i8** @backlog, align 8
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %159 = call i64 @server_socket(i32 %156, i32 %158, i8* %157, i32 0)
  store i64 %159, i64* @memcache_sfd, align 8
  %160 = load i64, i64* @memcache_sfd, align 8
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load i32, i32* @stderr, align 4
  %164 = load i32, i32* @memcache_port, align 4
  %165 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %164)
  %166 = call i32 @exit(i32 1) #3
  unreachable

167:                                              ; preds = %155
  %168 = load i64, i64* @verbosity, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, i32* @stderr, align 4
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %173 = call i8* @conv_addr(i32 %172, i32 0)
  %174 = load i32, i32* @memcache_port, align 4
  %175 = load i64, i64* @memcache_sfd, align 8
  %176 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %173, i32 %174, i64 %175)
  br label %177

177:                                              ; preds = %170, %167
  br label %178

178:                                              ; preds = %177, %152
  %179 = call i32 @time(i32 0)
  store i32 %179, i32* @start_time, align 4
  %180 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %178, %114, %100, %88, %22
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @nice(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @do_reload_config(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i32, i32, i8*, i32) #1

declare dso_local i8* @conv_addr(i32, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
