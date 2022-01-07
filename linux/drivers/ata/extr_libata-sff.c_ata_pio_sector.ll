; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_pio_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_pio_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i64, i64, i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.ata_port* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ata_port = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ata_queued_cmd*, i8*, i64, i32)* }
%struct.page = type { i32 }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@HSM_ST_LAST = common dso_local global i8* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"data %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ata_pio_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_pio_sector(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 6
  %16 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  store %struct.ata_port* %16, %struct.ata_port** %4, align 8
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %147

27:                                               ; preds = %1
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %35 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = icmp eq i64 %30, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i8*, i8** @HSM_ST_LAST, align 8
  %41 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %27
  %44 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %45 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %44, i32 0, i32 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call %struct.page* @sg_page(%struct.TYPE_8__* %46)
  store %struct.page* %47, %struct.page** %5, align 8
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %54 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = add i32 %52, %55
  store i32 %56, i32* %6, align 4
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = lshr i32 %58, %59
  %61 = call %struct.page* @nth_page(%struct.page* %57, i32 %60)
  store %struct.page* %61, %struct.page** %5, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = urem i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %66 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 @DPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %73)
  %75 = load %struct.page*, %struct.page** %5, align 8
  %76 = call i8* @kmap_atomic(%struct.page* %75)
  store i8* %76, i8** %7, align 8
  %77 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %78 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32 (%struct.ata_queued_cmd*, i8*, i64, i32)*, i32 (%struct.ata_queued_cmd*, i8*, i64, i32)** %80, align 8
  %82 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %88 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 %81(%struct.ata_queued_cmd* %82, i8* %86, i64 %89, i32 %90)
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @kunmap_atomic(i8* %92)
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %43
  %97 = load %struct.page*, %struct.page** %5, align 8
  %98 = call i32 @PageSlab(%struct.page* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load %struct.page*, %struct.page** %5, align 8
  %102 = call i32 @flush_dcache_page(%struct.page* %101)
  br label %103

103:                                              ; preds = %100, %96, %43
  %104 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %105 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %108 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %112 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %115 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = zext i32 %116 to i64
  %118 = add nsw i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 8
  %120 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %121 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %124 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %123, i32 0, i32 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %122, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %103
  %130 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %131 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %130, i32 0, i32 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = call %struct.TYPE_8__* @sg_next(%struct.TYPE_8__* %132)
  %134 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %135 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %134, i32 0, i32 4
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %135, align 8
  %136 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %137 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %136, i32 0, i32 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = icmp ne %struct.TYPE_8__* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %129
  %141 = load i8*, i8** @HSM_ST_LAST, align 8
  %142 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %143 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %140, %129
  %145 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %146 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %145, i32 0, i32 3
  store i32 0, i32* %146, align 8
  br label %147

147:                                              ; preds = %21, %144, %103
  ret void
}

declare dso_local %struct.page* @sg_page(%struct.TYPE_8__*) #1

declare dso_local %struct.page* @nth_page(%struct.page*, i32) #1

declare dso_local i32 @DPRINTK(i8*, i8*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @PageSlab(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local %struct.TYPE_8__* @sg_next(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
