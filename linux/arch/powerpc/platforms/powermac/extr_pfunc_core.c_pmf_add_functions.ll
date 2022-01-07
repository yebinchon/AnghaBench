; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_add_functions.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_add_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.property* }
%struct.property = type { i8*, i32, i32, %struct.property* }

@.str = private unnamed_addr constant [13 x i8] c"platform-do-\00", align 1
@PP_PREFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmf_device*, i8*)* @pmf_add_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmf_add_functions(%struct.pmf_device* %0, i8* %1) #0 {
  %3 = alloca %struct.pmf_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.pmf_device* %0, %struct.pmf_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.pmf_device*, %struct.pmf_device** %3, align 8
  %11 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.property*, %struct.property** %13, align 8
  store %struct.property* %14, %struct.property** %5, align 8
  br label %15

15:                                               ; preds = %57, %2
  %16 = load %struct.property*, %struct.property** %5, align 8
  %17 = icmp ne %struct.property* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load %struct.property*, %struct.property** %5, align 8
  %20 = getelementptr inbounds %struct.property, %struct.property* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %57

26:                                               ; preds = %18
  %27 = load %struct.property*, %struct.property** %5, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %26
  %37 = load %struct.property*, %struct.property** %5, align 8
  %38 = getelementptr inbounds %struct.property, %struct.property* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 12
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.pmf_device*, %struct.pmf_device** %3, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.property*, %struct.property** %5, align 8
  %46 = getelementptr inbounds %struct.property, %struct.property* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.property*, %struct.property** %5, align 8
  %49 = getelementptr inbounds %struct.property, %struct.property* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @pmf_add_function_prop(%struct.pmf_device* %42, i8* %43, i8* %44, i32 %47, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %41, %36, %26
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.property*, %struct.property** %5, align 8
  %59 = getelementptr inbounds %struct.property, %struct.property* %58, i32 0, i32 3
  %60 = load %struct.property*, %struct.property** %59, align 8
  store %struct.property* %60, %struct.property** %5, align 8
  br label %15

61:                                               ; preds = %15
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @pmf_add_function_prop(%struct.pmf_device*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
