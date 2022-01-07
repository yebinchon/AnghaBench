; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkif_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkif_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32, i32*, i32, i64, i64, i32, i32, i32, i32, %struct.xen_blkif* }
%struct.xen_blkif = type { %struct.xen_vbd }
%struct.xen_vbd = type { i64, i64 }

@LRU_INTERVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@xen_blkif_max_buffer_pages = common dso_local global i32 0, align 4
@log_stats = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_blkif_schedule(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xen_blkif_ring*, align 8
  %4 = alloca %struct.xen_blkif*, align 8
  %5 = alloca %struct.xen_vbd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.xen_blkif_ring*
  store %struct.xen_blkif_ring* %9, %struct.xen_blkif_ring** %3, align 8
  %10 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %11 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %10, i32 0, i32 9
  %12 = load %struct.xen_blkif*, %struct.xen_blkif** %11, align 8
  store %struct.xen_blkif* %12, %struct.xen_blkif** %4, align 8
  %13 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %14 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %13, i32 0, i32 0
  store %struct.xen_vbd* %14, %struct.xen_vbd** %5, align 8
  %15 = call i32 (...) @set_freezable()
  br label %16

16:                                               ; preds = %138, %23, %1
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %139

20:                                               ; preds = %16
  %21 = call i64 (...) @try_to_freeze()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %16

24:                                               ; preds = %20
  %25 = load %struct.xen_vbd*, %struct.xen_vbd** %5, align 8
  %26 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.xen_vbd*, %struct.xen_vbd** %5, align 8
  %29 = call i64 @vbd_sz(%struct.xen_vbd* %28)
  %30 = icmp ne i64 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %36 = call i32 @xen_vbd_resize(%struct.xen_blkif* %35)
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* @LRU_INTERVAL, align 4
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %41 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %44 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = call i64 (...) @kthread_should_stop()
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %47, %37
  %51 = phi i1 [ true, %37 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @wait_event_interruptible_timeout(i32 %42, i32 %52, i64 %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %100

58:                                               ; preds = %50
  %59 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %60 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %63 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %62, i32 0, i32 6
  %64 = call i32 @list_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = call i64 (...) @kthread_should_stop()
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %66, %58
  %70 = phi i1 [ true, %58 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @wait_event_interruptible_timeout(i32 %61, i32 %71, i64 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %100

77:                                               ; preds = %69
  %78 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %79 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = call i32 (...) @smp_mb()
  %81 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %82 = call i32 @do_block_io_op(%struct.xen_blkif_ring* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %87 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %77
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @EACCES, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %95 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i64 (...) @kthread_should_stop()
  %98 = call i32 @wait_event_interruptible(i32 %96, i64 %97)
  br label %99

99:                                               ; preds = %93, %88
  br label %100

100:                                              ; preds = %99, %76, %57
  %101 = load %struct.xen_blkif*, %struct.xen_blkif** %4, align 8
  %102 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load i64, i64* @jiffies, align 8
  %108 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %109 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @time_after(i64 %107, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %115 = call i32 @purge_persistent_gnt(%struct.xen_blkif_ring* %114)
  %116 = load i64, i64* @jiffies, align 8
  %117 = load i32, i32* @LRU_INTERVAL, align 4
  %118 = call i64 @msecs_to_jiffies(i32 %117)
  %119 = add i64 %116, %118
  %120 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %121 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %113, %106, %100
  %123 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %124 = load i32, i32* @xen_blkif_max_buffer_pages, align 4
  %125 = call i32 @shrink_free_pagepool(%struct.xen_blkif_ring* %123, i32 %124)
  %126 = load i64, i64* @log_stats, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %122
  %129 = load i64, i64* @jiffies, align 8
  %130 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %131 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @time_after(i64 %129, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %137 = call i32 @print_stats(%struct.xen_blkif_ring* %136)
  br label %138

138:                                              ; preds = %135, %128, %122
  br label %16

139:                                              ; preds = %16
  %140 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %141 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %140, i32 0, i32 2
  %142 = call i32 @flush_work(i32* %141)
  %143 = load i64, i64* @log_stats, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %147 = call i32 @print_stats(%struct.xen_blkif_ring* %146)
  br label %148

148:                                              ; preds = %145, %139
  %149 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %3, align 8
  %150 = getelementptr inbounds %struct.xen_blkif_ring, %struct.xen_blkif_ring* %149, i32 0, i32 1
  store i32* null, i32** %150, align 8
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vbd_sz(%struct.xen_vbd*) #1

declare dso_local i32 @xen_vbd_resize(%struct.xen_blkif*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @do_block_io_op(%struct.xen_blkif_ring*) #1

declare dso_local i32 @wait_event_interruptible(i32, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @purge_persistent_gnt(%struct.xen_blkif_ring*) #1

declare dso_local i32 @shrink_free_pagepool(%struct.xen_blkif_ring*, i32) #1

declare dso_local i32 @print_stats(%struct.xen_blkif_ring*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
