; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_cli.c_run_server.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_cli.c_run_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"socket(2) failed\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"setsockopt(SO_REUSEADDR) failed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"bind(2) failed\00", align 1
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"listen(2) failed\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"server started on port %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"waiting for connections\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32, i32*, i8*, i32*, i32)* @run_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_server(%struct.sockaddr* %0, i32 %1, i32* %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 1, i32* %16, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = call i32 @socket(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %14, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %70

25:                                               ; preds = %6
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @SOL_SOCKET, align 4
  %28 = load i32, i32* @SO_REUSEADDR, align 4
  %29 = call i64 @setsockopt(i32 %26, i32 %27, i32 %28, i32* %16, i32 4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %70

33:                                               ; preds = %25
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @bind(i32 %34, %struct.sockaddr* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %70

41:                                               ; preds = %33
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @SOMAXCONN, align 4
  %44 = call i64 @listen(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %70

48:                                               ; preds = %41
  %49 = load i32, i32* @stderr, align 4
  %50 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %51 = bitcast %struct.sockaddr* %50 to %struct.sockaddr_in*
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %69
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @accept(i32 %59, i32* null, i32 0)
  store i32 %60, i32* %15, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @handle_connection(i32 %63, i32* %64, i32* null, i8* %65, i32* %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %62, %56
  br label %56

70:                                               ; preds = %46, %39, %31, %23
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @accept(i32, i32*, i32) #1

declare dso_local i32 @handle_connection(i32, i32*, i32*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
