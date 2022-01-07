; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_rtas-fadump.c_rtas_fadump_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_dump = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@FADUMP_REGISTER = common dso_local global i32 0, align 4
@fdm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Registration is successful!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to register. Hardware Error(%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't have holes in boot memory area.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Can't have holes in reserved memory area.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to register. Parameter Error(%d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Already registered!\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to register. Unknown Error(%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_dump*)* @rtas_fadump_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_fadump_register(%struct.fw_dump* %0) #0 {
  %2 = alloca %struct.fw_dump*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_dump* %0, %struct.fw_dump** %2, align 8
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %10 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FADUMP_REGISTER, align 4
  %13 = call i32 @rtas_call(i32 %11, i32 3, i32 1, i32* null, i32 %12, i32* @fdm, i32 4)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @rtas_busy_delay_time(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mdelay(i32 %19)
  br label %21

21:                                               ; preds = %18, %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %56 [
    i32 0, label %27
    i32 -1, label %31
    i32 -3, label %34
    i32 -9, label %50
  ]

27:                                               ; preds = %25
  %28 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %30 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %59

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %59

34:                                               ; preds = %25
  %35 = call i32 (...) @is_fadump_boot_mem_contiguous()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %45

39:                                               ; preds = %34
  %40 = call i32 (...) @is_fadump_reserved_mem_contiguous()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %59

50:                                               ; preds = %25
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %52 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %53 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @EEXIST, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %59

56:                                               ; preds = %25
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %50, %45, %31, %27
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @rtas_busy_delay_time(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @is_fadump_boot_mem_contiguous(...) #1

declare dso_local i32 @is_fadump_reserved_mem_contiguous(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
