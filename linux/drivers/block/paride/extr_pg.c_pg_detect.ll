; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i32, i32, i32 }

@devices = common dso_local global %struct.pg* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: %s version %s, major %d\0A\00", align 1
@name = common dso_local global i32 0, align 4
@PG_VERSION = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@par_drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register %s driver\0A\00", align 1
@pg_drive_count = common dso_local global i64 0, align 8
@pg_scratch = common dso_local global i32 0, align 4
@PI_PG = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@PG_UNITS = common dso_local global i32 0, align 4
@drives = common dso_local global i32*** null, align 8
@D_PRT = common dso_local global i64 0, align 8
@D_MOD = common dso_local global i64 0, align 8
@D_UNI = common dso_local global i64 0, align 8
@D_PRO = common dso_local global i64 0, align 8
@D_DLY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: No ATAPI device detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pg_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load %struct.pg*, %struct.pg** @devices, align 8
  %7 = getelementptr inbounds %struct.pg, %struct.pg* %6, i64 0
  store %struct.pg* %7, %struct.pg** %2, align 8
  %8 = load i32, i32* @name, align 4
  %9 = load i32, i32* @name, align 4
  %10 = load i32, i32* @PG_VERSION, align 4
  %11 = load i32, i32* @major, align 4
  %12 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i32 %10, i32 %11)
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
  br label %132

20:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  %21 = load i64, i64* @pg_drive_count, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load %struct.pg*, %struct.pg** %2, align 8
  %25 = getelementptr inbounds %struct.pg, %struct.pg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @pg_scratch, align 4
  %28 = load i32, i32* @PI_PG, align 4
  %29 = load i32, i32* @verbose, align 4
  %30 = load %struct.pg*, %struct.pg** %2, align 8
  %31 = getelementptr inbounds %struct.pg, %struct.pg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @pi_init(i32 %26, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 %27, i32 %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %23
  %36 = load %struct.pg*, %struct.pg** %2, align 8
  %37 = call i32 @pg_probe(%struct.pg* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.pg*, %struct.pg** %2, align 8
  %41 = getelementptr inbounds %struct.pg, %struct.pg* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.pg*, %struct.pg** %2, align 8
  %46 = getelementptr inbounds %struct.pg, %struct.pg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pi_release(i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %23
  br label %123

51:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %117, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PG_UNITS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %122

56:                                               ; preds = %52
  %57 = load i32***, i32**** @drives, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32**, i32*** %57, i64 %59
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* @D_PRT, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %117

69:                                               ; preds = %56
  %70 = load %struct.pg*, %struct.pg** %2, align 8
  %71 = getelementptr inbounds %struct.pg, %struct.pg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* @D_PRT, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* @D_MOD, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i64, i64* @D_UNI, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i64, i64* @D_PRO, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load i64, i64* @D_DLY, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @pg_scratch, align 4
  %94 = load i32, i32* @PI_PG, align 4
  %95 = load i32, i32* @verbose, align 4
  %96 = load %struct.pg*, %struct.pg** %2, align 8
  %97 = getelementptr inbounds %struct.pg, %struct.pg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @pi_init(i32 %72, i32 0, i32 %76, i32 %80, i32 %84, i32 %88, i32 %92, i32 %93, i32 %94, i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %69
  %102 = load %struct.pg*, %struct.pg** %2, align 8
  %103 = call i32 @pg_probe(%struct.pg* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load %struct.pg*, %struct.pg** %2, align 8
  %107 = getelementptr inbounds %struct.pg, %struct.pg* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %115

110:                                              ; preds = %101
  %111 = load %struct.pg*, %struct.pg** %2, align 8
  %112 = getelementptr inbounds %struct.pg, %struct.pg* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @pi_release(i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %69
  br label %117

117:                                              ; preds = %116, %68
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  %120 = load %struct.pg*, %struct.pg** %2, align 8
  %121 = getelementptr inbounds %struct.pg, %struct.pg* %120, i32 1
  store %struct.pg* %121, %struct.pg** %2, align 8
  br label %52

122:                                              ; preds = %52
  br label %123

123:                                              ; preds = %122, %50
  %124 = load i32, i32* %3, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 0, i32* %1, align 4
  br label %132

127:                                              ; preds = %123
  %128 = load i32, i32* @par_drv, align 4
  %129 = call i32 @pi_unregister_driver(i32 %128)
  %130 = load i32, i32* @name, align 4
  %131 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  store i32 -1, i32* %1, align 4
  br label %132

132:                                              ; preds = %127, %126, %17
  %133 = load i32, i32* %1, align 4
  ret i32 %133
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @pi_register_driver(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @pi_init(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pg_probe(%struct.pg*) #1

declare dso_local i32 @pi_release(i32) #1

declare dso_local i32 @pi_unregister_driver(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
