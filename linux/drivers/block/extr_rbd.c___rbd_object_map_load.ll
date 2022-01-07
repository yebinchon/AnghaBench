; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_object_map_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_object_map_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }
%struct.page = type { i32 }

@oid = common dso_local global i32 0, align 4
@BITS_PER_OBJ = common dso_local global i64 0, align 8
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rbd\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"object_map_load\00", align 1
@CEPH_OSD_FLAG_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"object map size mismatch: %llu vs %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @__rbd_object_map_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rbd_object_map_load(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.ceph_osd_client*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %14 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %15 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %14, i32 0, i32 6
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.ceph_osd_client* %19, %struct.ceph_osd_client** %4, align 8
  %20 = load i32, i32* @oid, align 4
  %21 = call i32 @CEPH_DEFINE_OID_ONSTACK(i32 %20)
  %22 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %23 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %28 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %1
  %33 = phi i1 [ false, %1 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @rbd_assert(i32 %34)
  %36 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %37 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %36, i32 0, i32 5
  %38 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %39 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ceph_get_num_objects(i32* %37, i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @BITS_PER_OBJ, align 8
  %45 = mul i64 %43, %44
  %46 = load i32, i32* @BITS_PER_BYTE, align 4
  %47 = call i64 @DIV_ROUND_UP_ULL(i64 %45, i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @calc_pages_for(i32 0, i64 %48)
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.page** @ceph_alloc_page_vector(i32 %51, i32 %52)
  store %struct.page** %53, %struct.page*** %5, align 8
  %54 = load %struct.page**, %struct.page*** %5, align 8
  %55 = call i64 @IS_ERR(%struct.page** %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %32
  %58 = load %struct.page**, %struct.page*** %5, align 8
  %59 = call i32 @PTR_ERR(%struct.page** %58)
  store i32 %59, i32* %2, align 4
  br label %149

60:                                               ; preds = %32
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  %65 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %66 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %67 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rbd_object_map_name(%struct.rbd_device* %65, i32 %70, i32* @oid)
  %72 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %73 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %74 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %73, i32 0, i32 2
  %75 = load i32, i32* @CEPH_OSD_FLAG_READ, align 4
  %76 = load %struct.page**, %struct.page*** %5, align 8
  %77 = call i32 @ceph_osdc_call(%struct.ceph_osd_client* %72, i32* @oid, i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32* null, i32 0, %struct.page** %76, i64* %8)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  br label %144

81:                                               ; preds = %60
  %82 = load %struct.page**, %struct.page*** %5, align 8
  %83 = getelementptr inbounds %struct.page*, %struct.page** %82, i64 0
  %84 = load %struct.page*, %struct.page** %83, align 8
  %85 = call i8* @page_address(%struct.page* %84)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @min(i64 %87, i64 %89)
  %91 = sext i32 %90 to i64
  %92 = getelementptr i8, i8* %86, i64 %91
  store i8* %92, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @decode_object_map_header(i8** %6, i8* %93, i64* %11)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %144

98:                                               ; preds = %81
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @rbd_warn(%struct.rbd_device* %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %104, i64 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %13, align 4
  br label %144

109:                                              ; preds = %98
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @offset_in_page(i8* %110)
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %111, %112
  %114 = load i64, i64* %8, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %13, align 4
  br label %144

119:                                              ; preds = %109
  %120 = load i64, i64* %10, align 8
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i32 @kvmalloc(i64 %120, i32 %121)
  %123 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %124 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %126 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %13, align 4
  br label %144

132:                                              ; preds = %119
  %133 = load i64, i64* %11, align 8
  %134 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %135 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.page**, %struct.page*** %5, align 8
  %137 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %138 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = call i64 @offset_in_page(i8* %140)
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @ceph_copy_from_page_vector(%struct.page** %136, i32 %139, i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %132, %129, %116, %102, %97, %80
  %145 = load %struct.page**, %struct.page*** %5, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @ceph_release_page_vector(%struct.page** %145, i32 %146)
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %144, %57
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @CEPH_DEFINE_OID_ONSTACK(i32) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i64 @ceph_get_num_objects(i32*, i32) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i64, i32) #1

declare dso_local i32 @calc_pages_for(i32, i64) #1

declare dso_local %struct.page** @ceph_alloc_page_vector(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

declare dso_local i32 @rbd_object_map_name(%struct.rbd_device*, i32, i32*) #1

declare dso_local i32 @ceph_osdc_call(%struct.ceph_osd_client*, i32*, i32*, i8*, i8*, i32, i32*, i32, %struct.page**, i64*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @decode_object_map_header(i8**, i8*, i64*) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i64, i64) #1

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local i32 @kvmalloc(i64, i32) #1

declare dso_local i32 @ceph_copy_from_page_vector(%struct.page**, i32, i64, i64) #1

declare dso_local i32 @ceph_release_page_vector(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
