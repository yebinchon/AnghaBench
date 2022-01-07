; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_alloc_pinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_alloc_pinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32*, %struct.ata_port** }
%struct.ata_port = type { i32*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.ata_port_info = type { i32*, i32, i32, i32, i32, i32 }

@ata_dummy_port_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_host* @ata_host_alloc_pinfo(%struct.device* %0, %struct.ata_port_info** %1, i32 %2) #0 {
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ata_port_info**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port_info*, align 8
  %9 = alloca %struct.ata_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ata_port*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ata_port_info** %1, %struct.ata_port_info*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ata_host* @ata_host_alloc(%struct.device* %13, i32 %14)
  store %struct.ata_host* %15, %struct.ata_host** %9, align 8
  %16 = load %struct.ata_host*, %struct.ata_host** %9, align 8
  %17 = icmp ne %struct.ata_host* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.ata_host* null, %struct.ata_host** %4, align 8
  br label %104

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.ata_port_info* null, %struct.ata_port_info** %8, align 8
  br label %20

20:                                               ; preds = %99, %19
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.ata_host*, %struct.ata_host** %9, align 8
  %23 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %102

26:                                               ; preds = %20
  %27 = load %struct.ata_host*, %struct.ata_host** %9, align 8
  %28 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %27, i32 0, i32 2
  %29 = load %struct.ata_port**, %struct.ata_port*** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %29, i64 %31
  %33 = load %struct.ata_port*, %struct.ata_port** %32, align 8
  store %struct.ata_port* %33, %struct.ata_port** %12, align 8
  %34 = load %struct.ata_port_info**, %struct.ata_port_info*** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ata_port_info*, %struct.ata_port_info** %34, i64 %36
  %38 = load %struct.ata_port_info*, %struct.ata_port_info** %37, align 8
  %39 = icmp ne %struct.ata_port_info* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.ata_port_info**, %struct.ata_port_info*** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds %struct.ata_port_info*, %struct.ata_port_info** %41, i64 %44
  %46 = load %struct.ata_port_info*, %struct.ata_port_info** %45, align 8
  store %struct.ata_port_info* %46, %struct.ata_port_info** %8, align 8
  br label %47

47:                                               ; preds = %40, %26
  %48 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %49 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %52 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %54 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %57 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %59 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %62 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %64 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %67 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %71 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %74 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 8
  %78 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %79 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %82 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load %struct.ata_host*, %struct.ata_host** %9, align 8
  %84 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %47
  %88 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %89 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, @ata_dummy_port_ops
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.ata_port_info*, %struct.ata_port_info** %8, align 8
  %94 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.ata_host*, %struct.ata_host** %9, align 8
  %97 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  br label %98

98:                                               ; preds = %92, %87, %47
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %20

102:                                              ; preds = %20
  %103 = load %struct.ata_host*, %struct.ata_host** %9, align 8
  store %struct.ata_host* %103, %struct.ata_host** %4, align 8
  br label %104

104:                                              ; preds = %102, %18
  %105 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  ret %struct.ata_host* %105
}

declare dso_local %struct.ata_host* @ata_host_alloc(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
