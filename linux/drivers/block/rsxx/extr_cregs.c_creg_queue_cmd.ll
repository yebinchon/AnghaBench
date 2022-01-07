; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_creg_queue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_creg_queue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.creg_cmd = type { i32, i32, i32, i32, i32, i64, i8*, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_CREG_DATA8 = common dso_local global i32 0, align 4
@creg_cmd_pool = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, i32, i32, i32, i8*, i32, i32, i8*)* @creg_queue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creg_queue_cmd(%struct.rsxx_cardinfo* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsxx_cardinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.creg_cmd*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  %20 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %100

27:                                               ; preds = %8
  %28 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  %29 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %100

36:                                               ; preds = %27
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @MAX_CREG_DATA8, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %100

43:                                               ; preds = %36
  %44 = load i32, i32* @creg_cmd_pool, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.creg_cmd* @kmem_cache_alloc(i32 %44, i32 %45)
  store %struct.creg_cmd* %46, %struct.creg_cmd** %18, align 8
  %47 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %48 = icmp ne %struct.creg_cmd* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %100

52:                                               ; preds = %43
  %53 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %54 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %53, i32 0, i32 4
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %58 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %61 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %64 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %67 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %70 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %73 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %76 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %78 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  %80 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @spin_lock_bh(i32* %81)
  %83 = load %struct.creg_cmd*, %struct.creg_cmd** %18, align 8
  %84 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %83, i32 0, i32 4
  %85 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  %86 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = call i32 @list_add_tail(i32* %84, i32* %87)
  %89 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  %90 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  %95 = call i32 @creg_kick_queue(%struct.rsxx_cardinfo* %94)
  %96 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %10, align 8
  %97 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_bh(i32* %98)
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %52, %49, %40, %33, %24
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.creg_cmd* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @creg_kick_queue(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
