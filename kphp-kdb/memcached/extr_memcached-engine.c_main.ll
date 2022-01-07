; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpc_disable_crc32_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"b:c:l:p:U:m:n:dfhu:vrkO:C:\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i32 0, align 4
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@port = common dso_local global i32 0, align 4
@oom_score_adj = common dso_local global i8* null, align 8
@udp_port = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@return_false_if_not_found = common dso_local global i32 0, align 4
@rpc_crc32_mode = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@dynamic_data_buffer_size = common dso_local global i32 0, align 4
@MAX_ZMALLOC_MEM = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@settings_addr = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@start_time = common dso_local global i32 0, align 4
@LAST_OPER_BUF_SIZE = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@last_oper_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* @rpc_disable_crc32_check, align 4
  br label %7

7:                                                ; preds = %88, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %89

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %88 [
    i32 118, label %14
    i32 104, label %17
    i32 98, label %19
    i32 99, label %27
    i32 109, label %40
    i32 110, label %53
    i32 112, label %62
    i32 79, label %66
    i32 85, label %69
    i32 117, label %72
    i32 108, label %74
    i32 100, label %76
    i32 102, label %79
    i32 114, label %80
    i32 67, label %81
    i32 107, label %87
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @verbosity, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @verbosity, align 4
  br label %88

17:                                               ; preds = %12
  %18 = call i32 (...) @help()
  store i32 2, i32* %3, align 4
  br label %151

19:                                               ; preds = %12
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i8* @atoi(i8* %20)
  store i8* %21, i8** @backlog, align 8
  %22 = load i8*, i8** @backlog, align 8
  %23 = icmp ule i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** @BACKLOG, align 8
  store i8* %25, i8** @backlog, align 8
  br label %26

26:                                               ; preds = %24, %19
  br label %88

27:                                               ; preds = %12
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i8* @atoi(i8* %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* @maxconn, align 4
  %31 = load i32, i32* @maxconn, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @maxconn, align 4
  %35 = load i32, i32* @MAX_CONNECTIONS, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %27
  %38 = load i32, i32* @MAX_CONNECTIONS, align 4
  store i32 %38, i32* @maxconn, align 4
  br label %39

39:                                               ; preds = %37, %33
  br label %88

40:                                               ; preds = %12
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @atoi(i8* %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* @max_memory, align 4
  %44 = call i32 (...) @get_min_memory()
  %45 = load i32, i32* @max_memory, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* @max_memory, align 4
  %47 = load i32, i32* @max_memory, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* @max_memory, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* @max_memory, align 4
  %52 = mul nsw i32 %51, 1048576
  store i32 %52, i32* @max_memory, align 4
  br label %88

53:                                               ; preds = %12
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
  br label %88

62:                                               ; preds = %12
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i8* @atoi(i8* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* @port, align 4
  br label %88

66:                                               ; preds = %12
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i8* @atoi(i8* %67)
  store i8* %68, i8** @oom_score_adj, align 8
  br label %88

69:                                               ; preds = %12
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i8* @atoi(i8* %70)
  store i8* %71, i8** @udp_port, align 8
  br label %88

72:                                               ; preds = %12
  %73 = load i8*, i8** @optarg, align 8
  store i8* %73, i8** @username, align 8
  br label %88

74:                                               ; preds = %12
  %75 = load i8*, i8** @optarg, align 8
  store i8* %75, i8** @logname, align 8
  br label %88

76:                                               ; preds = %12
  %77 = load i32, i32* @daemonize, align 4
  %78 = xor i32 %77, 1
  store i32 %78, i32* @daemonize, align 4
  br label %88

79:                                               ; preds = %12
  store i32 1, i32* @return_false_if_not_found, align 4
  br label %88

80:                                               ; preds = %12
  br label %88

81:                                               ; preds = %12
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i8* @atoi(i8* %82)
  %84 = ptrtoint i8* %83 to i32
  store i32 %84, i32* @rpc_crc32_mode, align 4
  %85 = load i32, i32* @rpc_crc32_mode, align 4
  %86 = and i32 %85, 1
  store i32 %86, i32* @rpc_disable_crc32_check, align 4
  br label %87

87:                                               ; preds = %12, %81
  br label %88

88:                                               ; preds = %12, %87, %80, %79, %76, %74, %72, %69, %66, %62, %61, %50, %39, %26, %14
  br label %7

89:                                               ; preds = %7
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @optind, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 (...) @help()
  store i32 2, i32* %3, align 4
  br label %151

95:                                               ; preds = %89
  %96 = load i8*, i8** @username, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @maxconn, align 4
  %100 = load i32, i32* @MAX_CONNECTIONS, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = call i64 (...) @geteuid()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1000, i32* @maxconn, align 4
  br label %106

106:                                              ; preds = %105, %102, %98, %95
  %107 = load i32, i32* @dynamic_data_buffer_size, align 4
  %108 = load i32, i32* @max_memory, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @max_memory, align 4
  store i32 %111, i32* @dynamic_data_buffer_size, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = load i64, i64* @MAX_ZMALLOC_MEM, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (...) @init_dyn_data()
  br label %117

117:                                              ; preds = %115, %112
  %118 = call i32 (...) @init_hash_table()
  %119 = load i32, i32* @maxconn, align 4
  %120 = add nsw i32 %119, 16
  %121 = call i64 @raise_file_rlimit(i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, i32* @stderr, align 4
  %125 = load i32, i32* @maxconn, align 4
  %126 = add nsw i32 %125, 16
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = call i32 @exit(i32 1) #3
  unreachable

129:                                              ; preds = %117
  %130 = load i8*, i8** @oom_score_adj, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i8*, i8** @oom_score_adj, align 8
  %134 = call i32 @adjust_oom_score(i8* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = call i32 @aes_load_pwd_file(i32 0)
  %137 = load i32, i32* @port, align 4
  %138 = load i32, i32* @settings_addr, align 4
  %139 = load i8*, i8** @backlog, align 8
  %140 = call i64 @server_socket(i32 %137, i32 %138, i8* %139, i32 0)
  store i64 %140, i64* @sfd, align 8
  %141 = load i64, i64* @sfd, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load i32, i32* @stderr, align 4
  %145 = load i32, i32* @port, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = call i32 @exit(i32 1) #3
  unreachable

148:                                              ; preds = %135
  %149 = call i32 @time(i32* null)
  store i32 %149, i32* @start_time, align 4
  %150 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %148, %93, %17
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @help(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @get_min_memory(...) #1

declare dso_local i32 @nice(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @init_hash_table(...) #1

declare dso_local i64 @raise_file_rlimit(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @adjust_oom_score(i8*) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @server_socket(i32, i32, i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
