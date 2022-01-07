; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_add_send_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_add_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.transfer_request = type { %struct.transfer_request*, i32, i32*, %struct.remote_lock*, i32*, %struct.object* }
%struct.remote_lock = type { i32 }
%struct.object = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.packed_git = type { i32 }

@remote_dir_exists = common dso_local global i32* null, align 8
@REMOTE = common dso_local global i32 0, align 4
@PUSHING = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_4__* null, align 8
@NEED_PUSH = common dso_local global i32 0, align 4
@request_queue_head = common dso_local global %struct.transfer_request* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*, %struct.remote_lock*)* @add_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_send_request(%struct.object* %0, %struct.remote_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.remote_lock*, align 8
  %6 = alloca %struct.transfer_request*, align 8
  %7 = alloca %struct.packed_git*, align 8
  store %struct.object* %0, %struct.object** %4, align 8
  store %struct.remote_lock* %1, %struct.remote_lock** %5, align 8
  %8 = call i32 (...) @check_locks()
  %9 = load i32*, i32** @remote_dir_exists, align 8
  %10 = load %struct.object*, %struct.object** %4, align 8
  %11 = getelementptr inbounds %struct.object, %struct.object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %9, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.object*, %struct.object** %4, align 8
  %21 = getelementptr inbounds %struct.object, %struct.object* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @get_remote_object_list(i64 %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.object*, %struct.object** %4, align 8
  %29 = getelementptr inbounds %struct.object, %struct.object* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @REMOTE, align 4
  %32 = load i32, i32* @PUSHING, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %78

37:                                               ; preds = %27
  %38 = load %struct.object*, %struct.object** %4, align 8
  %39 = getelementptr inbounds %struct.object, %struct.object* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @repo, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.packed_git* @find_sha1_pack(i64* %41, i32 %44)
  store %struct.packed_git* %45, %struct.packed_git** %7, align 8
  %46 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %47 = icmp ne %struct.packed_git* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32, i32* @REMOTE, align 4
  %50 = load %struct.object*, %struct.object** %4, align 8
  %51 = getelementptr inbounds %struct.object, %struct.object* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %78

54:                                               ; preds = %37
  %55 = load i32, i32* @PUSHING, align 4
  %56 = load %struct.object*, %struct.object** %4, align 8
  %57 = getelementptr inbounds %struct.object, %struct.object* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = call %struct.transfer_request* @xmalloc(i32 48)
  store %struct.transfer_request* %60, %struct.transfer_request** %6, align 8
  %61 = load %struct.object*, %struct.object** %4, align 8
  %62 = load %struct.transfer_request*, %struct.transfer_request** %6, align 8
  %63 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %62, i32 0, i32 5
  store %struct.object* %61, %struct.object** %63, align 8
  %64 = load %struct.transfer_request*, %struct.transfer_request** %6, align 8
  %65 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %64, i32 0, i32 4
  store i32* null, i32** %65, align 8
  %66 = load %struct.remote_lock*, %struct.remote_lock** %5, align 8
  %67 = load %struct.transfer_request*, %struct.transfer_request** %6, align 8
  %68 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %67, i32 0, i32 3
  store %struct.remote_lock* %66, %struct.remote_lock** %68, align 8
  %69 = load %struct.transfer_request*, %struct.transfer_request** %6, align 8
  %70 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load i32, i32* @NEED_PUSH, align 4
  %72 = load %struct.transfer_request*, %struct.transfer_request** %6, align 8
  %73 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.transfer_request*, %struct.transfer_request** @request_queue_head, align 8
  %75 = load %struct.transfer_request*, %struct.transfer_request** %6, align 8
  %76 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %75, i32 0, i32 0
  store %struct.transfer_request* %74, %struct.transfer_request** %76, align 8
  %77 = load %struct.transfer_request*, %struct.transfer_request** %6, align 8
  store %struct.transfer_request* %77, %struct.transfer_request** @request_queue_head, align 8
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %54, %48, %36
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @check_locks(...) #1

declare dso_local i32 @get_remote_object_list(i64) #1

declare dso_local %struct.packed_git* @find_sha1_pack(i64*, i32) #1

declare dso_local %struct.transfer_request* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
