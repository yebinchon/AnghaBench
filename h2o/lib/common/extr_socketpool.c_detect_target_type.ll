; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socketpool.c_detect_target_type.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socketpool.c_detect_target_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_un = type { i32 }

@h2o_url_host_to_sun_err_is_not_unix_socket = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@H2O_SOCKETPOOL_TYPE_SOCKADDR = common dso_local global i32 0, align 4
@H2O_SOCKETPOOL_TYPE_NAMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detect_target_type(%struct.TYPE_4__* %0, %struct.sockaddr_storage* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %11 = call i32 @memset(%struct.sockaddr_storage* %10, i32 0, i32 4)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %16 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr_un*
  %17 = call i8* @h2o_url_host_to_sun(i32 %14, %struct.sockaddr_un* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** @h2o_url_host_to_sun_err_is_not_unix_socket, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load i32, i32* @AF_INET, align 4
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %26 = bitcast %struct.sockaddr_storage* %25 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %26, %struct.sockaddr_in** %9, align 8
  %27 = load i32*, i32** %7, align 8
  store i32 8, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 1
  %33 = call i64 @h2o_hostinfo_aton(i32 %30, i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = call i32 @h2o_url_get_port(%struct.TYPE_4__* %36)
  %38 = call i32 @htons(i32 %37)
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @H2O_SOCKETPOOL_TYPE_SOCKADDR, align 4
  store i32 %41, i32* %4, align 4
  br label %51

42:                                               ; preds = %21
  %43 = load i32, i32* @H2O_SOCKETPOOL_TYPE_NAMED, align 4
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %3
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32*, i32** %7, align 8
  store i32 4, i32* %49, align 4
  %50 = load i32, i32* @H2O_SOCKETPOOL_TYPE_SOCKADDR, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %42, %35
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i8* @h2o_url_host_to_sun(i32, %struct.sockaddr_un*) #1

declare dso_local i64 @h2o_hostinfo_aton(i32, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @h2o_url_get_port(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
