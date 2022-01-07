; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_id_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_id_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_hp_errorlog = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"indexed-count\00", align 1
@PSERIES_HP_ELOG_ID_DRC_IC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"No DRC count specified.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid DRC count specified.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"No DRC Index specified.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Invalid DRC Index specified.\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@PSERIES_HP_ELOG_ID_DRC_INDEX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@PSERIES_HP_ELOG_ID_DRC_COUNT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Invalid id_type specified.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.pseries_hp_errorlog*)* @dlpar_parse_id_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlpar_parse_id_type(i8** %0, %struct.pseries_hp_errorlog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pseries_hp_errorlog*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.pseries_hp_errorlog* %1, %struct.pseries_hp_errorlog** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %137

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @sysfs_streq(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = load i32, i32* @PSERIES_HP_ELOG_ID_DRC_IC, align 4
  %22 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %23 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i8**, i8*** %4, align 8
  %25 = call i8* @strsep(i8** %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %137

32:                                               ; preds = %20
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @kstrtou32(i8* %33, i32 0, i32* %7)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %137

40:                                               ; preds = %32
  %41 = load i8**, i8*** %4, align 8
  %42 = call i8* @strsep(i8** %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %137

49:                                               ; preds = %40
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @kstrtou32(i8* %50, i32 0, i32* %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %137

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %61 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i8* %59, i8** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %67 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  br label %136

70:                                               ; preds = %16
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @sysfs_streq(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i32, i32* @PSERIES_HP_ELOG_ID_DRC_INDEX, align 4
  %76 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %77 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i8**, i8*** %4, align 8
  %79 = call i8* @strsep(i8** %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %137

86:                                               ; preds = %74
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @kstrtou32(i8* %87, i32 0, i32* %8)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %137

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = call i8* @cpu_to_be32(i32 %95)
  %97 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %98 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  br label %135

100:                                              ; preds = %70
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @sysfs_streq(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load i32, i32* @PSERIES_HP_ELOG_ID_DRC_COUNT, align 4
  %106 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %107 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load i8**, i8*** %4, align 8
  %109 = call i8* @strsep(i8** %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %109, i8** %6, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %104
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %137

116:                                              ; preds = %104
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @kstrtou32(i8* %117, i32 0, i32* %7)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %137

124:                                              ; preds = %116
  %125 = load i32, i32* %7, align 4
  %126 = call i8* @cpu_to_be32(i32 %125)
  %127 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %128 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  br label %134

130:                                              ; preds = %100
  %131 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %137

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %94
  br label %136

136:                                              ; preds = %135, %57
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %130, %120, %112, %90, %82, %53, %45, %36, %28, %13
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
