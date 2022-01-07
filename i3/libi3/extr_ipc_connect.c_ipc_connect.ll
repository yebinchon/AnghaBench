; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_ipc_connect.c_ipc_connect.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_ipc_connect.c_ipc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"I3SOCK\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"I3_SOCKET_PATH\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"/tmp/i3-ipc.sock\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not create socket\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Could not connect to i3 on socket %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_connect(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @sstrdup(i8* %9)
  store i8* %10, i8** %3, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @sstrdup(i8* %18)
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i8* @root_atom_contents(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i8*, i8** %3, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i8* @sstrdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* @AF_LOCAL, align 4
  %33 = load i32, i32* @SOCK_STREAM, align 4
  %34 = call i32 @socket(i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 (i32, i8*, ...) @err(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @F_SETFD, align 4
  %43 = load i32, i32* @FD_CLOEXEC, align 4
  %44 = call i32 @fcntl(i32 %41, i32 %42, i32 %43)
  %45 = call i32 @memset(%struct.sockaddr_un* %5, i32 0, i32 8)
  %46 = load i32, i32* @AF_LOCAL, align 4
  %47 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strncpy(i32 %49, i8* %50, i32 3)
  %52 = load i32, i32* %4, align 4
  %53 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*
  %54 = call i64 @connect(i32 %52, %struct.sockaddr* %53, i32 8)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %40
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 (i32, i8*, ...) @err(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %40
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @root_atom_contents(i8*, i32*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
