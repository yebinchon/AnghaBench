; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_open_inet_listener.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_open_inet_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@H2O_SOMAXCONN = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [58 x i8] c"conf.tfo_queues not zero on platform without TCP_FASTOPEN\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to listen to %s port %s:%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@TCP_DEFER_ACCEPT = common dso_local global i32 0, align 4
@TCP_FASTOPEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i32, i32, i32, %struct.sockaddr*, i32)* @open_inet_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_inet_listener(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, %struct.sockaddr* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.sockaddr* %7, %struct.sockaddr** %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %17, align 4
  %25 = call i32 @socket(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %20, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  br label %63

28:                                               ; preds = %9
  %29 = load i32, i32* %20, align 4
  %30 = call i32 @set_cloexec(i32 %29)
  store i32 1, i32* %21, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_REUSEADDR, align 4
  %34 = bitcast i32* %21 to i8*
  %35 = call i64 @setsockopt(i32 %31, i32 %32, i32 %33, i8* %34, i32 4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %63

38:                                               ; preds = %28
  %39 = load i32, i32* %20, align 4
  %40 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %41 = load i32, i32* %19, align 4
  %42 = call i64 @bind(i32 %39, %struct.sockaddr* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %63

45:                                               ; preds = %38
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @IPPROTO_TCP, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* @H2O_SOMAXCONN, align 4
  %52 = call i64 @listen(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %63

55:                                               ; preds = %49
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @assert(i32 0)
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* %20, align 4
  store i32 %62, i32* %10, align 4
  br label %87

63:                                               ; preds = %54, %44, %37, %27
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @close(i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @IPPROTO_TCP, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i8*, i8** %13, align 8
  br label %81

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i8* [ %79, %78 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %80 ]
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* @errno, align 4
  %85 = call i8* @strerror(i32 %84)
  %86 = call i32 @h2o_configurator_errprintf(i32* null, i32* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %75, i8* %82, i8* %83, i8* %85)
  store i32 -1, i32* %10, align 4
  br label %87

87:                                               ; preds = %81, %61
  %88 = load i32, i32* %10, align 4
  ret i32 %88
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @set_cloexec(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @h2o_configurator_errprintf(i32*, i32*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
