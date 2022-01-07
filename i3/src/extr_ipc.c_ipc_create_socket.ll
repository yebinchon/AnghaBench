; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_create_socket.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_create_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@current_socketpath = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Creating IPC-socket at %s\0A\00", align 1
@DEFAULT_DIR_MODE = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_create_socket(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** @current_socketpath, align 8
  %10 = call i32 @FREE(i8* %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @resolve_tilde(i8* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @DLOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @sstrdup(i8* %15)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @dirname(i8* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @path_exists(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @DEFAULT_DIR_MODE, align 4
  %25 = call i32 @mkdirp(i8* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @unlink(i8* %29)
  %31 = load i32, i32* @AF_LOCAL, align 4
  %32 = load i32, i32* @SOCK_STREAM, align 4
  %33 = call i32 @socket(i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @free(i8* %37)
  store i32 -1, i32* %2, align 4
  br label %72

39:                                               ; preds = %26
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @F_SETFD, align 4
  %42 = load i32, i32* @FD_CLOEXEC, align 4
  %43 = call i32 @fcntl(i32 %40, i32 %41, i32 %42)
  %44 = call i32 @memset(%struct.sockaddr_un* %8, i32 0, i32 8)
  %45 = load i32, i32* @AF_LOCAL, align 4
  %46 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strncpy(i32 %48, i8* %49, i32 3)
  %51 = load i32, i32* %4, align 4
  %52 = bitcast %struct.sockaddr_un* %8 to %struct.sockaddr*
  %53 = call i64 @bind(i32 %51, %struct.sockaddr* %52, i32 8)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @free(i8* %57)
  store i32 -1, i32* %2, align 4
  br label %72

59:                                               ; preds = %39
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @set_nonblock(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @listen(i32 %62, i32 5)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @free(i8* %67)
  store i32 -1, i32* %2, align 4
  br label %72

69:                                               ; preds = %59
  %70 = load i8*, i8** %5, align 8
  store i8* %70, i8** @current_socketpath, align 8
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %65, %55, %35
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @FREE(i8*) #1

declare dso_local i8* @resolve_tilde(i8*) #1

declare dso_local i32 @DLOG(i8*, i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @path_exists(i8*) #1

declare dso_local i32 @mkdirp(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @set_nonblock(i32) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
