; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.in_addr, i8* }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64, i32, i64, i32 }

@progname = common dso_local global i8* null, align 8
@daemonize = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"A:S:a:b:c:l:p:dhu:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%16llx\00", align 1
@auth_key_id = common dso_local global i64 0, align 8
@session_id = common dso_local global i64 0, align 8
@hostname = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@logname = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@default_ct = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@username = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@additional = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"auth_key_id: 0x%llx, session_id: 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@start_time = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"cannot resolve %s\0A\00", align 1
@targ = common dso_local global i32 0, align 4
@compiler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Error in \22%s\22\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@tl_completion = common dso_local global i32 0, align 4
@rl_attempted_completion_function = common dso_local global i32 0, align 4
@unserialize_buff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostent*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (...) @set_debug_handlers()
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  store i64 0, i64* @daemonize, align 8
  store i64 0, i64* @errno, align 8
  br label %12

12:                                               ; preds = %62, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %63

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %62 [
    i32 65, label %19
    i32 83, label %22
    i32 97, label %25
    i32 98, label %29
    i32 99, label %37
    i32 104, label %50
    i32 108, label %52
    i32 112, label %54
    i32 117, label %57
    i32 118, label %59
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* @auth_key_id)
  br label %62

22:                                               ; preds = %17
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* @session_id)
  br label %62

25:                                               ; preds = %17
  %26 = load i8*, i8** @hostname, align 8
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @strncpy(i8* %26, i8* %27, i32 255)
  br label %62

29:                                               ; preds = %17
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i8* @atoi(i8* %30)
  store i8* %31, i8** @backlog, align 8
  %32 = load i8*, i8** @backlog, align 8
  %33 = icmp ule i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** @BACKLOG, align 8
  store i8* %35, i8** @backlog, align 8
  br label %36

36:                                               ; preds = %34, %29
  br label %62

37:                                               ; preds = %17
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i8* @atoi(i8* %38)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* @maxconn, align 8
  %41 = load i64, i64* @maxconn, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* @maxconn, align 8
  %45 = load i64, i64* @MAX_CONNECTIONS, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %37
  %48 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %48, i64* @maxconn, align 8
  br label %49

49:                                               ; preds = %47, %43
  br label %62

50:                                               ; preds = %17
  %51 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %164

52:                                               ; preds = %17
  %53 = load i8*, i8** @optarg, align 8
  store i8* %53, i8** @logname, align 8
  br label %62

54:                                               ; preds = %17
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i8* @atoi(i8* %55)
  store i8* %56, i8** @port, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @default_ct, i32 0, i32 1), align 8
  br label %62

57:                                               ; preds = %17
  %58 = load i8*, i8** @optarg, align 8
  store i8* %58, i8** @username, align 8
  br label %62

59:                                               ; preds = %17
  %60 = load i32, i32* @verbosity, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @verbosity, align 4
  br label %62

62:                                               ; preds = %17, %59, %57, %54, %52, %49, %36, %25, %22, %19
  br label %12

63:                                               ; preds = %12
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @optind, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 (...) @usage()
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i64, i64* @auth_key_id, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i64 0, i64* @additional, align 8
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i64, i64* @auth_key_id, align 8
  %76 = load i64, i64* @session_id, align 8
  %77 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %75, i64 %76)
  %78 = call i32 (...) @init_dyn_data()
  %79 = load i64, i64* @maxconn, align 8
  %80 = add nsw i64 %79, 16
  %81 = call i64 @raise_file_rlimit(i64 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i64, i64* @maxconn, align 8
  %85 = add nsw i64 %84, 16
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = call i32 @exit(i32 1) #4
  unreachable

89:                                               ; preds = %74
  %90 = call i32 @aes_load_pwd_file(i32 0)
  %91 = load i8*, i8** @username, align 8
  %92 = call i64 @change_user(i8* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i8*, i8** @username, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i8*, i8** @username, align 8
  br label %100

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i8* [ %98, %97 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %99 ]
  %102 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = call i32 @exit(i32 1) #4
  unreachable

104:                                              ; preds = %89
  %105 = call i32 (...) @open_log()
  %106 = call i32 @time(i32 0)
  store i32 %106, i32* @start_time, align 4
  %107 = load i8*, i8** @hostname, align 8
  %108 = call %struct.hostent* @gethostbyname(i8* %107)
  store %struct.hostent* %108, %struct.hostent** %7, align 8
  %109 = icmp ne %struct.hostent* %108, null
  br i1 %109, label %110, label %131

110:                                              ; preds = %104
  %111 = load %struct.hostent*, %struct.hostent** %7, align 8
  %112 = getelementptr inbounds %struct.hostent, %struct.hostent* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AF_INET, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %131, label %116

116:                                              ; preds = %110
  %117 = load %struct.hostent*, %struct.hostent** %7, align 8
  %118 = getelementptr inbounds %struct.hostent, %struct.hostent* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 4
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = load %struct.hostent*, %struct.hostent** %7, align 8
  %123 = getelementptr inbounds %struct.hostent, %struct.hostent* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.hostent*, %struct.hostent** %7, align 8
  %128 = getelementptr inbounds %struct.hostent, %struct.hostent* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126, %121, %116, %110, %104
  %132 = load i8*, i8** @hostname, align 8
  %133 = call i32 @kprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %132)
  %134 = call i32 @exit(i32 2) #4
  unreachable

135:                                              ; preds = %126
  %136 = load %struct.hostent*, %struct.hostent** %7, align 8
  %137 = getelementptr inbounds %struct.hostent, %struct.hostent* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to %struct.in_addr*
  %140 = bitcast %struct.in_addr* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_3__* @default_ct to i8*), i8* align 4 %140, i64 4, i1 false)
  %141 = call i32 @create_target(%struct.TYPE_3__* @default_ct, i32 0)
  store i32 %141, i32* @targ, align 4
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* @optind, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @tl_schema_read_from_file(i32* @compiler, i8* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %135
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* @optind, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @kprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @stderr, align 4
  %157 = call i32 @tl_compiler_print_errors(i32* @compiler, i32 %156)
  %158 = call i32 @exit(i32 1) #4
  unreachable

159:                                              ; preds = %135
  %160 = load i32, i32* @tl_completion, align 4
  store i32 %160, i32* @rl_attempted_completion_function, align 4
  %161 = call i32 @tl_string_buffer_init(i32* @unserialize_buff)
  %162 = call i32 (...) @read_rc_file()
  %163 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %50
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i64) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @open_log(...) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @create_target(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @tl_schema_read_from_file(i32*, i8*) #1

declare dso_local i32 @tl_compiler_print_errors(i32*, i32) #1

declare dso_local i32 @tl_string_buffer_init(i32*) #1

declare dso_local i32 @read_rc_file(...) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
