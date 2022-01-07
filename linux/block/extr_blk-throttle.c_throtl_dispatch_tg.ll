; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_dispatch_tg.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_dispatch_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { %struct.throtl_service_queue }
%struct.throtl_service_queue = type { i32* }
%struct.bio = type { i32 }

@throtl_grp_quantum = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_grp*)* @throtl_dispatch_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_dispatch_tg(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_service_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %10 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %9, i32 0, i32 0
  store %struct.throtl_service_queue* %10, %struct.throtl_service_queue** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @throtl_grp_quantum, align 4
  %12 = mul nsw i32 %11, 3
  %13 = sdiv i32 %12, 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @throtl_grp_quantum, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %43, %1
  %18 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %19 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @READ, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call %struct.bio* @throtl_peek_queued(i32* %22)
  store %struct.bio* %23, %struct.bio** %8, align 8
  %24 = icmp ne %struct.bio* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %27 = load %struct.bio*, %struct.bio** %8, align 8
  %28 = call i64 @tg_may_dispatch(%struct.throtl_grp* %26, %struct.bio* %27, i32* null)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %17
  %31 = phi i1 [ false, %17 ], [ %29, %25 ]
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %34 = load %struct.bio*, %struct.bio** %8, align 8
  %35 = call i32 @bio_data_dir(%struct.bio* %34)
  %36 = call i32 @tg_dispatch_one_bio(%struct.throtl_grp* %33, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %44

43:                                               ; preds = %32
  br label %17

44:                                               ; preds = %42, %30
  br label %45

45:                                               ; preds = %71, %44
  %46 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %47 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @WRITE, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call %struct.bio* @throtl_peek_queued(i32* %50)
  store %struct.bio* %51, %struct.bio** %8, align 8
  %52 = icmp ne %struct.bio* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %55 = load %struct.bio*, %struct.bio** %8, align 8
  %56 = call i64 @tg_may_dispatch(%struct.throtl_grp* %54, %struct.bio* %55, i32* null)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %45
  %59 = phi i1 [ false, %45 ], [ %57, %53 ]
  br i1 %59, label %60, label %72

60:                                               ; preds = %58
  %61 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %62 = load %struct.bio*, %struct.bio** %8, align 8
  %63 = call i32 @bio_data_dir(%struct.bio* %62)
  %64 = call i32 @tg_dispatch_one_bio(%struct.throtl_grp* %61, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %72

71:                                               ; preds = %60
  br label %45

72:                                               ; preds = %70, %58
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %73, %74
  ret i32 %75
}

declare dso_local %struct.bio* @throtl_peek_queued(i32*) #1

declare dso_local i64 @tg_may_dispatch(%struct.throtl_grp*, %struct.bio*, i32*) #1

declare dso_local i32 @tg_dispatch_one_bio(%struct.throtl_grp*, i32) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
