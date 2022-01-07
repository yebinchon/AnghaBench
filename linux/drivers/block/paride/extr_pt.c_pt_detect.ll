; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32, i32, i32*, i32, i32*, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: %s version %s, major %d\0A\00", align 1
@name = common dso_local global i8* null, align 8
@PT_VERSION = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@par_drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register %s driver\0A\00", align 1
@PT_UNITS = common dso_local global i32 0, align 4
@pt = common dso_local global %struct.pt_unit* null, align 8
@DU = common dso_local global i32* null, align 8
@D_SLV = common dso_local global i64 0, align 8
@PT_NAMELEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@D_PRT = common dso_local global i64 0, align 8
@D_MOD = common dso_local global i64 0, align 8
@D_UNI = common dso_local global i64 0, align 8
@D_PRO = common dso_local global i64 0, align 8
@D_DLY = common dso_local global i64 0, align 8
@pt_scratch = common dso_local global i32 0, align 4
@PI_PT = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: No ATAPI tape drive detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pt_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pt_unit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_unit*, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** @name, align 8
  %8 = load i8*, i8** @name, align 8
  %9 = load i32, i32* @PT_VERSION, align 4
  %10 = load i32, i32* @major, align 4
  %11 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8, i32 %9, i32 %10)
  %12 = load i8*, i8** @name, align 8
  %13 = call i32 @pi_register_driver(i8* %12)
  store i32 %13, i32* @par_drv, align 4
  %14 = load i32, i32* @par_drv, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = load i8*, i8** @name, align 8
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %1, align 4
  br label %157

19:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %113, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PT_UNITS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %116

24:                                               ; preds = %20
  %25 = load %struct.pt_unit*, %struct.pt_unit** @pt, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %25, i64 %27
  store %struct.pt_unit* %28, %struct.pt_unit** %6, align 8
  %29 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %30 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %29, i32 0, i32 8
  %31 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %32 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %34 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %33, i32 0, i32 7
  %35 = call i32 @atomic_set(i32* %34, i32 1)
  %36 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %37 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %39 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %41 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %43 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  %44 = load i32*, i32** @DU, align 8
  %45 = load i64, i64* @D_SLV, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %49 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %51 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PT_NAMELEN, align 4
  %54 = load i8*, i8** @name, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @snprintf(i32 %52, i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load i32*, i32** @DU, align 8
  %58 = load i64, i64* @D_PRT, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %24
  br label %113

63:                                               ; preds = %24
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  %66 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %67 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** @DU, align 8
  %70 = load i64, i64* @D_PRT, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @DU, align 8
  %74 = load i64, i64* @D_MOD, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** @DU, align 8
  %78 = load i64, i64* @D_UNI, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** @DU, align 8
  %82 = load i64, i64* @D_PRO, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** @DU, align 8
  %86 = load i64, i64* @D_DLY, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @pt_scratch, align 4
  %90 = load i32, i32* @PI_PT, align 4
  %91 = load i32, i32* @verbose, align 4
  %92 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %93 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @pi_init(i32* %68, i32 0, i32 %72, i32 %76, i32 %80, i32 %84, i32 %88, i32 %89, i32 %90, i32 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %63
  %98 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %99 = call i32 @pt_probe(%struct.pt_unit* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %103 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %111

106:                                              ; preds = %97
  %107 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %108 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @pi_release(i32* %109)
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %111, %63
  br label %113

113:                                              ; preds = %112, %62
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %20

116:                                              ; preds = %20
  %117 = load i32, i32* %3, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %116
  %120 = load %struct.pt_unit*, %struct.pt_unit** @pt, align 8
  store %struct.pt_unit* %120, %struct.pt_unit** %2, align 8
  %121 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %122 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* @pt_scratch, align 4
  %125 = load i32, i32* @PI_PT, align 4
  %126 = load i32, i32* @verbose, align 4
  %127 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %128 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @pi_init(i32* %123, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 %124, i32 %125, i32 %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %119
  %133 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %134 = call i32 @pt_probe(%struct.pt_unit* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %132
  %137 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %138 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %146

141:                                              ; preds = %132
  %142 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %143 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @pi_release(i32* %144)
  br label %146

146:                                              ; preds = %141, %136
  br label %147

147:                                              ; preds = %146, %119
  br label %148

148:                                              ; preds = %147, %116
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 0, i32* %1, align 4
  br label %157

152:                                              ; preds = %148
  %153 = load i32, i32* @par_drv, align 4
  %154 = call i32 @pi_unregister_driver(i32 %153)
  %155 = load i8*, i8** @name, align 8
  %156 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  store i32 -1, i32* %1, align 4
  br label %157

157:                                              ; preds = %152, %151, %16
  %158 = load i32, i32* %1, align 4
  ret i32 %158
}

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @pi_register_driver(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @pi_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pt_probe(%struct.pt_unit*) #1

declare dso_local i32 @pi_release(i32*) #1

declare dso_local i32 @pi_unregister_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
