; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_cmd_to_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_cmd_to_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_mem = type { i64 }
%struct.nd_cmd_pkg = type { i64, i32, i64* }

@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NVDIMM_FAMILY_INTEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfit_mem*, i32, %struct.nd_cmd_pkg*)* @cmd_to_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_to_func(%struct.nfit_mem* %0, i32 %1, %struct.nd_cmd_pkg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfit_mem*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nd_cmd_pkg*, align 8
  %8 = alloca i32, align 4
  store %struct.nfit_mem* %0, %struct.nfit_mem** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nd_cmd_pkg* %2, %struct.nd_cmd_pkg** %7, align 8
  %9 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %7, align 8
  %10 = icmp ne %struct.nd_cmd_pkg* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %3
  %12 = load %struct.nfit_mem*, %struct.nfit_mem** %5, align 8
  %13 = icmp ne %struct.nfit_mem* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.nfit_mem*, %struct.nfit_mem** %5, align 8
  %16 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %7, align 8
  %19 = getelementptr inbounds %struct.nd_cmd_pkg, %struct.nd_cmd_pkg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOTTY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %67

25:                                               ; preds = %14, %11
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %7, align 8
  %29 = getelementptr inbounds %struct.nd_cmd_pkg, %struct.nd_cmd_pkg* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = call i32 @ARRAY_SIZE(i64* %30)
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %7, align 8
  %35 = getelementptr inbounds %struct.nd_cmd_pkg, %struct.nd_cmd_pkg* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %67

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %7, align 8
  %51 = getelementptr inbounds %struct.nd_cmd_pkg, %struct.nd_cmd_pkg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %4, align 4
  br label %67

53:                                               ; preds = %3
  %54 = load %struct.nfit_mem*, %struct.nfit_mem** %5, align 8
  %55 = icmp ne %struct.nfit_mem* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %4, align 4
  br label %67

58:                                               ; preds = %53
  %59 = load %struct.nfit_mem*, %struct.nfit_mem** %5, align 8
  %60 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NVDIMM_FAMILY_INTEL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %64, %56, %49, %42, %22
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
