; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [38 x i8] c"%s: %s version %s, major %d, nice %d\0A\00", align 1
@name = common dso_local global i32 0, align 4
@PCD_VERSION = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@nice = common dso_local global i32 0, align 4
@par_drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register %s driver\0A\00", align 1
@pcd_drive_count = common dso_local global i64 0, align 8
@pcd = common dso_local global %struct.pcd_unit* null, align 8
@pcd_buffer = common dso_local global i32 0, align 4
@PI_PCD = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@PCD_UNITS = common dso_local global i32 0, align 4
@drives = common dso_local global i32*** null, align 8
@D_PRT = common dso_local global i64 0, align 8
@D_MOD = common dso_local global i64 0, align 8
@D_UNI = common dso_local global i64 0, align 8
@D_PRO = common dso_local global i64 0, align 8
@D_DLY = common dso_local global i64 0, align 8
@D_SLV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: No CD-ROM drive found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcd_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [18 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcd_unit*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @name, align 4
  %8 = load i32, i32* @name, align 4
  %9 = load i32, i32* @PCD_VERSION, align 4
  %10 = load i32, i32* @major, align 4
  %11 = load i32, i32* @nice, align 4
  %12 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @name, align 4
  %14 = call i32 @pi_register_driver(i32 %13)
  store i32 %14, i32* @par_drv, align 4
  %15 = load i32, i32* @par_drv, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* @name, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %1, align 4
  br label %186

20:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  %21 = load i64, i64* @pcd_drive_count, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %24, %struct.pcd_unit** %5, align 8
  %25 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %26 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %31 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @pcd_buffer, align 4
  %34 = load i32, i32* @PI_PCD, align 4
  %35 = load i32, i32* @verbose, align 4
  %36 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %37 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @pi_init(i32 %32, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %29
  %42 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %43 = getelementptr inbounds [18 x i8], [18 x i8]* %2, i64 0, i64 0
  %44 = call i32 @pcd_probe(%struct.pcd_unit* %42, i32 -1, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %48 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %53 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pi_release(i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %29, %23
  br label %142

58:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  %59 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %59, %struct.pcd_unit** %5, align 8
  br label %60

60:                                               ; preds = %136, %58
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @PCD_UNITS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %141

64:                                               ; preds = %60
  %65 = load i32***, i32**** @drives, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32**, i32*** %65, i64 %67
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* @D_PRT, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %64
  br label %136

77:                                               ; preds = %64
  %78 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %79 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = icmp ne %struct.TYPE_2__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %136

83:                                               ; preds = %77
  %84 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %85 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* @D_PRT, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* @D_MOD, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i64, i64* @D_UNI, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* @D_PRO, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = load i64, i64* @D_DLY, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @pcd_buffer, align 4
  %108 = load i32, i32* @PI_PCD, align 4
  %109 = load i32, i32* @verbose, align 4
  %110 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %111 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @pi_init(i32 %86, i32 0, i32 %90, i32 %94, i32 %98, i32 %102, i32 %106, i32 %107, i32 %108, i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %83
  br label %136

116:                                              ; preds = %83
  %117 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i64, i64* @D_SLV, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [18 x i8], [18 x i8]* %2, i64 0, i64 0
  %123 = call i32 @pcd_probe(%struct.pcd_unit* %117, i32 %121, i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %116
  %126 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %127 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %135

130:                                              ; preds = %116
  %131 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %132 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @pi_release(i32 %133)
  br label %135

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %115, %82, %76
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  %139 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %140 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %139, i32 1
  store %struct.pcd_unit* %140, %struct.pcd_unit** %5, align 8
  br label %60

141:                                              ; preds = %60
  br label %142

142:                                              ; preds = %141, %57
  %143 = load i32, i32* %3, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 0, i32* %1, align 4
  br label %186

146:                                              ; preds = %142
  %147 = load i32, i32* @name, align 4
  %148 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  store i32 0, i32* %4, align 4
  %149 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %149, %struct.pcd_unit** %5, align 8
  br label %150

150:                                              ; preds = %178, %146
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @PCD_UNITS, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %183

154:                                              ; preds = %150
  %155 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %156 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = icmp ne %struct.TYPE_2__* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  br label %178

160:                                              ; preds = %154
  %161 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %162 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %161, i32 0, i32 1
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @blk_cleanup_queue(i32* %165)
  %167 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %168 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32* null, i32** %170, align 8
  %171 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %172 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %171, i32 0, i32 2
  %173 = call i32 @blk_mq_free_tag_set(i32* %172)
  %174 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %175 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = call i32 @put_disk(%struct.TYPE_2__* %176)
  br label %178

178:                                              ; preds = %160, %159
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  %181 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %182 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %181, i32 1
  store %struct.pcd_unit* %182, %struct.pcd_unit** %5, align 8
  br label %150

183:                                              ; preds = %150
  %184 = load i32, i32* @par_drv, align 4
  %185 = call i32 @pi_unregister_driver(i32 %184)
  store i32 -1, i32* %1, align 4
  br label %186

186:                                              ; preds = %183, %145, %17
  %187 = load i32, i32* %1, align 4
  ret i32 %187
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @pi_register_driver(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @pi_init(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pcd_probe(%struct.pcd_unit*, i32, i8*) #1

declare dso_local i32 @pi_release(i32) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_2__*) #1

declare dso_local i32 @pi_unregister_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
