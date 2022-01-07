; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_dispatch_rq_from_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_dispatch_rq_from_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32 }
%struct.dispatch_rq_data = type { %struct.TYPE_3__*, %struct.blk_mq_hw_ctx* }
%struct.TYPE_3__ = type { i32 }
%struct.blk_mq_hw_ctx = type { i32, %struct.blk_mq_ctx** }
%struct.blk_mq_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbitmap*, i32, i8*)* @dispatch_rq_from_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch_rq_from_ctx(%struct.sbitmap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sbitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dispatch_rq_data*, align 8
  %8 = alloca %struct.blk_mq_hw_ctx*, align 8
  %9 = alloca %struct.blk_mq_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.sbitmap* %0, %struct.sbitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.dispatch_rq_data*
  store %struct.dispatch_rq_data* %12, %struct.dispatch_rq_data** %7, align 8
  %13 = load %struct.dispatch_rq_data*, %struct.dispatch_rq_data** %7, align 8
  %14 = getelementptr inbounds %struct.dispatch_rq_data, %struct.dispatch_rq_data* %13, i32 0, i32 1
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %14, align 8
  store %struct.blk_mq_hw_ctx* %15, %struct.blk_mq_hw_ctx** %8, align 8
  %16 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %16, i32 0, i32 1
  %18 = load %struct.blk_mq_ctx**, %struct.blk_mq_ctx*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %18, i64 %20
  %22 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %21, align 8
  store %struct.blk_mq_ctx* %22, %struct.blk_mq_ctx** %9, align 8
  %23 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = call i64 @list_empty(%struct.TYPE_4__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %3
  %38 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_3__* @list_entry_rq(i32 %45)
  %47 = load %struct.dispatch_rq_data*, %struct.dispatch_rq_data** %7, align 8
  %48 = getelementptr inbounds %struct.dispatch_rq_data, %struct.dispatch_rq_data* %47, i32 0, i32 0
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  %49 = load %struct.dispatch_rq_data*, %struct.dispatch_rq_data** %7, align 8
  %50 = getelementptr inbounds %struct.dispatch_rq_data, %struct.dispatch_rq_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @list_del_init(i32* %52)
  %54 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %55 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = call i64 @list_empty(%struct.TYPE_4__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %37
  %63 = load %struct.sbitmap*, %struct.sbitmap** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @sbitmap_clear_bit(%struct.sbitmap* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %37
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.dispatch_rq_data*, %struct.dispatch_rq_data** %7, align 8
  %72 = getelementptr inbounds %struct.dispatch_rq_data, %struct.dispatch_rq_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = icmp ne %struct.TYPE_3__* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_3__* @list_entry_rq(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @sbitmap_clear_bit(%struct.sbitmap*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
