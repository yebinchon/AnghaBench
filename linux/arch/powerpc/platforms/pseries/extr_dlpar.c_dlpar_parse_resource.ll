; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_resource.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_hp_errorlog = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@PSERIES_HP_ELOG_RESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@PSERIES_HP_ELOG_RESOURCE_CPU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid resource specified.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.pseries_hp_errorlog*)* @dlpar_parse_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlpar_parse_resource(i8** %0, %struct.pseries_hp_errorlog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.pseries_hp_errorlog*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.pseries_hp_errorlog* %1, %struct.pseries_hp_errorlog** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @sysfs_streq(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @PSERIES_HP_ELOG_RESOURCE_MEM, align 4
  %20 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %21 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %35

22:                                               ; preds = %14
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @sysfs_streq(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @PSERIES_HP_ELOG_RESOURCE_CPU, align 4
  %28 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %5, align 8
  %29 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %22
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %18
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
