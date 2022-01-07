; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_server_new.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_server_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i32, i16, double, double, i32, i32, i32, i32, i32, i32 }

@rpc_status_disconnected = common dso_local global i32 0, align 4
@RPC_SERVER_MAGIC = common dso_local global i32 0, align 4
@last_server_fd = common dso_local global i32 0, align 4
@servers_size = common dso_local global i32 0, align 4
@servers = common dso_local global %struct.rpc_server** null, align 8
@server_fds = common dso_local global %struct.rpc_server** null, align 8
@server_fds_tmp = common dso_local global %struct.rpc_server** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_server* (i32, i16, double, double)* @rpc_server_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_server* @rpc_server_new(i32 %0, i16 zeroext %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.rpc_server*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i16 %1, i16* %6, align 2
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %11 = call %struct.rpc_server* @zzmalloc(i32 48)
  store %struct.rpc_server* %11, %struct.rpc_server** %9, align 8
  %12 = call i32 @ADD_PMALLOC(i32 48)
  %13 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %14 = call i32 @memset(%struct.rpc_server* %13, i32 0, i32 48)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %17 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i16, i16* %6, align 2
  %19 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %20 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %19, i32 0, i32 1
  store i16 %18, i16* %20, align 4
  %21 = load i32, i32* @rpc_status_disconnected, align 4
  %22 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %23 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load double, double* %7, align 8
  %25 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %26 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %25, i32 0, i32 2
  store double %24, double* %26, align 8
  %27 = load double, double* %8, align 8
  %28 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %29 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %28, i32 0, i32 3
  store double %27, double* %29, align 8
  %30 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %31 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %30, i32 0, i32 4
  store i32 -2, i32* %31, align 8
  %32 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %33 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %32, i32 0, i32 5
  store i32 -2, i32* %33, align 4
  %34 = load i32, i32* @RPC_SERVER_MAGIC, align 4
  %35 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %36 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @last_server_fd, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @last_server_fd, align 4
  %39 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %40 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 8
  %41 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %42 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @servers_size, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %108

46:                                               ; preds = %4
  %47 = load i32, i32* @servers_size, align 4
  %48 = mul nsw i32 %47, 2
  %49 = add nsw i32 %48, 100
  store i32 %49, i32* %10, align 4
  %50 = load %struct.rpc_server**, %struct.rpc_server*** @servers, align 8
  %51 = load i32, i32* @servers_size, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 8, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = call %struct.rpc_server** @zzrealloc(%struct.rpc_server** %50, i32 %54, i32 %58)
  store %struct.rpc_server** %59, %struct.rpc_server*** @servers, align 8
  %60 = load i32, i32* @servers_size, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 8, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 8, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ADD_PREALLOC(i32 %63, i32 %67)
  %69 = load %struct.rpc_server**, %struct.rpc_server*** @server_fds, align 8
  %70 = load i32, i32* @servers_size, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = trunc i64 %76 to i32
  %78 = call %struct.rpc_server** @zzrealloc(%struct.rpc_server** %69, i32 %73, i32 %77)
  store %struct.rpc_server** %78, %struct.rpc_server*** @server_fds, align 8
  %79 = load i32, i32* @servers_size, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @ADD_PREALLOC(i32 %82, i32 %86)
  %88 = load %struct.rpc_server**, %struct.rpc_server*** @server_fds_tmp, align 8
  %89 = load i32, i32* @servers_size, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = call %struct.rpc_server** @zzrealloc(%struct.rpc_server** %88, i32 %92, i32 %96)
  store %struct.rpc_server** %97, %struct.rpc_server*** @server_fds_tmp, align 8
  %98 = load i32, i32* @servers_size, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 4, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32 @ADD_PREALLOC(i32 %101, i32 %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* @servers_size, align 4
  br label %108

108:                                              ; preds = %46, %4
  %109 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %110 = load %struct.rpc_server**, %struct.rpc_server*** @servers, align 8
  %111 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %112 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.rpc_server*, %struct.rpc_server** %110, i64 %114
  store %struct.rpc_server* %109, %struct.rpc_server** %115, align 8
  %116 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %117 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %116, i32 0, i32 7
  store i32 -1, i32* %117, align 4
  %118 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  %119 = call i32 @rpc_server_clean(%struct.rpc_server* %118)
  %120 = load %struct.rpc_server*, %struct.rpc_server** %9, align 8
  ret %struct.rpc_server* %120
}

declare dso_local %struct.rpc_server* @zzmalloc(i32) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local i32 @memset(%struct.rpc_server*, i32, i32) #1

declare dso_local %struct.rpc_server** @zzrealloc(%struct.rpc_server**, i32, i32) #1

declare dso_local i32 @ADD_PREALLOC(i32, i32) #1

declare dso_local i32 @rpc_server_clean(%struct.rpc_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
