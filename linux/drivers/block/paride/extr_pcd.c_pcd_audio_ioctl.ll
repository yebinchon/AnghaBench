; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_audio_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_audio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.pcd_unit* }
%struct.pcd_unit = type { i32 }
%struct.cdrom_tochdr = type { i8, i8 }
%struct.cdrom_tocentry = type { i8, i8, i8, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i8, i8 }

@GPCMD_READ_TOC_PMA_ATIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"read toc header\00", align 1
@EIO = common dso_local global i32 0, align 4
@CDROM_MSF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"read toc entry\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32, i8*)* @pcd_audio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_audio_ioctl(%struct.cdrom_device_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pcd_unit*, align 8
  %9 = alloca [12 x i8], align 1
  %10 = alloca %struct.cdrom_tochdr*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca [12 x i8], align 1
  %14 = alloca %struct.cdrom_tocentry*, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %18 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %17, i32 0, i32 0
  %19 = load %struct.pcd_unit*, %struct.pcd_unit** %18, align 8
  store %struct.pcd_unit* %19, %struct.pcd_unit** %8, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %172 [
    i32 128, label %21
    i32 129, label %58
  ]

21:                                               ; preds = %3
  %22 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* @GPCMD_READ_TOC_PMA_ATIP, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 12, i8* %32, align 1
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to %struct.cdrom_tochdr*
  store %struct.cdrom_tochdr* %37, %struct.cdrom_tochdr** %10, align 8
  %38 = load %struct.pcd_unit*, %struct.pcd_unit** %8, align 8
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %41 = call i32 (%struct.pcd_unit*, i8*, i32, ...) @pcd_atapi(%struct.pcd_unit* %38, i8* %39, i32 12, i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %12, align 4
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 2
  %43 = load i8, i8* %42, align 2
  %44 = load %struct.cdrom_tochdr*, %struct.cdrom_tochdr** %10, align 8
  %45 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %44, i32 0, i32 0
  store i8 %43, i8* %45, align 1
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = load %struct.cdrom_tochdr*, %struct.cdrom_tochdr** %10, align 8
  %49 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %48, i32 0, i32 1
  store i8 %47, i8* %49, align 1
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %21
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  br label %56

55:                                               ; preds = %21
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  store i32 %57, i32* %4, align 4
  br label %175

58:                                               ; preds = %3
  %59 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %60 = load i32, i32* @GPCMD_READ_TOC_PMA_ATIP, align 4
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %59, align 1
  %62 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 0, i8* %63, align 1
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 0, i8* %65, align 1
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 0, i8* %66, align 1
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 0, i8* %68, align 1
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 12, i8* %69, align 1
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 0, i8* %70, align 1
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 0, i8* %71, align 1
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %7, align 8
  %74 = bitcast i8* %73 to %struct.cdrom_tocentry*
  store %struct.cdrom_tocentry* %74, %struct.cdrom_tocentry** %14, align 8
  %75 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %76 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CDROM_MSF, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 2, i32 0
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 1
  store i8 %82, i8* %83, align 1
  %84 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %85 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 4
  %87 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 6
  store i8 %86, i8* %87, align 1
  %88 = load %struct.pcd_unit*, %struct.pcd_unit** %8, align 8
  %89 = getelementptr inbounds [12 x i8], [12 x i8]* %13, i64 0, i64 0
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %91 = call i32 (%struct.pcd_unit*, i8*, i32, ...) @pcd_atapi(%struct.pcd_unit* %88, i8* %89, i32 12, i8* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %91, i32* %16, align 4
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 5
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 15
  %96 = trunc i32 %95 to i8
  %97 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %98 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %97, i32 0, i32 1
  store i8 %96, i8* %98, align 1
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 5
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = ashr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %105 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %104, i32 0, i32 2
  store i8 %103, i8* %105, align 2
  %106 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %107 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %106, i32 0, i32 1
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %109, 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  %114 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %115 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %117 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CDROM_MSF, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %58
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 9
  %123 = load i8, i8* %122, align 1
  %124 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %125 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i8 %123, i8* %127, align 1
  %128 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 10
  %129 = load i8, i8* %128, align 2
  %130 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %131 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i8 %129, i8* %133, align 1
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 11
  %135 = load i8, i8* %134, align 1
  %136 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %137 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i8 %135, i8* %139, align 1
  br label %163

140:                                              ; preds = %58
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 8
  %142 = load i8, i8* %141, align 8
  %143 = zext i8 %142 to i32
  %144 = shl i32 %143, 8
  %145 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 9
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = add nsw i32 %144, %147
  %149 = shl i32 %148, 8
  %150 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 10
  %151 = load i8, i8* %150, align 2
  %152 = zext i8 %151 to i32
  %153 = add nsw i32 %149, %152
  %154 = shl i32 %153, 8
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 11
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 %154, %157
  %159 = trunc i32 %158 to i8
  %160 = load %struct.cdrom_tocentry*, %struct.cdrom_tocentry** %14, align 8
  %161 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i8 %159, i8* %162, align 4
  br label %163

163:                                              ; preds = %140, %121
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  br label %170

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169, %166
  %171 = phi i32 [ %168, %166 ], [ 0, %169 ]
  store i32 %171, i32* %4, align 4
  br label %175

172:                                              ; preds = %3
  %173 = load i32, i32* @ENOSYS, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %172, %170, %56
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @pcd_atapi(%struct.pcd_unit*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
