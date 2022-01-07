; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_md_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_md_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.meta_data_on_disk = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8* }

@UI_CURRENT = common dso_local global i32 0, align 4
@UI_SIZE = common dso_local global i32 0, align 4
@DRBD_MD_MAGIC_84_UNCLEAN = common dso_local global i32 0, align 4
@BM_BLOCK_SIZE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"meta data update failed!\0A\00", align 1
@DRBD_META_IO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_md_write(%struct.drbd_device* %0, i8* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.meta_data_on_disk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.meta_data_on_disk*
  store %struct.meta_data_on_disk* %9, %struct.meta_data_on_disk** %5, align 8
  %10 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %11 = call i32 @memset(%struct.meta_data_on_disk* %10, i32 0, i32 104)
  %12 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %13 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @drbd_get_capacity(i32 %14)
  %16 = call i8* @cpu_to_be64(i32 %15)
  %17 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %18 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %17, i32 0, i32 12
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @UI_CURRENT, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %42, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @UI_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %26 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_be64(i32 %34)
  %36 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %37 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %36, i32 0, i32 11
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %35, i8** %41, align 8
  br label %42

42:                                               ; preds = %24
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %47 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %54 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @DRBD_MD_MAGIC_84_UNCLEAN, align 4
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %58 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %60 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %67 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %66, i32 0, i32 8
  store i8* %65, i8** %67, align 8
  %68 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %69 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %76 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %75, i32 0, i32 7
  store i8* %74, i8** %76, align 8
  %77 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %78 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %84 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @BM_BLOCK_SIZE, align 4
  %86 = call i8* @cpu_to_be32(i32 %85)
  %87 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %88 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %90 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_be64(i32 %94)
  %96 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %97 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %99 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %106 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %108 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %112 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %114 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @cpu_to_be32(i32 %118)
  %120 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %121 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %123 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @cpu_to_be32(i32 %127)
  %129 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %5, align 8
  %130 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %132 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %133 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = call i64 @drbd_md_ss(%struct.TYPE_7__* %134)
  %136 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %137 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %135, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @D_ASSERT(%struct.drbd_device* %131, i32 %143)
  %145 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %146 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %6, align 8
  %151 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %152 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %153 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i32, i32* @REQ_OP_WRITE, align 4
  %157 = call i64 @drbd_md_sync_page_io(%struct.drbd_device* %151, %struct.TYPE_7__* %154, i64 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %45
  %160 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %161 = call i32 @drbd_err(%struct.drbd_device* %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %162 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %163 = load i32, i32* @DRBD_META_IO_ERROR, align 4
  %164 = call i32 @drbd_chk_io_error(%struct.drbd_device* %162, i32 1, i32 %163)
  br label %165

165:                                              ; preds = %159, %45
  ret void
}

declare dso_local i32 @memset(%struct.meta_data_on_disk*, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @drbd_get_capacity(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i64 @drbd_md_ss(%struct.TYPE_7__*) #1

declare dso_local i64 @drbd_md_sync_page_io(%struct.drbd_device*, %struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*) #1

declare dso_local i32 @drbd_chk_io_error(%struct.drbd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
