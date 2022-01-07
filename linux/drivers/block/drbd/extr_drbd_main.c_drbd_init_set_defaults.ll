; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_init_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_init_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@w_resync_timer = common dso_local global i32 0, align 4
@w_send_write_hint = common dso_local global i32 0, align 4
@w_bitmap_io = common dso_local global i32 0, align 4
@resync_timer_fn = common dso_local global i32 0, align 4
@md_sync_timer_fn = common dso_local global i32 0, align 4
@start_resync_timer_fn = common dso_local global i32 0, align 4
@request_timer_fn = common dso_local global i32 0, align 4
@LC_FREE = common dso_local global i32 0, align 4
@DRBD_MAX_BIO_SIZE_SAFE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_init_set_defaults(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %3 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %4 = call i32 @drbd_set_defaults(%struct.drbd_device* %3)
  %5 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %5, i32 0, i32 37
  %7 = call i32 @atomic_set(i32* %6, i32 0)
  %8 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %9 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %8, i32 0, i32 36
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  %11 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %12 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %11, i32 0, i32 35
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %15 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %14, i32 0, i32 34
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %18 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %17, i32 0, i32 33
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %21 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %20, i32 0, i32 32
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %24 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %23, i32 0, i32 31
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %27 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %26, i32 0, i32 30
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %30 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %29, i32 0, i32 29
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %33 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %32, i32 0, i32 28
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %36 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %35, i32 0, i32 27
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %40 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %39, i32 0, i32 25
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %43 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %42, i32 0, i32 25
  %44 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %45 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %44, i32 0, i32 26
  store i32* %43, i32** %45, align 8
  %46 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %47 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %46, i32 0, i32 24
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %50 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %49, i32 0, i32 23
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %53 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %52, i32 0, i32 22
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %56 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %55, i32 0, i32 21
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %59 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %58, i32 0, i32 20
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %62 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %61, i32 0, i32 19
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %65 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %64, i32 0, i32 18
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %68 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %67, i32 0, i32 17
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %71 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %70, i32 0, i32 14
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %75 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %74, i32 0, i32 13
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %79 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %78, i32 0, i32 12
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %84 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %83, i32 0, i32 16
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %89 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %88, i32 0, i32 16
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %94 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %93, i32 0, i32 15
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %99 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %98, i32 0, i32 15
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load i32, i32* @w_resync_timer, align 4
  %104 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %105 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %104, i32 0, i32 14
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @w_send_write_hint, align 4
  %108 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %109 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %108, i32 0, i32 13
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @w_bitmap_io, align 4
  %112 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %113 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %112, i32 0, i32 12
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 8
  %116 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %117 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %116, i32 0, i32 11
  %118 = load i32, i32* @resync_timer_fn, align 4
  %119 = call i32 @timer_setup(i32* %117, i32 %118, i32 0)
  %120 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %121 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %120, i32 0, i32 10
  %122 = load i32, i32* @md_sync_timer_fn, align 4
  %123 = call i32 @timer_setup(i32* %121, i32 %122, i32 0)
  %124 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %125 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %124, i32 0, i32 9
  %126 = load i32, i32* @start_resync_timer_fn, align 4
  %127 = call i32 @timer_setup(i32* %125, i32 %126, i32 0)
  %128 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %129 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %128, i32 0, i32 8
  %130 = load i32, i32* @request_timer_fn, align 4
  %131 = call i32 @timer_setup(i32* %129, i32 %130, i32 0)
  %132 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %133 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %132, i32 0, i32 7
  %134 = call i32 @init_waitqueue_head(i32* %133)
  %135 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %136 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %135, i32 0, i32 6
  %137 = call i32 @init_waitqueue_head(i32* %136)
  %138 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %139 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %138, i32 0, i32 5
  %140 = call i32 @init_waitqueue_head(i32* %139)
  %141 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %142 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %141, i32 0, i32 4
  %143 = call i32 @init_waitqueue_head(i32* %142)
  %144 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %145 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %144, i32 0, i32 3
  %146 = call i32 @init_waitqueue_head(i32* %145)
  %147 = load i32, i32* @LC_FREE, align 4
  %148 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %149 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load i8*, i8** @DRBD_MAX_BIO_SIZE_SAFE, align 8
  %151 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %152 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** @DRBD_MAX_BIO_SIZE_SAFE, align 8
  %154 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %155 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  ret void
}

declare dso_local i32 @drbd_set_defaults(%struct.drbd_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
