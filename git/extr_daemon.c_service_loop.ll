; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_service_loop.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_service_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socketlist = type { i32, i32* }
%struct.pollfd = type { i32, i32, i32 }
%union.anon = type { %struct.sockaddr }
%struct.sockaddr = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@child_handler = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Poll failed, resuming: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"accept returned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socketlist*)* @service_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_loop(%struct.socketlist* %0) #0 {
  %2 = alloca %struct.socketlist*, align 8
  %3 = alloca %struct.pollfd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.anon, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.socketlist* %0, %struct.socketlist** %2, align 8
  %9 = load %struct.socketlist*, %struct.socketlist** %2, align 8
  %10 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.pollfd* @xcalloc(i32 %11, i32 12)
  store %struct.pollfd* %12, %struct.pollfd** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %38, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.socketlist*, %struct.socketlist** %2, align 8
  %16 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.socketlist*, %struct.socketlist** %2, align 8
  %21 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i64 %29
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 2
  store i32 %26, i32* %31, align 4
  %32 = load i32, i32* @POLLIN, align 4
  %33 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %33, i64 %35
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %19
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load i32, i32* @SIGCHLD, align 4
  %43 = load i32, i32* @child_handler, align 4
  %44 = call i32 @signal(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %105, %61, %41
  %46 = call i32 (...) @check_dead_children()
  %47 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %48 = load %struct.socketlist*, %struct.socketlist** %2, align 8
  %49 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @poll(%struct.pollfd* %47, i32 %50, i32 -1)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load i32, i32* @errno, align 4
  %55 = icmp ne i32 %54, 128
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 @logerror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @sleep(i32 1)
  br label %61

61:                                               ; preds = %56, %53
  br label %45

62:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %102, %62
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.socketlist*, %struct.socketlist** %2, align 8
  %66 = getelementptr inbounds %struct.socketlist, %struct.socketlist* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %63
  %70 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %70, i64 %72
  %74 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @POLLIN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %69
  store i32 4, i32* %7, align 4
  %80 = load %struct.pollfd*, %struct.pollfd** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %80, i64 %82
  %84 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = bitcast %union.anon* %6 to %struct.sockaddr*
  %87 = call i32 @accept(i32 %85, %struct.sockaddr* %86, i32* %7)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32, i32* @errno, align 4
  switch i32 %91, label %93 [
    i32 130, label %92
    i32 128, label %92
    i32 129, label %92
  ]

92:                                               ; preds = %90, %90, %90
  br label %102

93:                                               ; preds = %90
  %94 = call i32 @die_errno(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %79
  %97 = load i32, i32* %8, align 4
  %98 = bitcast %union.anon* %6 to %struct.sockaddr*
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @handle(i32 %97, %struct.sockaddr* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %69
  br label %102

102:                                              ; preds = %101, %92
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %63

105:                                              ; preds = %63
  br label %45
}

declare dso_local %struct.pollfd* @xcalloc(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @check_dead_children(...) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @logerror(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @handle(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
