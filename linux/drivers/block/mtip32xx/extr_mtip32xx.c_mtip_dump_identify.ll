; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_dump_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_dump_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Serial No.: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Firmware Ver.: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Model: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Security: %04x %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"(LOCKED)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Capacity: %llu sectors (%llu MB)\0A\00", align 1
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Card Type: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*)* @mtip_dump_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_dump_identify(%struct.mtip_port* %0) #0 {
  %2 = alloca %struct.mtip_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca [42 x i8], align 16
  store %struct.mtip_port* %0, %struct.mtip_port** %2, align 8
  %6 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %7 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %127

11:                                               ; preds = %1
  %12 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %13 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %14 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 10
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @strlcpy(i8* %12, i8* %17, i32 21)
  %19 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %20 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %26 = call i32 (i32*, i8*, ...) @dev_info(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %28 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %29 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 23
  %32 = bitcast i32* %31 to i8*
  %33 = call i32 @strlcpy(i8* %27, i8* %32, i32 9)
  %34 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %35 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %41 = call i32 (i32*, i8*, ...) @dev_info(i32* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %43 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %44 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 27
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @strlcpy(i8* %42, i8* %47, i32 41)
  %49 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %50 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %56 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %58 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %64 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 128
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %69 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 128
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %77 = call i32 (i32*, i8*, ...) @dev_info(i32* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %67, i8* %76)
  %78 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %79 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i64 @mtip_hw_get_capacity(%struct.TYPE_4__* %80, i64* %3)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %11
  %84 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %85 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %3, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i64, i64* %3, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @ATA_SECT_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = ashr i32 %95, 20
  %97 = call i32 (i32*, i8*, ...) @dev_info(i32* %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %83, %11
  %99 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %100 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* @PCI_REVISION_ID, align 4
  %105 = call i32 @pci_read_config_word(%struct.TYPE_3__* %103, i32 %104, i16* %4)
  %106 = load i16, i16* %4, align 2
  %107 = zext i16 %106 to i32
  %108 = and i32 %107, 255
  switch i32 %108, label %115 [
    i32 1, label %109
    i32 3, label %112
  ]

109:                                              ; preds = %98
  %110 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %111 = call i32 @strlcpy(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 3)
  br label %118

112:                                              ; preds = %98
  %113 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %114 = call i32 @strlcpy(i8* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 3)
  br label %118

115:                                              ; preds = %98
  %116 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %117 = call i32 @strlcpy(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 2)
  br label %118

118:                                              ; preds = %115, %112, %109
  %119 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %120 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %126 = call i32 (i32*, i8*, ...) @dev_info(i32* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %118, %10
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @mtip_hw_get_capacity(%struct.TYPE_4__*, i64*) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
