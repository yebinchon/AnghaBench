; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_data_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_data_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i32 }

@READ = common dso_local global i32 0, align 4
@IDECTRL_ADDR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, i8*, i32, i32)* @ep93xx_pata_data_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pata_data_xfer(%struct.ata_queued_cmd* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_port*, align 8
  %10 = alloca %struct.ep93xx_pata_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i8], align 1
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  store %struct.ata_port* %20, %struct.ata_port** %9, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %24, align 8
  store %struct.ep93xx_pata_data* %25, %struct.ep93xx_pata_data** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = lshr i32 %28, 1
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %55, %4
  %31 = load i32, i32* %12, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @READ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %10, align 8
  %40 = load i32, i32* @IDECTRL_ADDR_DATA, align 4
  %41 = call i32 @ep93xx_pata_read_data(%struct.ep93xx_pata_data* %39, i32 %40)
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  br label %55

46:                                               ; preds = %34
  %47 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %11, align 8
  %50 = load i32, i32* %48, align 4
  %51 = trunc i32 %50 to i8
  %52 = call i32 @le16_to_cpu(i8 zeroext %51)
  %53 = load i32, i32* @IDECTRL_ADDR_DATA, align 4
  %54 = call i32 @ep93xx_pata_write_data(%struct.ep93xx_pata_data* %47, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %38
  br label %30

56:                                               ; preds = %30
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 1
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %56
  %62 = bitcast [2 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %62, i8 0, i64 2, i1 false)
  %63 = load i32, i32* %7, align 4
  %64 = sub i32 %63, 1
  %65 = load i8*, i8** %6, align 8
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @READ, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %10, align 8
  %73 = load i32, i32* @IDECTRL_ADDR_DATA, align 4
  %74 = call i32 @ep93xx_pata_read_data(%struct.ep93xx_pata_data* %72, i32 %73)
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = ptrtoint i8* %75 to i8
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 %76, i8* %77, align 1
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %6, align 8
  store i8 %79, i8* %80, align 1
  br label %91

81:                                               ; preds = %61
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 %83, i8* %84, align 1
  %85 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %10, align 8
  %86 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = call i32 @le16_to_cpu(i8 zeroext %87)
  %89 = load i32, i32* @IDECTRL_ADDR_DATA, align 4
  %90 = call i32 @ep93xx_pata_write_data(%struct.ep93xx_pata_data* %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %81, %71
  %92 = load i32, i32* %12, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %91, %56
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 %95, 1
  ret i32 %96
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ep93xx_pata_read_data(%struct.ep93xx_pata_data*, i32) #1

declare dso_local i32 @ep93xx_pata_write_data(%struct.ep93xx_pata_data*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i8 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
