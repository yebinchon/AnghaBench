; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c___ata_scsi_queuecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c___ata_scsi_queuecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i32, i32, i32 (%struct.scsi_cmnd*)* }
%struct.ata_device = type { i64, i32 }

@ATA_DEV_ATA = common dso_local global i64 0, align 8
@ATA_DEV_ZAC = common dso_local global i64 0, align 8
@ATA_16 = common dso_local global i64 0, align 8
@atapi_passthru16 = common dso_local global i32 0, align 4
@ATAPI_CDB_LEN = common dso_local global i32 0, align 4
@atapi_xlat = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"bad CDB len=%u, scsi_op=0x%02x, max=%u\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.ata_device*)* @__ata_scsi_queuecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ata_scsi_queuecmd(%struct.scsi_cmnd* %0, %struct.ata_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ATA_DEV_ATA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ATA_DEV_ZAC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20, %2
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br label %39

39:                                               ; preds = %31, %26
  %40 = phi i1 [ true, %26 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %128

45:                                               ; preds = %39
  %46 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32* @ata_get_xlat_func(%struct.ata_device* %46, i64 %47)
  store i32* %48, i32** %7, align 8
  br label %114

49:                                               ; preds = %20
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %128

59:                                               ; preds = %49
  store i32* null, i32** %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @ATA_16, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @atapi_passthru16, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ true, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @COMMAND_SIZE(i64 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %83 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ATAPI_CDB_LEN, align 4
  %91 = icmp sgt i32 %89, %90
  br label %92

92:                                               ; preds = %86, %80, %72
  %93 = phi i1 [ true, %80 ], [ true, %72 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %128

98:                                               ; preds = %92
  %99 = load i32*, i32** @atapi_xlat, align 8
  store i32* %99, i32** %7, align 8
  br label %113

100:                                              ; preds = %67
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 16
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %128

109:                                              ; preds = %100
  %110 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32* @ata_get_xlat_func(%struct.ata_device* %110, i64 %111)
  store i32* %112, i32** %7, align 8
  br label %113

113:                                              ; preds = %109, %98
  br label %114

114:                                              ; preds = %113, %45
  %115 = load i32*, i32** %7, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @ata_scsi_translate(%struct.ata_device* %118, %struct.scsi_cmnd* %119, i32* %120)
  store i32 %121, i32* %8, align 4
  br label %126

122:                                              ; preds = %114
  %123 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %125 = call i32 @ata_scsi_simulate(%struct.ata_device* %123, %struct.scsi_cmnd* %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %146

128:                                              ; preds = %108, %97, %58, %44
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %134 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %131, i64 %132, i32 %135)
  %137 = load i32, i32* @DID_ERROR, align 4
  %138 = shl i32 %137, 16
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %140 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %142 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %141, i32 0, i32 3
  %143 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %142, align 8
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %145 = call i32 %143(%struct.scsi_cmnd* %144)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %128, %126
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @ata_get_xlat_func(%struct.ata_device*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @COMMAND_SIZE(i64) #1

declare dso_local i32 @ata_scsi_translate(%struct.ata_device*, %struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @ata_scsi_simulate(%struct.ata_device*, %struct.scsi_cmnd*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
