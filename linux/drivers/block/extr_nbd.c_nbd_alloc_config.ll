; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_alloc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_alloc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_config = type { i32, i32, i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@NBD_DEF_BLKSIZE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nbd_config* ()* @nbd_alloc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nbd_config* @nbd_alloc_config() #0 {
  %1 = alloca %struct.nbd_config*, align 8
  %2 = alloca %struct.nbd_config*, align 8
  %3 = load i32, i32* @GFP_NOFS, align 4
  %4 = call %struct.nbd_config* @kzalloc(i32 20, i32 %3)
  store %struct.nbd_config* %4, %struct.nbd_config** %2, align 8
  %5 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  %6 = icmp ne %struct.nbd_config* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.nbd_config* null, %struct.nbd_config** %1, align 8
  br label %27

8:                                                ; preds = %0
  %9 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  %10 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %9, i32 0, i32 4
  %11 = call i32 @atomic_set(i32* %10, i32 0)
  %12 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  %13 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %12, i32 0, i32 3
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  %16 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %15, i32 0, i32 2
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load i32, i32* @NBD_DEF_BLKSIZE, align 4
  %19 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  %20 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  %22 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %21, i32 0, i32 0
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load i32, i32* @THIS_MODULE, align 4
  %25 = call i32 @try_module_get(i32 %24)
  %26 = load %struct.nbd_config*, %struct.nbd_config** %2, align 8
  store %struct.nbd_config* %26, %struct.nbd_config** %1, align 8
  br label %27

27:                                               ; preds = %8, %7
  %28 = load %struct.nbd_config*, %struct.nbd_config** %1, align 8
  ret %struct.nbd_config* %28
}

declare dso_local %struct.nbd_config* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
