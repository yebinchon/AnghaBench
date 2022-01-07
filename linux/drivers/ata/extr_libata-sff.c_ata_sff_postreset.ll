; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_postreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_postreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 (%struct.ata_port*, i32)* }

@ATA_DEV_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"EXIT, no device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sff_postreset(%struct.ata_link* %0, i32* %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ata_port*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %7 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %6, i32 0, i32 0
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %5, align 8
  %9 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @ata_std_postreset(%struct.ata_link* %9, i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATA_DEV_NONE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %21, align 8
  %23 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %24 = call i32 %22(%struct.ata_port* %23, i32 1)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATA_DEV_NONE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %35, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %38 = call i32 %36(%struct.ata_port* %37, i32 0)
  br label %39

39:                                               ; preds = %31, %25
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATA_DEV_NONE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATA_DEV_NONE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @DPRINTK(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %77

53:                                               ; preds = %45, %39
  %54 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %55 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %62 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60, %53
  %67 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %68 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %69 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ata_sff_set_devctl(%struct.ata_port* %67, i32 %70)
  %72 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %73 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %76 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %51, %66, %60
  ret void
}

declare dso_local i32 @ata_std_postreset(%struct.ata_link*, i32*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @ata_sff_set_devctl(%struct.ata_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
