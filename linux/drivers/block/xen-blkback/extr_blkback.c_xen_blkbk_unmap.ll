; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32 }
%struct.grant_page = type { i32 }
%struct.gnttab_unmap_grant_ref = type { i32 }
%struct.page = type { i32 }

@BLKIF_MAX_SEGMENTS_PER_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif_ring*, %struct.grant_page**, i32)* @xen_blkbk_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_blkbk_unmap(%struct.xen_blkif_ring* %0, %struct.grant_page** %1, i32 %2) #0 {
  %4 = alloca %struct.xen_blkif_ring*, align 8
  %5 = alloca %struct.grant_page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %4, align 8
  store %struct.grant_page** %1, %struct.grant_page*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.gnttab_unmap_grant_ref, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca %struct.page*, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %41, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %26 = call i32 @min(i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %4, align 8
  %28 = load %struct.grant_page**, %struct.grant_page*** %5, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @xen_blkbk_unmap_prepare(%struct.xen_blkif_ring* %27, %struct.grant_page** %28, i32 %29, %struct.gnttab_unmap_grant_ref* %16, %struct.page** %19)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref* %16, i32* null, %struct.page** %19, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @put_free_pages(%struct.xen_blkif_ring* %38, %struct.page** %19, i32 %39)
  br label %41

41:                                               ; preds = %33, %23
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.grant_page**, %struct.grant_page*** %5, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %43, i64 %44
  store %struct.grant_page** %45, %struct.grant_page*** %5, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %20

49:                                               ; preds = %20
  %50 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @xen_blkbk_unmap_prepare(%struct.xen_blkif_ring*, %struct.grant_page**, i32, %struct.gnttab_unmap_grant_ref*, %struct.page**) #2

declare dso_local i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref*, i32*, %struct.page**, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @put_free_pages(%struct.xen_blkif_ring*, %struct.page**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
