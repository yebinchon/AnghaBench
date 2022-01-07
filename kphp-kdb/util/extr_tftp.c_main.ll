; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"server-port-range\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"sets server port's range. Default range is '%d-%d'. Every UDP connection use one port.\00", align 1
@min_port = common dso_local global i32 0, align 4
@max_port = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"client-blksize\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"sets packet block size\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"client-timeout\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"sets timeout in seconds\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"stats-port\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"sets port for getting stats using memcache queries\00", align 1
@f_parse_option = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@SERVER = common dso_local global i64 0, align 8
@working_mode = common dso_local global i64 0, align 8
@source_dirname = common dso_local global i8* null, align 8
@input_filename = common dso_local global i8* null, align 8
@output_filename = common dso_local global i8* null, align 8
@CLIENT = common dso_local global i64 0, align 8
@port = common dso_local global i8* null, align 8
@TFTP_PORT = common dso_local global i8* null, align 8
@server_sfd = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"Fail to open UDP server socket on the port %d.\0A\00", align 1
@maxconn = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@username = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @signals_init()
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  %10 = call i32 @remove_parse_option(i8 signext 114)
  %11 = call i32 @remove_parse_option(i8 signext 97)
  %12 = call i32 @remove_parse_option(i8 signext 66)
  %13 = load i32, i32* @required_argument, align 4
  %14 = load i32, i32* @min_port, align 4
  %15 = load i32, i32* @max_port, align 4
  %16 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i32 0, i8 signext 82, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* @required_argument, align 4
  %18 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 0, i8 signext 66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* @required_argument, align 4
  %20 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %19, i32 0, i8 signext 84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32, i32* @required_argument, align 4
  %22 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %21, i32 0, i8 signext 80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* @f_parse_option, align 4
  %26 = call i32 @parse_engine_options_long(i32 %23, i8** %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @optind, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i64, i64* @SERVER, align 8
  store i64 %32, i64* @working_mode, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* @optind, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** @source_dirname, align 8
  br label %60

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @optind, align 4
  %41 = add nsw i32 %40, 2
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* @optind, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** @input_filename, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** @output_filename, align 8
  %55 = call i32 (...) @compute_tmp_filename()
  %56 = load i64, i64* @CLIENT, align 8
  store i64 %56, i64* @working_mode, align 8
  br label %59

57:                                               ; preds = %38
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %43
  br label %60

60:                                               ; preds = %59, %31
  %61 = call i32 (...) @init_epoll()
  %62 = load i8*, i8** @port, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** @TFTP_PORT, align 8
  store i8* %65, i8** @port, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i64, i64* @working_mode, align 8
  %68 = load i64, i64* @SERVER, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i8*, i8** @port, align 8
  %72 = call i64 @open_udp_server_socket(i8* %71)
  store i64 %72, i64* @server_sfd, align 8
  %73 = load i64, i64* @server_sfd, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i8*, i8** @port, align 8
  %77 = call i32 @kprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %66
  %81 = load i8*, i8** @maxconn, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 16
  %83 = call i64 @raise_file_rlimit(i8* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i8*, i8** @maxconn, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 16
  %88 = call i32 @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %87)
  %89 = call i32 @exit(i32 1) #3
  unreachable

90:                                               ; preds = %80
  %91 = call i32 @aes_load_pwd_file(i32 0)
  %92 = load i8*, i8** @username, align 8
  %93 = call i64 @change_user(i8* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i8*, i8** @username, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i8*, i8** @username, align 8
  br label %101

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i8* [ %99, %98 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %100 ]
  %103 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %90
  %106 = call i32 (...) @init_dyn_data()
  %107 = load i64, i64* @working_mode, align 8
  %108 = load i64, i64* @SERVER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = call i64 (...) @check_source_dirname()
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %105
  %117 = call i32 @init_msg_buffers(i32 0)
  %118 = call i32 @time(i32* null)
  store i32 %118, i32* @start_time, align 4
  %119 = call i32 (...) @start_server()
  ret i32 0
}

declare dso_local i32 @signals_init(...) #1

declare dso_local i32 @remove_parse_option(i8 signext) #1

declare dso_local i32 @parse_option(i8*, i32, i32, i8 signext, i8*, ...) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @compute_tmp_filename(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @init_epoll(...) #1

declare dso_local i64 @open_udp_server_socket(i8*) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @raise_file_rlimit(i8*) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @check_source_dirname(...) #1

declare dso_local i32 @init_msg_buffers(i32) #1

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
