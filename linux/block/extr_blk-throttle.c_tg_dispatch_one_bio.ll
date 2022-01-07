; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_dispatch_one_bio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_dispatch_one_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { %struct.TYPE_2__*, i32*, %struct.throtl_service_queue }
%struct.TYPE_2__ = type { i64* }
%struct.throtl_service_queue = type { i32*, i32*, %struct.throtl_service_queue* }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*, i32)* @tg_dispatch_one_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_dispatch_one_bio(%struct.throtl_grp* %0, i32 %1) #0 {
  %3 = alloca %struct.throtl_grp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.throtl_service_queue*, align 8
  %6 = alloca %struct.throtl_service_queue*, align 8
  %7 = alloca %struct.throtl_grp*, align 8
  %8 = alloca %struct.throtl_grp*, align 8
  %9 = alloca %struct.bio*, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %11 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %10, i32 0, i32 2
  store %struct.throtl_service_queue* %11, %struct.throtl_service_queue** %5, align 8
  %12 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %5, align 8
  %13 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %12, i32 0, i32 2
  %14 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %13, align 8
  store %struct.throtl_service_queue* %14, %struct.throtl_service_queue** %6, align 8
  %15 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %6, align 8
  %16 = call %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue* %15)
  store %struct.throtl_grp* %16, %struct.throtl_grp** %7, align 8
  store %struct.throtl_grp* null, %struct.throtl_grp** %8, align 8
  %17 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %5, align 8
  %18 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call %struct.bio* @throtl_pop_queued(i32* %22, %struct.throtl_grp** %8)
  store %struct.bio* %23, %struct.bio** %9, align 8
  %24 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %5, align 8
  %25 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %33 = load %struct.bio*, %struct.bio** %9, align 8
  %34 = call i32 @throtl_charge_bio(%struct.throtl_grp* %32, %struct.bio* %33)
  %35 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %36 = icmp ne %struct.throtl_grp* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %2
  %38 = load %struct.bio*, %struct.bio** %9, align 8
  %39 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %40 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %46 = call i32 @throtl_add_bio_tg(%struct.bio* %38, i32* %44, %struct.throtl_grp* %45)
  %47 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %48 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @start_parent_slice_with_credit(%struct.throtl_grp* %47, %struct.throtl_grp* %48, i32 %49)
  br label %88

51:                                               ; preds = %2
  %52 = load %struct.bio*, %struct.bio** %9, align 8
  %53 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %54 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %6, align 8
  %60 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @throtl_qnode_add_bio(%struct.bio* %52, i32* %58, i32* %64)
  %66 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %67 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %79 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %51, %37
  %89 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @throtl_trim_slice(%struct.throtl_grp* %89, i32 %90)
  %92 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %93 = icmp ne %struct.throtl_grp* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %96 = call i32 @tg_to_blkg(%struct.throtl_grp* %95)
  %97 = call i32 @blkg_put(i32 %96)
  br label %98

98:                                               ; preds = %94, %88
  ret void
}

declare dso_local %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue*) #1

declare dso_local %struct.bio* @throtl_pop_queued(i32*, %struct.throtl_grp**) #1

declare dso_local i32 @throtl_charge_bio(%struct.throtl_grp*, %struct.bio*) #1

declare dso_local i32 @throtl_add_bio_tg(%struct.bio*, i32*, %struct.throtl_grp*) #1

declare dso_local i32 @start_parent_slice_with_credit(%struct.throtl_grp*, %struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_qnode_add_bio(%struct.bio*, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @throtl_trim_slice(%struct.throtl_grp*, i32) #1

declare dso_local i32 @blkg_put(i32) #1

declare dso_local i32 @tg_to_blkg(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
