; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_atapi_send_cdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_atapi_send_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*, i32, i32, i32)* }
%struct.ata_queued_cmd = type { %struct.TYPE_4__, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"send cdb\0A\00", align 1
@HSM_ST = common dso_local global i8* null, align 8
@HSM_ST_LAST = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_queued_cmd*)* @atapi_send_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_send_cdb(%struct.ata_port* %0, %struct.ata_queued_cmd* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %4, align 8
  %5 = call i32 @DPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 12
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32 (%struct.ata_queued_cmd*, i32, i32, i32)*, i32 (%struct.ata_queued_cmd*, i32, i32, i32)** %17, align 8
  %19 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %18(%struct.ata_queued_cmd* %19, i32 %22, i32 %27, i32 1)
  %29 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %30 = call i32 @ata_sff_sync(%struct.ata_port* %29)
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %43 [
    i32 128, label %35
    i32 129, label %39
  ]

35:                                               ; preds = %2
  %36 = load i8*, i8** @HSM_ST, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %45

39:                                               ; preds = %2
  %40 = load i8*, i8** @HSM_ST_LAST, align 8
  %41 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %45

43:                                               ; preds = %2
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %39, %35
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ata_sff_sync(%struct.ata_port*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
