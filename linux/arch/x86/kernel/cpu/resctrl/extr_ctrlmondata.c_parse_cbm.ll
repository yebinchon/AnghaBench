; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_parse_cbm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_parse_cbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_parse_data = type { i32, %struct.rdtgroup* }
%struct.rdtgroup = type { i64, i32 }
%struct.rdt_resource = type { i32 (i32, i32*, %struct.rdt_resource*)* }
%struct.rdt_domain = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Duplicate domain %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Pseudo-locked region in hierarchy\0A\00", align 1
@RDT_MODE_EXCLUSIVE = common dso_local global i64 0, align 8
@RDT_MODE_SHAREABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"CBM overlaps with pseudo-locked region\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Overlaps with exclusive group\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Overlaps with other group\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_cbm(%struct.rdt_parse_data* %0, %struct.rdt_resource* %1, %struct.rdt_domain* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdt_parse_data*, align 8
  %6 = alloca %struct.rdt_resource*, align 8
  %7 = alloca %struct.rdt_domain*, align 8
  %8 = alloca %struct.rdtgroup*, align 8
  %9 = alloca i32, align 4
  store %struct.rdt_parse_data* %0, %struct.rdt_parse_data** %5, align 8
  store %struct.rdt_resource* %1, %struct.rdt_resource** %6, align 8
  store %struct.rdt_domain* %2, %struct.rdt_domain** %7, align 8
  %10 = load %struct.rdt_parse_data*, %struct.rdt_parse_data** %5, align 8
  %11 = getelementptr inbounds %struct.rdt_parse_data, %struct.rdt_parse_data* %10, i32 0, i32 1
  %12 = load %struct.rdtgroup*, %struct.rdtgroup** %11, align 8
  store %struct.rdtgroup* %12, %struct.rdtgroup** %8, align 8
  %13 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %14 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %19 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rdt_last_cmd_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %117

24:                                               ; preds = %3
  %25 = load %struct.rdtgroup*, %struct.rdtgroup** %8, align 8
  %26 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RDT_MODE_PSEUDO_LOCKSETUP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %32 = call i64 @rdtgroup_pseudo_locked_in_hierarchy(%struct.rdt_domain* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %117

38:                                               ; preds = %30, %24
  %39 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %40 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %39, i32 0, i32 0
  %41 = load i32 (i32, i32*, %struct.rdt_resource*)*, i32 (i32, i32*, %struct.rdt_resource*)** %40, align 8
  %42 = load %struct.rdt_parse_data*, %struct.rdt_parse_data** %5, align 8
  %43 = getelementptr inbounds %struct.rdt_parse_data, %struct.rdt_parse_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %46 = call i32 %41(i32 %44, i32* %9, %struct.rdt_resource* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %117

51:                                               ; preds = %38
  %52 = load %struct.rdtgroup*, %struct.rdtgroup** %8, align 8
  %53 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RDT_MODE_EXCLUSIVE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.rdtgroup*, %struct.rdtgroup** %8, align 8
  %59 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RDT_MODE_SHAREABLE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57, %51
  %64 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @rdtgroup_cbm_overlaps_pseudo_locked(%struct.rdt_domain* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %117

72:                                               ; preds = %63, %57
  %73 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %74 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.rdtgroup*, %struct.rdtgroup** %8, align 8
  %77 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @rdtgroup_cbm_overlaps(%struct.rdt_resource* %73, %struct.rdt_domain* %74, i32 %75, i32 %78, i32 1)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %117

85:                                               ; preds = %72
  %86 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %87 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.rdtgroup*, %struct.rdtgroup** %8, align 8
  %90 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @rdtgroup_cbm_overlaps(%struct.rdt_resource* %86, %struct.rdt_domain* %87, i32 %88, i32 %91, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %85
  %95 = load %struct.rdtgroup*, %struct.rdtgroup** %8, align 8
  %96 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RDT_MODE_EXCLUSIVE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.rdtgroup*, %struct.rdtgroup** %8, align 8
  %102 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RDT_MODE_PSEUDO_LOCKSETUP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100, %94
  %107 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %117

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %85
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %114 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.rdt_domain*, %struct.rdt_domain** %7, align 8
  %116 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %111, %106, %81, %68, %48, %34, %17
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @rdt_last_cmd_printf(i8*, i32) #1

declare dso_local i64 @rdtgroup_pseudo_locked_in_hierarchy(%struct.rdt_domain*) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i64 @rdtgroup_cbm_overlaps_pseudo_locked(%struct.rdt_domain*, i32) #1

declare dso_local i64 @rdtgroup_cbm_overlaps(%struct.rdt_resource*, %struct.rdt_domain*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
