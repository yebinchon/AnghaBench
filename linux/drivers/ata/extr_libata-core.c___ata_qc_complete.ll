; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c___ata_qc_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c___ata_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, i64, i32 (%struct.ata_queued_cmd*)*, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.ata_port* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ata_link* }
%struct.ata_link = type { i32, i32 }
%struct.ata_port = type { i64, %struct.ata_link*, i32 }

@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4
@ATA_QCFLAG_DMAMAP = common dso_local global i32 0, align 4
@ATA_TAG_POISON = common dso_local global i32 0, align 4
@ATA_QCFLAG_CLEAR_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ata_qc_complete(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_link*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = icmp eq %struct.ata_queued_cmd* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON_ONCE(i32 %7)
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 6
  %20 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  store %struct.ata_port* %20, %struct.ata_port** %3, align 8
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ata_link*, %struct.ata_link** %24, align 8
  store %struct.ata_link* %25, %struct.ata_link** %4, align 8
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %27 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ATA_QCFLAG_DMAMAP, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %35 = call i32 @ata_sg_clean(%struct.ata_queued_cmd* %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %38 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @ata_is_ncq(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %45 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %50 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %54 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %43
  %58 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %43
  br label %71

63:                                               ; preds = %36
  %64 = load i32, i32* @ATA_TAG_POISON, align 4
  %65 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %66 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %68 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %63, %62
  %72 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %73 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ATA_QCFLAG_CLEAR_EXCL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %80 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %79, i32 0, i32 1
  %81 = load %struct.ata_link*, %struct.ata_link** %80, align 8
  %82 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %83 = icmp eq %struct.ata_link* %81, %82
  br label %84

84:                                               ; preds = %78, %71
  %85 = phi i1 [ false, %71 ], [ %83, %78 ]
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %91 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %90, i32 0, i32 1
  store %struct.ata_link* null, %struct.ata_link** %91, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %96 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %100 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = shl i64 1, %101
  %103 = xor i64 %102, -1
  %104 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %105 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %109 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %108, i32 0, i32 3
  %110 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %109, align 8
  %111 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %112 = call i32 %110(%struct.ata_queued_cmd* %111)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_sg_clean(%struct.ata_queued_cmd*) #1

declare dso_local i64 @ata_is_ncq(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
