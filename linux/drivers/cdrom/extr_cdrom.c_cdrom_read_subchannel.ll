; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_read_subchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_read_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i64*, i32* }
%struct.cdrom_subchnl = type { i64, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_SUBCHANNEL = common dso_local global i64 0, align 8
@CDROM_LBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_subchnl*, i32)* @cdrom_read_subchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_read_subchannel(%struct.cdrom_device_info* %0, %struct.cdrom_subchnl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca %struct.cdrom_subchnl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdrom_device_ops*, align 8
  %9 = alloca %struct.packet_command, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store %struct.cdrom_subchnl* %1, %struct.cdrom_subchnl** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 0
  %14 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %13, align 8
  store %struct.cdrom_device_ops* %14, %struct.cdrom_device_ops** %8, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %16 = load i32, i32* @CGC_DATA_READ, align 4
  %17 = call i32 @init_cdrom_command(%struct.packet_command* %9, i8* %15, i32 16, i32 %16)
  %18 = load i64, i64* @GPCMD_READ_SUBCHANNEL, align 8
  %19 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %23 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64 %24, i64* %27, align 8
  %28 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  store i64 64, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  store i64 %35, i64* %38, align 8
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 8
  store i64 16, i64* %41, align 8
  %42 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %8, align 8
  %43 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %43, align 8
  %45 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %46 = bitcast %struct.cdrom_device_info* %45 to %struct.cdrom_device_info.0*
  %47 = call i32 %44(%struct.cdrom_device_info.0* %46, %struct.packet_command* %9)
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %183

51:                                               ; preds = %3
  %52 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %57 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 15
  %63 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %64 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %70 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %76 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %78 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CDROM_LBA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %133

82:                                               ; preds = %51
  %83 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 24
  %88 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 9
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 16
  %93 = or i32 %87, %92
  %94 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 10
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 8
  %99 = or i32 %93, %98
  %100 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 11
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %99, %103
  %105 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %106 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 12
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 24
  %113 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 13
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 16
  %118 = or i32 %112, %117
  %119 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 14
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %118, %123
  %125 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 15
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %124, %128
  %130 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %131 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  br label %182

133:                                              ; preds = %51
  %134 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 13
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %139 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 %137, i32* %141, align 4
  %142 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 14
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %147 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 4
  %150 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 15
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %155 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  store i32 %153, i32* %157, align 4
  %158 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 9
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %163 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 4
  %166 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 10
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %171 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 4
  %174 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 11
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.cdrom_subchnl*, %struct.cdrom_subchnl** %6, align 8
  %179 = getelementptr inbounds %struct.cdrom_subchnl, %struct.cdrom_subchnl* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  store i32 %177, i32* %181, align 4
  br label %182

182:                                              ; preds = %133, %82
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %182, %49
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
