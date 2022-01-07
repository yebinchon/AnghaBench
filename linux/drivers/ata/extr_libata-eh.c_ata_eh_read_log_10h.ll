; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_read_log_10h.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_read_log_10h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_LOG_SATA_NCQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid checksum 0x%x on log page 10h\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ATA_DEV_ZAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32*, %struct.ata_taskfile*)* @ata_eh_read_log_10h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_read_log_10h(%struct.ata_device* %0, i32* %1, %struct.ata_taskfile* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ata_taskfile*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ata_taskfile* %2, %struct.ata_taskfile** %7, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %20 = load i32, i32* @ATA_LOG_SATA_NCQ, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @ata_read_log_page(%struct.ata_device* %19, i32 %20, i32 0, i32* %21, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %149

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ATA_SECT_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ata_dev_warn(%struct.ata_device* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %149

60:                                               ; preds = %51
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 31
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %70 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %80 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %85 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %90 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %95 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %100 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 9
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %105 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 10
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %110 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 12
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %115 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 13
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %120 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %119, i32 0, i32 10
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %122 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ATA_DEV_ZAC, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %148

126:                                              ; preds = %60
  %127 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %128 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @ata_id_has_ncq_autosense(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 14
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 16
  %137 = load i32*, i32** %8, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 15
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 8
  %141 = or i32 %136, %140
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 16
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %141, %144
  %146 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %147 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %146, i32 0, i32 11
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %132, %126, %60
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %57, %25
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @ata_read_log_page(%struct.ata_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*, i32) #1

declare dso_local i64 @ata_id_has_ncq_autosense(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
