; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_devtmpfsd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_devtmpfsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i32, i32, i32, i32, i32, i32, i32, %struct.req* }

@CLONE_NEWNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"devtmpfs\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_SILENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@setup_done = common dso_local global i32 0, align 4
@req_lock = common dso_local global i32 0, align 4
@requests = common dso_local global %struct.req* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @devtmpfsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devtmpfsd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.req*, align 8
  %5 = alloca %struct.req*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* @CLONE_NEWNS, align 4
  %9 = call i32 @ksys_unshare(i32 %8)
  %10 = load i32*, i32** %3, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %71

15:                                               ; preds = %1
  %16 = load i32, i32* @MS_SILENT, align 4
  %17 = call i32 @ksys_mount(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16, i32* null)
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %71

23:                                               ; preds = %15
  %24 = call i32 @ksys_chdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @ksys_chroot(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @complete(i32* @setup_done)
  br label %27

27:                                               ; preds = %23, %66
  %28 = call i32 @spin_lock(i32* @req_lock)
  br label %29

29:                                               ; preds = %64, %27
  %30 = load %struct.req*, %struct.req** @requests, align 8
  %31 = icmp ne %struct.req* %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = load %struct.req*, %struct.req** @requests, align 8
  store %struct.req* %33, %struct.req** %4, align 8
  store %struct.req* null, %struct.req** @requests, align 8
  %34 = call i32 @spin_unlock(i32* @req_lock)
  br label %35

35:                                               ; preds = %38, %32
  %36 = load %struct.req*, %struct.req** %4, align 8
  %37 = icmp ne %struct.req* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.req*, %struct.req** %4, align 8
  %40 = getelementptr inbounds %struct.req, %struct.req* %39, i32 0, i32 7
  %41 = load %struct.req*, %struct.req** %40, align 8
  store %struct.req* %41, %struct.req** %5, align 8
  %42 = load %struct.req*, %struct.req** %4, align 8
  %43 = getelementptr inbounds %struct.req, %struct.req* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.req*, %struct.req** %4, align 8
  %46 = getelementptr inbounds %struct.req, %struct.req* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.req*, %struct.req** %4, align 8
  %49 = getelementptr inbounds %struct.req, %struct.req* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.req*, %struct.req** %4, align 8
  %52 = getelementptr inbounds %struct.req, %struct.req* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.req*, %struct.req** %4, align 8
  %55 = getelementptr inbounds %struct.req, %struct.req* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @handle(i32 %44, i32 %47, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.req*, %struct.req** %4, align 8
  %59 = getelementptr inbounds %struct.req, %struct.req* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.req*, %struct.req** %4, align 8
  %61 = getelementptr inbounds %struct.req, %struct.req* %60, i32 0, i32 0
  %62 = call i32 @complete(i32* %61)
  %63 = load %struct.req*, %struct.req** %5, align 8
  store %struct.req* %63, %struct.req** %4, align 8
  br label %35

64:                                               ; preds = %35
  %65 = call i32 @spin_lock(i32* @req_lock)
  br label %29

66:                                               ; preds = %29
  %67 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %68 = call i32 @__set_current_state(i32 %67)
  %69 = call i32 @spin_unlock(i32* @req_lock)
  %70 = call i32 (...) @schedule()
  br label %27

71:                                               ; preds = %22, %14
  %72 = call i32 @complete(i32* @setup_done)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %73, align 4
  ret i32 %74
}

declare dso_local i32 @ksys_unshare(i32) #1

declare dso_local i32 @ksys_mount(i8*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @ksys_chdir(i8*) #1

declare dso_local i32 @ksys_chroot(i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @handle(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
