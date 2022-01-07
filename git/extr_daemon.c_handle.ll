; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_handle.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@max_connections = common dso_local global i64 0, align 8
@live_children = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Too many children, dropping connection\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"REMOTE_ADDR=%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"REMOTE_PORT=%d\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"REMOTE_ADDR=[%s]\00", align 1
@cld_argv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"unable to fork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i32)* @handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.child_process, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = bitcast %struct.child_process* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %13 = load i64, i64* @max_connections, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i64, i64* @live_children, align 8
  %17 = load i64, i64* @max_connections, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = call i32 (...) @kill_some_child()
  %21 = call i32 @sleep(i32 1)
  %22 = call i32 (...) @check_dead_children()
  %23 = load i64, i64* @live_children, align 8
  %24 = load i64, i64* @max_connections, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @close(i32 %27)
  %29 = call i32 @logerror(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %100

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %15, %3
  %32 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_INET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = bitcast [128 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 128, i1 false)
  %39 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %40 = bitcast %struct.sockaddr* %39 to i8*
  %41 = bitcast i8* %40 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %41, %struct.sockaddr_in** %9, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 1
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %48 = call i32 @inet_ntop(i64 %44, i32* %46, i8* %47, i32 128)
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %51 = call i32 @argv_array_pushf(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @ntohs(i32 %55)
  %57 = call i32 @argv_array_pushf(i32* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %84

58:                                               ; preds = %31
  %59 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AF_INET6, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = bitcast [128 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %65, i8 0, i64 128, i1 false)
  %66 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %67 = bitcast %struct.sockaddr* %66 to i8*
  %68 = bitcast i8* %67 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %68, %struct.sockaddr_in6** %11, align 8
  %69 = load i64, i64* @AF_INET6, align 8
  %70 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %70, i32 0, i32 1
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %73 = call i32 @inet_ntop(i64 %69, i32* %71, i8* %72, i32 128)
  %74 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %76 = call i32 @argv_array_pushf(i32* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %78 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @ntohs(i32 %80)
  %82 = call i32 @argv_array_pushf(i32* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %64, %58
  br label %84

84:                                               ; preds = %83, %37
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cld_argv, i32 0, i32 0), align 4
  %86 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %4, align 4
  %88 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @dup(i32 %89)
  %91 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = call i64 @start_command(%struct.child_process* %7)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = call i32 @logerror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %100

96:                                               ; preds = %84
  %97 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @add_child(%struct.child_process* %7, %struct.sockaddr* %97, i32 %98)
  br label %100

100:                                              ; preds = %26, %96, %94
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @kill_some_child(...) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @check_dead_children(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @logerror(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @inet_ntop(i64, i32*, i8*, i32) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i8*) #2

declare dso_local i8* @ntohs(i32) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @add_child(%struct.child_process*, %struct.sockaddr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
