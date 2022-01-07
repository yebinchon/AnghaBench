; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c__rpc_connect_open.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c__rpc_connect_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { double, i32, i32, i8*, i32, i8*, i32, i32, i32, i32 }

@precise_now = common dso_local global double 0.000000e+00, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Connect timed out\00", align 1
@rpc_status_failed = common dso_local global i8* null, align 8
@rpc_status_connected = common dso_local global i8* null, align 8
@active_net_connections = common dso_local global i32 0, align 4
@global_generation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Rpc handshake failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_server*, i8**, i32*)* @_rpc_connect_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rpc_connect_open(%struct.rpc_server* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_server*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  store %struct.rpc_server* %0, %struct.rpc_server** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %15 = call i32 @rpc_server_disconnect(%struct.rpc_server* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 (...) @update_precise_now()
  %18 = load double, double* @precise_now, align 8
  %19 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %20 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fadd double %18, %21
  store double %22, double* %8, align 8
  %23 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %24 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %27 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = load double, double* %8, align 8
  %30 = call i32 @rpc_sock_connect(i32 %25, i32 %28, double %29)
  %31 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %32 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %16
  %38 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @errno, align 4
  %43 = call i8* @strerror(i32 %42)
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i8* [ %43, %41 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %44 ]
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @rpc_server_seterror(%struct.rpc_server* %38, i8* %46, i32 %47)
  %49 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %50 = call i32 @rpc_server_deactivate(%struct.rpc_server* %49)
  %51 = load i8**, i8*** %6, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load i32, i32* @errno, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @errno, align 4
  %58 = call i8* @strerror(i32 %57)
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i8* [ %58, %56 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %59 ]
  %62 = call i8* @estrdup(i8* %61)
  %63 = load i8**, i8*** %6, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %45
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @errno, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** @rpc_status_failed, align 8
  %72 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %73 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  store i32 -1, i32* %4, align 4
  br label %115

74:                                               ; preds = %16
  %75 = load i8*, i8** @rpc_status_connected, align 8
  %76 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %77 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @active_net_connections, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @active_net_connections, align 4
  %80 = load i32, i32* @global_generation, align 4
  %81 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %82 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %84 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %83, i32 0, i32 1
  store i32 -2, i32* %84, align 8
  %85 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %86 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %85, i32 0, i32 2
  store i32 -2, i32* %86, align 4
  %87 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %88 = load double, double* %8, align 8
  %89 = call i64 @rpc_make_handshake(%struct.rpc_server* %87, double %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %74
  %92 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %93 = call i32 @rpc_server_seterror(%struct.rpc_server* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %94 = load i8**, i8*** %6, align 8
  %95 = icmp ne i8** %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %98 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @estrdup(i8* %99)
  %101 = load i8**, i8*** %6, align 8
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %96, %91
  %103 = load i32*, i32** %7, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %107 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %102
  %111 = load i8*, i8** @rpc_status_failed, align 8
  %112 = load %struct.rpc_server*, %struct.rpc_server** %5, align 8
  %113 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  store i32 -1, i32* %4, align 4
  br label %115

114:                                              ; preds = %74
  store i32 1, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %110, %70
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @rpc_server_disconnect(%struct.rpc_server*) #1

declare dso_local i32 @update_precise_now(...) #1

declare dso_local i32 @rpc_sock_connect(i32, i32, double) #1

declare dso_local i32 @rpc_server_seterror(%struct.rpc_server*, i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @rpc_server_deactivate(%struct.rpc_server*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i64 @rpc_make_handshake(%struct.rpc_server*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
