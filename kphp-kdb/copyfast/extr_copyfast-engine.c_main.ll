; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8*, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64, i32, i64, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"vdc:a:p:E:P:N:u:l:\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@hostname = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@server_port = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@PID = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@start_time = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"cannot resolve %s\0A\00", align 1
@default_ct = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@main_targ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostent*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 (...) @set_debug_handlers()
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @progname, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %65, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %65 [
    i32 118, label %22
    i32 99, label %25
    i32 97, label %38
    i32 112, label %42
    i32 80, label %45
    i32 69, label %48
    i32 78, label %52
    i32 117, label %56
    i32 108, label %58
    i32 104, label %60
    i32 100, label %62
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @verbosity, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @verbosity, align 4
  br label %65

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @atoi(i8* %26)
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* @maxconn, align 8
  %29 = load i64, i64* @maxconn, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* @maxconn, align 8
  %33 = load i64, i64* @MAX_CONNECTIONS, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %25
  %36 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %36, i64* @maxconn, align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %65

38:                                               ; preds = %20
  %39 = load i8*, i8** @hostname, align 8
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @strncpy(i8* %39, i8* %40, i32 255)
  br label %65

42:                                               ; preds = %20
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i8* @atoi(i8* %43)
  store i8* %44, i8** @port, align 8
  br label %65

45:                                               ; preds = %20
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i8* @atoi(i8* %46)
  store i8* %47, i8** @server_port, align 8
  br label %65

48:                                               ; preds = %20
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @strncpy(i8* %49, i8* %50, i32 255)
  store i32 1, i32* %9, align 4
  br label %65

52:                                               ; preds = %20
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i32 @strncpy(i8* %53, i8* %54, i32 255)
  br label %65

56:                                               ; preds = %20
  %57 = load i8*, i8** @optarg, align 8
  store i8* %57, i8** @username, align 8
  br label %65

58:                                               ; preds = %20
  %59 = load i8*, i8** @optarg, align 8
  store i8* %59, i8** @logname, align 8
  br label %65

60:                                               ; preds = %20
  %61 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %152

62:                                               ; preds = %20
  %63 = load i32, i32* @daemonize, align 4
  %64 = xor i32 %63, 1
  store i32 %64, i32* @daemonize, align 4
  br label %65

65:                                               ; preds = %62, %20, %58, %56, %52, %48, %45, %42, %38, %37, %22
  br label %15

66:                                               ; preds = %15
  %67 = load i8*, i8** @port, align 8
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PID, i32 0, i32 0), align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @optind, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %152

73:                                               ; preds = %66
  %74 = load i64, i64* @maxconn, align 8
  %75 = add nsw i64 %74, 16
  %76 = call i64 @raise_file_rlimit(i64 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @stderr, align 4
  %80 = load i64, i64* @maxconn, align 8
  %81 = add nsw i64 %80, 16
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  %84 = call i32 @exit(i32 1) #4
  unreachable

85:                                               ; preds = %73
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 @aes_load_pwd_file(i8* null)
  br label %93

90:                                               ; preds = %85
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %92 = call i32 @aes_load_pwd_file(i8* %91)
  br label %93

93:                                               ; preds = %90, %88
  %94 = call i32 (...) @init_dyn_data()
  %95 = load i32, i32* @optind, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %107, %93
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @add_cluster(i32 0, i32 0, i8* %105, i32 0)
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %96

110:                                              ; preds = %96
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %112 = call i32 @read_network_file(i8* %111)
  %113 = call i32 @time(i32 0)
  store i32 %113, i32* @start_time, align 4
  %114 = load i8*, i8** @hostname, align 8
  %115 = call %struct.hostent* @gethostbyname(i8* %114)
  store %struct.hostent* %115, %struct.hostent** %10, align 8
  %116 = icmp ne %struct.hostent* %115, null
  br i1 %116, label %117, label %138

117:                                              ; preds = %110
  %118 = load %struct.hostent*, %struct.hostent** %10, align 8
  %119 = getelementptr inbounds %struct.hostent, %struct.hostent* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @AF_INET, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %138, label %123

123:                                              ; preds = %117
  %124 = load %struct.hostent*, %struct.hostent** %10, align 8
  %125 = getelementptr inbounds %struct.hostent, %struct.hostent* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 4
  br i1 %127, label %138, label %128

128:                                              ; preds = %123
  %129 = load %struct.hostent*, %struct.hostent** %10, align 8
  %130 = getelementptr inbounds %struct.hostent, %struct.hostent* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.hostent*, %struct.hostent** %10, align 8
  %135 = getelementptr inbounds %struct.hostent, %struct.hostent* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133, %128, %123, %117, %110
  %139 = load i32, i32* @stderr, align 4
  %140 = load i8*, i8** @hostname, align 8
  %141 = call i32 @fprintf(i32 %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  %142 = call i32 @exit(i32 2) #4
  unreachable

143:                                              ; preds = %133
  %144 = load %struct.hostent*, %struct.hostent** %10, align 8
  %145 = getelementptr inbounds %struct.hostent, %struct.hostent* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to %struct.in_addr*
  %148 = bitcast %struct.in_addr* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.in_addr* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_ct, i32 0, i32 1) to i8*), i8* align 4 %148, i64 4, i1 false)
  %149 = load i8*, i8** @server_port, align 8
  store i8* %149, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_ct, i32 0, i32 0), align 8
  %150 = call i32 @create_target(%struct.TYPE_4__* @default_ct, i32 0)
  store i32 %150, i32* @main_targ, align 4
  %151 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %143, %71, %60
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aes_load_pwd_file(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @add_cluster(i32, i32, i8*, i32) #1

declare dso_local i32 @read_network_file(i8*) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @create_target(%struct.TYPE_4__*, i32) #1

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
