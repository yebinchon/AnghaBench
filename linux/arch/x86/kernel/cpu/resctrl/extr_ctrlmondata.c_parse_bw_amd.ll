; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_parse_bw_amd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_parse_bw_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_parse_data = type { i32 }
%struct.rdt_resource = type { i32 }
%struct.rdt_domain = type { i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Duplicate domain %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_bw_amd(%struct.rdt_parse_data* %0, %struct.rdt_resource* %1, %struct.rdt_domain* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdt_parse_data*, align 8
  %6 = alloca %struct.rdt_resource*, align 8
  %7 = alloca %struct.rdt_domain*, align 8
  %8 = alloca i64, align 8
  store %struct.rdt_parse_data* %0, %struct.rdt_parse_data** %5, align 8
  store %struct.rdt_resource* %1, %struct.rdt_resource** %6, align 8
  store %struct.rdt_domain* %2, %struct.rdt_domain** %7, align 8
  %9 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %10 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %15 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rdt_last_cmd_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %36

20:                                               ; preds = %3
  %21 = load %struct.rdt_parse_data*, %struct.rdt_parse_data** %5, align 8
  %22 = getelementptr inbounds %struct.rdt_parse_data, %struct.rdt_parse_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %25 = call i32 @bw_validate_amd(i32 %23, i64* %8, %struct.rdt_resource* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %36

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %33 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %35 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %27, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @rdt_last_cmd_printf(i8*, i32) #1

declare dso_local i32 @bw_validate_amd(i32, i64*, %struct.rdt_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
