; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dhcp/extr_dhcp-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dhcp/extr_dhcp-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"debug-udpdump\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"listen 67/68 ports and dump received packets to the log\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"debug-filedump\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"parse packet from file (filename is given in <config> parameter) and exit\00", align 1
@f_parse_option = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@debug_mode = common dso_local global i64 0, align 8
@DEBUG_FILEDUMP = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8
@DEBUG_UDPDUMP = common dso_local global i64 0, align 8
@DHCP_PORT = common dso_local global i64 0, align 8
@PRIVILEGED_TCP_PORTS = common dso_local global i64 0, align 8
@maxconn = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@username = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"fatal: fail to load config file '%s'.\0A\00", align 1
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
  %10 = load i32, i32* @no_argument, align 4
  %11 = call i32 @parse_option(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10, i32 0, float 8.500000e+01, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @no_argument, align 4
  %13 = call i32 @parse_option(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 0, float 7.000000e+01, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* @f_parse_option, align 4
  %17 = call i32 @parse_engine_options_long(i32 %14, i8** %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @optind, align 4
  %20 = add nsw i32 %19, 1
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @usage()
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i64, i64* @debug_mode, align 8
  %26 = load i64, i64* @DEBUG_FILEDUMP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i8**, i8*** %5, align 8
  %30 = load i32, i32* @optind, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @file_dump(i8* %33)
  %35 = icmp slt i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %24
  %40 = load i64, i64* @port, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* @debug_mode, align 8
  %44 = load i64, i64* @DEBUG_UDPDUMP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %39
  %47 = load i64, i64* @DHCP_PORT, align 8
  store i64 %47, i64* @port, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64, i64* @port, align 8
  %50 = load i64, i64* @PRIVILEGED_TCP_PORTS, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (...) @open_server_sockets()
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i8*, i8** @maxconn, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 16
  %57 = call i64 @raise_file_rlimit(i8* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** @maxconn, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 16
  %62 = call i32 @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %54
  %65 = call i32 @aes_load_pwd_file(i32 0)
  %66 = load i8*, i8** @username, align 8
  %67 = call i64 @change_user(i8* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i8*, i8** @username, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i8*, i8** @username, align 8
  br label %75

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i8* [ %73, %72 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %74 ]
  %77 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %64
  %80 = call i32 (...) @init_dyn_data()
  %81 = call i32 @init_msg_buffers(i32 0)
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* @optind, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @dhcp_config_load(i8* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* @optind, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @kprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %79
  %98 = call i32 @time(i32* null)
  store i32 %98, i32* @start_time, align 4
  %99 = call i32 (...) @start_server()
  ret i32 0
}

declare dso_local i32 @signals_init(...) #1

declare dso_local i32 @parse_option(i8*, i32, i32, float, i8*) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @file_dump(i8*) #1

declare dso_local i32 @open_server_sockets(...) #1

declare dso_local i64 @raise_file_rlimit(i8*) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @init_msg_buffers(i32) #1

declare dso_local i64 @dhcp_config_load(i8*) #1

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
