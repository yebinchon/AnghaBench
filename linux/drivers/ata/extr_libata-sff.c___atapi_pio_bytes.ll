; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c___atapi_pio_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c___atapi_pio_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.scatterlist*, %struct.TYPE_5__, i32, %struct.ata_device*, %struct.ata_port* }
%struct.scatterlist = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ata_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_port = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ata_queued_cmd*, i8*, i32, i32)* }
%struct.page = type { i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"unexpected or too much trailing data buf=%u cur=%u bytes=%u\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"data %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, i32)* @__atapi_pio_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__atapi_pio_bytes(%struct.ata_queued_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ata_device*, align 8
  %9 = alloca %struct.ata_eh_info*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @WRITE, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @READ, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %29, i32 0, i32 6
  %31 = load %struct.ata_port*, %struct.ata_port** %30, align 8
  store %struct.ata_port* %31, %struct.ata_port** %7, align 8
  %32 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %32, i32 0, i32 5
  %34 = load %struct.ata_device*, %struct.ata_device** %33, align 8
  store %struct.ata_device* %34, %struct.ata_device** %8, align 8
  %35 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.ata_eh_info* %38, %struct.ata_eh_info** %9, align 8
  br label %39

39:                                               ; preds = %152, %27
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 2
  %42 = load %struct.scatterlist*, %struct.scatterlist** %41, align 8
  store %struct.scatterlist* %42, %struct.scatterlist** %10, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %44 = icmp ne %struct.scatterlist* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.ata_eh_info*, %struct.ata_eh_info** %9, align 8
  %51 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %57)
  store i32 -1, i32* %3, align 4
  br label %154

59:                                               ; preds = %39
  %60 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %61 = call %struct.page* @sg_page(%struct.scatterlist* %60)
  store %struct.page* %61, %struct.page** %11, align 8
  %62 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.page*, %struct.page** %11, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @PAGE_SHIFT, align 4
  %72 = lshr i32 %70, %71
  %73 = call %struct.page* @nth_page(%struct.page* %69, i32 %72)
  store %struct.page* %73, %struct.page** %11, align 8
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load i32, i32* %13, align 4
  %76 = urem i32 %75, %74
  store i32 %76, i32* %13, align 4
  %77 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %78 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %79, %82
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @min(i32 %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load i32, i32* %13, align 4
  %89 = sub i32 %87, %88
  %90 = call i32 @min(i32 %86, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %92 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %100 = call i32 @DPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  %101 = load %struct.page*, %struct.page** %11, align 8
  %102 = call i8* @kmap_atomic(%struct.page* %101)
  store i8* %102, i8** %12, align 8
  %103 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %104 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32 (%struct.ata_queued_cmd*, i8*, i32, i32)*, i32 (%struct.ata_queued_cmd*, i8*, i32, i32)** %106, align 8
  %108 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 %107(%struct.ata_queued_cmd* %108, i8* %112, i32 %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @kunmap_atomic(i8* %116)
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @min(i32 %118, i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %125 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %130 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %137 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %59
  %141 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %142 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %141, i32 0, i32 2
  %143 = load %struct.scatterlist*, %struct.scatterlist** %142, align 8
  %144 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %143)
  %145 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %146 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %145, i32 0, i32 2
  store %struct.scatterlist* %144, %struct.scatterlist** %146, align 8
  %147 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %148 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %140, %59
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %39

153:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %49
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32, i32, i32) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.page* @nth_page(%struct.page*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i8*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
