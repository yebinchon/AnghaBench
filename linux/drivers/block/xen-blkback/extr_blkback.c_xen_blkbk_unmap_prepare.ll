; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_unmap_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_blkbk_unmap_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif_ring = type { i32 }
%struct.grant_page = type { i64, %struct.page*, i32* }
%struct.page = type { i32 }
%struct.gnttab_unmap_grant_ref = type { i32 }

@BLKBACK_INVALID_HANDLE = common dso_local global i64 0, align 8
@GNTMAP_host_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_blkif_ring*, %struct.grant_page**, i32, %struct.gnttab_unmap_grant_ref*, %struct.page**)* @xen_blkbk_unmap_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_blkbk_unmap_prepare(%struct.xen_blkif_ring* %0, %struct.grant_page** %1, i32 %2, %struct.gnttab_unmap_grant_ref* %3, %struct.page** %4) #0 {
  %6 = alloca %struct.xen_blkif_ring*, align 8
  %7 = alloca %struct.grant_page**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xen_blkif_ring* %0, %struct.xen_blkif_ring** %6, align 8
  store %struct.grant_page** %1, %struct.grant_page*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.gnttab_unmap_grant_ref* %3, %struct.gnttab_unmap_grant_ref** %9, align 8
  store %struct.page** %4, %struct.page*** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %89, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %13
  %18 = load %struct.grant_page**, %struct.grant_page*** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %18, i64 %20
  %22 = load %struct.grant_page*, %struct.grant_page** %21, align 8
  %23 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.xen_blkif_ring*, %struct.xen_blkif_ring** %6, align 8
  %28 = load %struct.grant_page**, %struct.grant_page*** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %28, i64 %30
  %32 = load %struct.grant_page*, %struct.grant_page** %31, align 8
  %33 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @put_persistent_gnt(%struct.xen_blkif_ring* %27, i32* %34)
  br label %89

36:                                               ; preds = %17
  %37 = load %struct.grant_page**, %struct.grant_page*** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %37, i64 %39
  %41 = load %struct.grant_page*, %struct.grant_page** %40, align 8
  %42 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BLKBACK_INVALID_HANDLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %89

47:                                               ; preds = %36
  %48 = load %struct.grant_page**, %struct.grant_page*** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %48, i64 %50
  %52 = load %struct.grant_page*, %struct.grant_page** %51, align 8
  %53 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %52, i32 0, i32 1
  %54 = load %struct.page*, %struct.page** %53, align 8
  %55 = load %struct.page**, %struct.page*** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.page*, %struct.page** %55, i64 %57
  store %struct.page* %54, %struct.page** %58, align 8
  %59 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %59, i64 %61
  %63 = load %struct.grant_page**, %struct.grant_page*** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %63, i64 %65
  %67 = load %struct.grant_page*, %struct.grant_page** %66, align 8
  %68 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %67, i32 0, i32 1
  %69 = load %struct.page*, %struct.page** %68, align 8
  %70 = call i32 @vaddr(%struct.page* %69)
  %71 = load i32, i32* @GNTMAP_host_map, align 4
  %72 = load %struct.grant_page**, %struct.grant_page*** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %72, i64 %74
  %76 = load %struct.grant_page*, %struct.grant_page** %75, align 8
  %77 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %62, i32 %70, i32 %71, i64 %78)
  %80 = load i64, i64* @BLKBACK_INVALID_HANDLE, align 8
  %81 = load %struct.grant_page**, %struct.grant_page*** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.grant_page*, %struct.grant_page** %81, i64 %83
  %85 = load %struct.grant_page*, %struct.grant_page** %84, align 8
  %86 = getelementptr inbounds %struct.grant_page, %struct.grant_page* %85, i32 0, i32 0
  store i64 %80, i64* %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %47, %46, %26
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %13

92:                                               ; preds = %13
  %93 = load i32, i32* %12, align 4
  ret i32 %93
}

declare dso_local i32 @put_persistent_gnt(%struct.xen_blkif_ring*, i32*) #1

declare dso_local i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref*, i32, i32, i64) #1

declare dso_local i32 @vaddr(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
