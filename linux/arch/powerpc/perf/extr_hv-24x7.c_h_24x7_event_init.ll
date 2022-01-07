; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_h_24x7_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_h_24x7_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hv_perf_caps = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"reserved set when forbidden 0x%llx(0x%llx) 0x%llx(0x%llx) 0x%llx(0x%llx)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bad alignment\0A\00", align 1
@HV_PERF_DOMAIN_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid domain %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"could not get capabilities: rc=%ld\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"hv permissions disallow: is_physical_domain:%d, lpar=0x%llx\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"test hcall failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @h_24x7_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_24x7_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.hv_perf_caps, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %126

21:                                               ; preds = %1
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = call i64 @event_get_reserved1(%struct.perf_event* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = call i64 @event_get_reserved2(%struct.perf_event* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = call i64 @event_get_reserved3(%struct.perf_event* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %29, %25, %21
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = call i64 @event_get_reserved1(%struct.perf_event* %38)
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = call i64 @event_get_reserved2(%struct.perf_event* %44)
  %46 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = call i64 @event_get_reserved3(%struct.perf_event* %50)
  %52 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %39, i32 %43, i64 %45, i32 %49, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %126

55:                                               ; preds = %29
  %56 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %57 = call i64 @has_branch_stack(%struct.perf_event* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %126

62:                                               ; preds = %55
  %63 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %64 = call i32 @event_get_offset(%struct.perf_event* %63)
  %65 = srem i32 %64, 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %126

71:                                               ; preds = %62
  %72 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %73 = call i32 @event_get_domain(%struct.perf_event* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @HV_PERF_DOMAIN_MAX, align 4
  %76 = icmp uge i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %126

82:                                               ; preds = %71
  %83 = call i64 @hv_perf_caps_get(%struct.hv_perf_caps* %4)
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i64, i64* %6, align 8
  %88 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %126

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.hv_perf_caps, %struct.hv_perf_caps* %4, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @is_physical_domain(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %101 = call i64 @event_get_lpar(%struct.perf_event* %100)
  %102 = call i64 (...) @event_get_lpar_max()
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @is_physical_domain(i32 %105)
  %107 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %108 = call i64 @event_get_lpar(%struct.perf_event* %107)
  %109 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %106, i64 %108)
  %110 = load i32, i32* @EACCES, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %126

112:                                              ; preds = %99, %91
  %113 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %114 = call i64 @single_24x7_request(%struct.perf_event* %113, i32* %7)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %126

120:                                              ; preds = %112
  %121 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %122 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @local64_xchg(i32* %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %120, %116, %104, %86, %77, %67, %59, %33, %18
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i64 @event_get_reserved1(%struct.perf_event*) #1

declare dso_local i64 @event_get_reserved2(%struct.perf_event*) #1

declare dso_local i64 @event_get_reserved3(%struct.perf_event*) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @event_get_offset(%struct.perf_event*) #1

declare dso_local i32 @event_get_domain(%struct.perf_event*) #1

declare dso_local i64 @hv_perf_caps_get(%struct.hv_perf_caps*) #1

declare dso_local i32 @is_physical_domain(i32) #1

declare dso_local i64 @event_get_lpar(%struct.perf_event*) #1

declare dso_local i64 @event_get_lpar_max(...) #1

declare dso_local i64 @single_24x7_request(%struct.perf_event*, i32*) #1

declare dso_local i32 @local64_xchg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
