; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_spec_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_spec_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_spec = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CEPH_NOPOOL = common dso_local global i32 0, align 4
@CEPH_NOSNAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rbd_spec* ()* @rbd_spec_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rbd_spec* @rbd_spec_alloc() #0 {
  %1 = alloca %struct.rbd_spec*, align 8
  %2 = alloca %struct.rbd_spec*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.rbd_spec* @kzalloc(i32 12, i32 %3)
  store %struct.rbd_spec* %4, %struct.rbd_spec** %2, align 8
  %5 = load %struct.rbd_spec*, %struct.rbd_spec** %2, align 8
  %6 = icmp ne %struct.rbd_spec* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.rbd_spec* null, %struct.rbd_spec** %1, align 8
  br label %19

8:                                                ; preds = %0
  %9 = load i32, i32* @CEPH_NOPOOL, align 4
  %10 = load %struct.rbd_spec*, %struct.rbd_spec** %2, align 8
  %11 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @CEPH_NOSNAP, align 4
  %13 = load %struct.rbd_spec*, %struct.rbd_spec** %2, align 8
  %14 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.rbd_spec*, %struct.rbd_spec** %2, align 8
  %16 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %15, i32 0, i32 0
  %17 = call i32 @kref_init(i32* %16)
  %18 = load %struct.rbd_spec*, %struct.rbd_spec** %2, align 8
  store %struct.rbd_spec* %18, %struct.rbd_spec** %1, align 8
  br label %19

19:                                               ; preds = %8, %7
  %20 = load %struct.rbd_spec*, %struct.rbd_spec** %1, align 8
  ret %struct.rbd_spec* %20
}

declare dso_local %struct.rbd_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
