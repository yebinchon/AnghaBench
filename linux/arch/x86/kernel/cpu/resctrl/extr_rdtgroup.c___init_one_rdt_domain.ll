; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c___init_one_rdt_domain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c___init_one_rdt_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_domain = type { i32, i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rdt_resource = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }

@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i32 0, align 4
@RDT_MODE_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No space on %s:%d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_domain*, %struct.rdt_resource*, i32)* @__init_one_rdt_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__init_one_rdt_domain(%struct.rdt_domain* %0, %struct.rdt_resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdt_domain*, align 8
  %6 = alloca %struct.rdt_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdt_resource*, align 8
  %9 = alloca %struct.rdt_domain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.rdt_domain* %0, %struct.rdt_domain** %5, align 8
  store %struct.rdt_resource* %1, %struct.rdt_resource** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rdt_resource* null, %struct.rdt_resource** %8, align 8
  store %struct.rdt_domain* null, %struct.rdt_domain** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %18 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %19 = call i32 @rdt_cdp_peer_get(%struct.rdt_resource* %17, %struct.rdt_domain* %18, %struct.rdt_resource** %8, %struct.rdt_domain** %9)
  %20 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %21 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %23 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %27 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %29 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %33 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %87, %3
  %36 = load i32, i32* %16, align 4
  %37 = call i32 (...) @closids_supported()
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %35
  %40 = load i32, i32* %16, align 4
  %41 = call i64 @closid_allocated(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %39
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @rdtgroup_mode_by_closid(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @RDT_MODE_PSEUDO_LOCKSETUP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %87

54:                                               ; preds = %47
  %55 = load %struct.rdt_domain*, %struct.rdt_domain** %9, align 8
  %56 = icmp ne %struct.rdt_domain* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.rdt_domain*, %struct.rdt_domain** %9, align 8
  %59 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %14, align 4
  br label %66

65:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @RDT_MODE_SHAREABLE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %82 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %76, %66
  br label %86

86:                                               ; preds = %85, %43, %39
  br label %87

87:                                               ; preds = %86, %53
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %15, align 8
  br label %35

92:                                               ; preds = %35
  %93 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %94 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %93, i32 0, i32 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = icmp ne %struct.TYPE_3__* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %99 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %98, i32 0, i32 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %106 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %105, i32 0, i32 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %104, %97, %92
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %115 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @BIT_MASK(i32 %117)
  %119 = sub nsw i32 %118, 1
  %120 = xor i32 %113, %119
  store i32 %120, i32* %11, align 4
  %121 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %122 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @BIT_MASK(i32 %124)
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %131 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %135 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %138 = call i32 @cbm_ensure_valid(i32 %136, %struct.rdt_resource* %137)
  %139 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %140 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %142 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %12, align 8
  %145 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %146 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @bitmap_weight(i64* %12, i32 %148)
  %150 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %151 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %149, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %112
  %156 = load %struct.rdt_resource*, %struct.rdt_resource** %6, align 8
  %157 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %160 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @rdt_last_cmd_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load i32, i32* @ENOSPC, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %168

165:                                              ; preds = %112
  %166 = load %struct.rdt_domain*, %struct.rdt_domain** %5, align 8
  %167 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %165, %155
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @rdt_cdp_peer_get(%struct.rdt_resource*, %struct.rdt_domain*, %struct.rdt_resource**, %struct.rdt_domain**) #1

declare dso_local i32 @closids_supported(...) #1

declare dso_local i64 @closid_allocated(i32) #1

declare dso_local i32 @rdtgroup_mode_by_closid(i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @cbm_ensure_valid(i32, %struct.rdt_resource*) #1

declare dso_local i64 @bitmap_weight(i64*, i32) #1

declare dso_local i32 @rdt_last_cmd_printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
