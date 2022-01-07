; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_check_cpb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_adma_check_cpb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__, %struct.nv_adma_port_priv* }
%struct.TYPE_4__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.nv_adma_port_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"CPB %d, flags=0x%x\0A\00", align 1
@NV_CPB_RESP_ATA_ERR = common dso_local global i32 0, align 4
@NV_CPB_RESP_CMD_ERR = common dso_local global i32 0, align 4
@NV_CPB_RESP_CPB_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CPB resp_flags 0x%x: \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ATA error\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"CMD error\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CPB error\00", align 1
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@AC_ERR_OTHER = common dso_local global i32 0, align 4
@NV_CPB_RESP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32, i32)* @nv_adma_check_cpb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_adma_check_cpb(%struct.ata_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv_adma_port_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_eh_info*, align 8
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %13, align 8
  store %struct.nv_adma_port_priv* %14, %struct.nv_adma_port_priv** %8, align 8
  %15 = load %struct.nv_adma_port_priv*, %struct.nv_adma_port_priv** %8, align 8
  %16 = getelementptr inbounds %struct.nv_adma_port_priv, %struct.nv_adma_port_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @VPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NV_CPB_RESP_ATA_ERR, align 4
  %31 = load i32, i32* @NV_CPB_RESP_CMD_ERR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NV_CPB_RESP_CPB_ERR, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %28, %3
  %38 = phi i1 [ true, %3 ], [ %36, %28 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %109

42:                                               ; preds = %37
  %43 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.ata_eh_info* %45, %struct.ata_eh_info** %10, align 8
  store i32 0, i32* %11, align 4
  %46 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %47 = call i32 @ata_ehi_clear_desc(%struct.ata_eh_info* %46)
  %48 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @__ata_ehi_push_desc(%struct.ata_eh_info* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NV_CPB_RESP_ATA_ERR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %57 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @AC_ERR_DEV, align 4
  %59 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %60 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %99

63:                                               ; preds = %42
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @NV_CPB_RESP_CMD_ERR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %70 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @AC_ERR_DEV, align 4
  %72 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %73 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %98

76:                                               ; preds = %63
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @NV_CPB_RESP_CPB_ERR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %83 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @AC_ERR_SYSTEM, align 4
  %85 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %86 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  store i32 1, i32* %11, align 4
  br label %97

89:                                               ; preds = %76
  %90 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %91 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @AC_ERR_OTHER, align 4
  %93 = load %struct.ata_eh_info*, %struct.ata_eh_info** %10, align 8
  %94 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  store i32 1, i32* %11, align 4
  br label %97

97:                                               ; preds = %89, %81
  br label %98

98:                                               ; preds = %97, %68
  br label %99

99:                                               ; preds = %98, %55
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %104 = call i32 @ata_port_freeze(%struct.ata_port* %103)
  br label %108

105:                                              ; preds = %99
  %106 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %107 = call i32 @ata_port_abort(%struct.ata_port* %106)
  br label %108

108:                                              ; preds = %105, %102
  store i32 -1, i32* %4, align 4
  br label %117

109:                                              ; preds = %37
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @NV_CPB_RESP_DONE, align 4
  %112 = and i32 %110, %111
  %113 = call i64 @likely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %117

116:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %115, %108
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @VPRINTK(i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_ehi_clear_desc(%struct.ata_eh_info*) #1

declare dso_local i32 @__ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @ata_port_abort(%struct.ata_port*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
