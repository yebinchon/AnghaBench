; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_dvd_read_physical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_dvd_read_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dvd_layer* }
%struct.dvd_layer = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.packet_command = type { i32*, i32, i32 }

@DVD_LAYERS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_DVD_STRUCTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.TYPE_5__*, %struct.packet_command*)* @dvd_read_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvd_read_physical(%struct.cdrom_device_info* %0, %struct.TYPE_5__* %1, %struct.packet_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.packet_command*, align 8
  %8 = alloca [21 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dvd_layer*, align 8
  %11 = alloca %struct.cdrom_device_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.packet_command* %2, %struct.packet_command** %7, align 8
  %14 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %15 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %14, i32 0, i32 0
  %16 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %15, align 8
  store %struct.cdrom_device_ops* %16, %struct.cdrom_device_ops** %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @DVD_LAYERS, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %220

27:                                               ; preds = %3
  %28 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %29 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0
  %30 = load i32, i32* @CGC_DATA_READ, align 4
  %31 = call i32 @init_cdrom_command(%struct.packet_command* %28, i8* %29, i32 21, i32 %30)
  %32 = load i32, i32* @GPCMD_READ_DVD_STRUCTURE, align 4
  %33 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %34 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  store i32 %37, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %46 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  store i32 %44, i32* %48, align 4
  %49 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %50 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 255
  %53 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 9
  store i32 %52, i32* %56, align 4
  %57 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %58 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %57, i32 0, i32 2
  store i32 1, i32* %58, align 4
  %59 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %11, align 8
  %60 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %59, i32 0, i32 0
  %61 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %60, align 8
  %62 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %63 = bitcast %struct.cdrom_device_info* %62 to %struct.cdrom_device_info.0*
  %64 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %65 = call i32 %61(%struct.cdrom_device_info.0* %63, %struct.packet_command* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %27
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %220

70:                                               ; preds = %27
  %71 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 4
  store i8* %71, i8** %9, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.dvd_layer*, %struct.dvd_layer** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %75, i64 %77
  store %struct.dvd_layer* %78, %struct.dvd_layer** %10, align 8
  %79 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %80 = call i32 @memset(%struct.dvd_layer* %79, i32 0, i32 13)
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 15
  %86 = trunc i32 %85 to i8
  %87 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %88 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %87, i32 0, i32 0
  store i8 %86, i8* %88, align 1
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = ashr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %96 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %95, i32 0, i32 1
  store i8 %94, i8* %96, align 1
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 15
  %102 = trunc i32 %101 to i8
  %103 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %104 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %103, i32 0, i32 2
  store i8 %102, i8* %104, align 1
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = ashr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %112 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %111, i32 0, i32 3
  store i8 %110, i8* %112, align 1
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 15
  %118 = trunc i32 %117 to i8
  %119 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %120 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %119, i32 0, i32 4
  store i8 %118, i8* %120, align 1
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = ashr i32 %124, 4
  %126 = and i32 %125, 1
  %127 = trunc i32 %126 to i8
  %128 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %129 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %128, i32 0, i32 5
  store i8 %127, i8* %129, align 1
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = ashr i32 %133, 5
  %135 = and i32 %134, 3
  %136 = trunc i32 %135 to i8
  %137 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %138 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %137, i32 0, i32 6
  store i8 %136, i8* %138, align 1
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 15
  %144 = trunc i32 %143 to i8
  %145 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %146 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %145, i32 0, i32 7
  store i8 %144, i8* %146, align 1
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 3
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = ashr i32 %150, 4
  %152 = trunc i32 %151 to i8
  %153 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %154 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %153, i32 0, i32 8
  store i8 %152, i8* %154, align 1
  %155 = load i8*, i8** %9, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 5
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = shl i32 %158, 16
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 6
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = shl i32 %163, 8
  %165 = or i32 %159, %164
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 7
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = or i32 %165, %169
  %171 = trunc i32 %170 to i8
  %172 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %173 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %172, i32 0, i32 9
  store i8 %171, i8* %173, align 1
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 9
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = shl i32 %177, 16
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 10
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = shl i32 %182, 8
  %184 = or i32 %178, %183
  %185 = load i8*, i8** %9, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 11
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = or i32 %184, %188
  %190 = trunc i32 %189 to i8
  %191 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %192 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %191, i32 0, i32 10
  store i8 %190, i8* %192, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 13
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = shl i32 %196, 16
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 14
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = shl i32 %201, 8
  %203 = or i32 %197, %202
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 15
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = or i32 %203, %207
  %209 = trunc i32 %208 to i8
  %210 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %211 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %210, i32 0, i32 11
  store i8 %209, i8* %211, align 1
  %212 = load i8*, i8** %9, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 16
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = ashr i32 %215, 7
  %217 = trunc i32 %216 to i8
  %218 = load %struct.dvd_layer*, %struct.dvd_layer** %10, align 8
  %219 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %218, i32 0, i32 12
  store i8 %217, i8* %219, align 1
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %70, %68, %24
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.dvd_layer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
