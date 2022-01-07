; ModuleID = '/home/carl/AnghaBench/i3/testcases/extr_inject_randr1.5.c_main.c'
source_filename = "/home/carl/AnghaBench/i3/testcases/extr_inject_randr1.5.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8*, i32, i32, i32 }
%struct.sockaddr_un = type { i8*, i32 }
%struct.ev_loop = type { i32 }
%struct.sockaddr = type { i32 }

@main.long_options = internal global [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* inttoptr (i64 128 to i8*), i32 0, i32 0, i32 0 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* inttoptr (i64 128 to i8*), i32 0, i32 0, i32 0 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"getmonitors_reply\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"getoutputinfo_reply\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optarg = common dso_local global i32 0, align 4
@getmonitors_reply = common dso_local global i32 0, align 4
@getoutputinfo_reply = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"syntax: %s [options] <command>\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"socket(AF_UNIX)\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not set FD_CLOEXEC\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"/tmp/.X11-unix/X%d\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"bind(%s)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Successfuly bound to %s\0A\00", align 1
@sun_path = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@cleanup_socket = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"fork()\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"exec()\00", align 1
@child_cb = common dso_local global i32 0, align 4
@uds_connection_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_un, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca %struct.ev_loop*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %52, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @getopt_long(i32 %21, i8** %22, i8* %23, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %8)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %49 [
    i32 0, label %28
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* @main.long_options, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @optarg, align 4
  %39 = call i32 @must_read_reply(i32 %38, i32* @getmonitors_reply)
  br label %48

40:                                               ; preds = %28
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @optarg, align 4
  %46 = call i32 @must_read_reply(i32 %45, i32* @getoutputinfo_reply)
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %37
  br label %52

49:                                               ; preds = %26
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable

52:                                               ; preds = %48
  br label %20

53:                                               ; preds = %20
  %54 = load i32, i32* @optind, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* @EXIT_FAILURE, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @errx(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i32, i32* @AF_LOCAL, align 4
  %65 = load i32, i32* @SOCK_STREAM, align 4
  %66 = call i32 @socket(i32 %64, i32 %65, i32 0)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EXIT_FAILURE, align 4
  %71 = call i32 @err(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @F_SETFD, align 4
  %75 = load i32, i32* @FD_CLOEXEC, align 4
  %76 = call i64 @fcntl(i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %72
  %81 = call i32 @memset(%struct.sockaddr_un* %11, i32 0, i32 16)
  %82 = load i32, i32* @AF_UNIX, align 4
  %83 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %109, %80
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 100
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @snprintf(i8* %89, i32 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = bitcast %struct.sockaddr_un* %11 to %struct.sockaddr*
  %94 = call i32 @bind(i32 %92, %struct.sockaddr* %93, i32 16)
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  br label %108

100:                                              ; preds = %87
  store i32 1, i32* %13, align 4
  %101 = load i32, i32* @stderr, align 4
  %102 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  %105 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %11, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @sstrdup(i8* %106)
  store i32 %107, i32* @sun_path, align 4
  br label %112

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %84

112:                                              ; preds = %100, %84
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @EXIT_FAILURE, align 4
  %117 = call i32 @err(i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* @cleanup_socket, align 4
  %120 = call i32 @atexit(i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @listen(i32 %121, i32 1)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @EXIT_FAILURE, align 4
  %126 = call i32 @err(i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %118
  %128 = call i32 (...) @fork()
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* @EXIT_FAILURE, align 4
  %133 = call i32 @err(i32 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %127
  %135 = load i32, i32* %14, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @sasprintf(i8** %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %138)
  %140 = load i8*, i8** %15, align 8
  %141 = call i32 @setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %140, i32 1)
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i8**, i8*** %5, align 8
  %145 = load i32, i32* @optind, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8** %147, i8*** %16, align 8
  %148 = load i8**, i8*** %16, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i8**, i8*** %16, align 8
  %152 = call i32 @execvp(i8* %150, i8** %151)
  %153 = load i32, i32* @EXIT_FAILURE, align 4
  %154 = call i32 @err(i32 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %155

155:                                              ; preds = %137, %134
  %156 = call %struct.ev_loop* @ev_default_loop(i32 0)
  store %struct.ev_loop* %156, %struct.ev_loop** %17, align 8
  %157 = load i32, i32* @child_cb, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @ev_child_init(i32* %18, i32 %157, i32 %158, i32 0)
  %160 = load %struct.ev_loop*, %struct.ev_loop** %17, align 8
  %161 = call i32 @ev_child_start(%struct.ev_loop* %160, i32* %18)
  %162 = load i32, i32* @uds_connection_cb, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @EV_READ, align 4
  %165 = call i32 @ev_io_init(i32* %19, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.ev_loop*, %struct.ev_loop** %17, align 8
  %167 = call i32 @ev_io_start(%struct.ev_loop* %166, i32* %19)
  %168 = load %struct.ev_loop*, %struct.ev_loop** %17, align 8
  %169 = call i32 @ev_run(%struct.ev_loop* %168, i32 0)
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @must_read_reply(i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @sstrdup(i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @sasprintf(i8**, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local %struct.ev_loop* @ev_default_loop(i32) #1

declare dso_local i32 @ev_child_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ev_child_start(%struct.ev_loop*, i32*) #1

declare dso_local i32 @ev_io_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ev_io_start(%struct.ev_loop*, i32*) #1

declare dso_local i32 @ev_run(%struct.ev_loop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
