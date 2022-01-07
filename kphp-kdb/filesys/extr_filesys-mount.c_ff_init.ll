; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-mount.c_ff_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-mount.c_ff_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn_info = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ff_init\0A\00", align 1
@ff_mutex = common dso_local global i32 0, align 4
@ff_start_server = common dso_local global i64 0, align 8
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@ff_server_thread = common dso_local global i32 0, align 4
@start_server = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ff_init(%struct.fuse_conn_info* %0) #0 {
  %2 = alloca %struct.fuse_conn_info*, align 8
  %3 = alloca i32, align 4
  store %struct.fuse_conn_info* %0, %struct.fuse_conn_info** %2, align 8
  %4 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @pthread_mutex_init(i32* @ff_mutex, i32* null)
  %6 = load i64, i64* @ff_start_server, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = call i32 @pthread_attr_init(i32* %3)
  %10 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %11 = call i32 @pthread_attr_setdetachstate(i32* %3, i32 %10)
  %12 = call i32 @pthread_attr_setstacksize(i32* %3, i32 4194304)
  %13 = load i32, i32* @start_server, align 4
  %14 = call i32 @pthread_create(i32* @ff_server_thread, i32* %3, i32 %13, i32* null)
  %15 = call i32 @pthread_attr_destroy(i32* %3)
  store i64 0, i64* @ff_start_server, align 8
  br label %16

16:                                               ; preds = %8, %1
  ret i8* null
}

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @pthread_attr_setstacksize(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
