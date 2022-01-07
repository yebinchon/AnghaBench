; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_get_grant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_get_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grant = type { i32 }
%struct.blkfront_ring_info = type { %struct.blkfront_info* }
%struct.blkfront_info = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grant* (i32*, i64, %struct.blkfront_ring_info*)* @get_grant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grant* @get_grant(i32* %0, i64 %1, %struct.blkfront_ring_info* %2) #0 {
  %4 = alloca %struct.grant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.blkfront_ring_info*, align 8
  %8 = alloca %struct.grant*, align 8
  %9 = alloca %struct.blkfront_info*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.blkfront_ring_info* %2, %struct.blkfront_ring_info** %7, align 8
  %10 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %7, align 8
  %11 = call %struct.grant* @get_free_grant(%struct.blkfront_ring_info* %10)
  store %struct.grant* %11, %struct.grant** %8, align 8
  %12 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %7, align 8
  %13 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %12, i32 0, i32 0
  %14 = load %struct.blkfront_info*, %struct.blkfront_info** %13, align 8
  store %struct.blkfront_info* %14, %struct.blkfront_info** %9, align 8
  %15 = load %struct.grant*, %struct.grant** %8, align 8
  %16 = getelementptr inbounds %struct.grant, %struct.grant* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GRANT_INVALID_REF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load %struct.grant*, %struct.grant** %8, align 8
  store %struct.grant* %21, %struct.grant** %4, align 8
  br label %56

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @gnttab_claim_grant_reference(i32* %23)
  %25 = load %struct.grant*, %struct.grant** %8, align 8
  %26 = getelementptr inbounds %struct.grant, %struct.grant* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.grant*, %struct.grant** %8, align 8
  %28 = getelementptr inbounds %struct.grant, %struct.grant* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %36 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %22
  %40 = load %struct.grant*, %struct.grant** %8, align 8
  %41 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %42 = call i32 @grant_foreign_access(%struct.grant* %40, %struct.blkfront_info* %41)
  br label %54

43:                                               ; preds = %22
  %44 = load %struct.grant*, %struct.grant** %8, align 8
  %45 = getelementptr inbounds %struct.grant, %struct.grant* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  %48 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @gnttab_grant_foreign_access_ref(i32 %46, i32 %51, i64 %52, i32 0)
  br label %54

54:                                               ; preds = %43, %39
  %55 = load %struct.grant*, %struct.grant** %8, align 8
  store %struct.grant* %55, %struct.grant** %4, align 8
  br label %56

56:                                               ; preds = %54, %20
  %57 = load %struct.grant*, %struct.grant** %4, align 8
  ret %struct.grant* %57
}

declare dso_local %struct.grant* @get_free_grant(%struct.blkfront_ring_info*) #1

declare dso_local i32 @gnttab_claim_grant_reference(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @grant_foreign_access(%struct.grant*, %struct.blkfront_info*) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
