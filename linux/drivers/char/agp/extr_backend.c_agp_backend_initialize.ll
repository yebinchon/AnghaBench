; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_backend.c_agp_backend_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_backend.c_agp_backend_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { i32*, %struct.TYPE_4__*, %struct.page*, i32, i32, %struct.TYPE_3__*, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 (...)*, {}*, i32 (%struct.page*, i32)*, i64, i64 (...)*, i64 (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*, i32, i32)*, %struct.page* (%struct.agp_bridge_data*)* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }

@agp_current_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't get memory for scratch page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"can't determine aperture size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"can't get memory for graphics translation table\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"can't allocate memory for key lists\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error configuring host chipset\0A\00", align 1
@AGP_PAGE_DESTROY_UNMAP = common dso_local global i32 0, align 4
@AGP_PAGE_DESTROY_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_bridge_data*)* @agp_backend_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_backend_initialize(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 (...) @agp_find_max()
  %11 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %12 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %11, i32 0, i32 9
  store i32 %10, i32* %12, align 8
  %13 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %14 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %13, i32 0, i32 8
  store i32* @agp_current_version, i32** %14, align 8
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %16 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %1
  %22 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %23 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  %26 = load %struct.page* (%struct.agp_bridge_data*)*, %struct.page* (%struct.agp_bridge_data*)** %25, align 8
  %27 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %28 = call %struct.page* %26(%struct.agp_bridge_data* %27)
  store %struct.page* %28, %struct.page** %8, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %33 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %32, i32 0, i32 5
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %185

39:                                               ; preds = %21
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %42 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %41, i32 0, i32 2
  store %struct.page* %40, %struct.page** %42, align 8
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = call i32 @page_to_phys(%struct.page* %43)
  %45 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %46 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %48 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  %51 = load i32 (%struct.agp_bridge_data*, i32, i32)*, i32 (%struct.agp_bridge_data*, i32, i32)** %50, align 8
  %52 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %53 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %54 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %51(%struct.agp_bridge_data* %52, i32 %55, i32 0)
  %57 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %58 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %39, %1
  %60 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %61 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (...)*, i32 (...)** %63, align 8
  %65 = call i32 (...) %64()
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %70 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %69, i32 0, i32 5
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %134

76:                                               ; preds = %59
  %77 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %78 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  %81 = load i64 (%struct.agp_bridge_data*)*, i64 (%struct.agp_bridge_data*)** %80, align 8
  %82 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %83 = call i64 %81(%struct.agp_bridge_data* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %87 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %86, i32 0, i32 5
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %134

93:                                               ; preds = %76
  store i32 1, i32* %6, align 4
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = mul nsw i32 %94, 4
  %96 = call i32* @vzalloc(i32 %95)
  %97 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %98 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %100 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %93
  %104 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %105 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %104, i32 0, i32 5
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %134

111:                                              ; preds = %93
  store i32 1, i32* %7, align 4
  %112 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %113 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i64 (...)*, i64 (...)** %115, align 8
  %117 = call i64 (...) %116()
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %121 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %120, i32 0, i32 5
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %134

127:                                              ; preds = %111
  %128 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %129 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %128, i32 0, i32 4
  %130 = call i32 @INIT_LIST_HEAD(i32* %129)
  %131 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %132 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %131, i32 0, i32 3
  %133 = call i32 @spin_lock_init(i32* %132)
  store i32 0, i32* %2, align 4
  br label %185

134:                                              ; preds = %119, %103, %85, %68
  %135 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %136 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %161

141:                                              ; preds = %134
  %142 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %143 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %142, i32 0, i32 2
  %144 = load %struct.page*, %struct.page** %143, align 8
  store %struct.page* %144, %struct.page** %9, align 8
  %145 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %146 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %148, align 8
  %150 = load %struct.page*, %struct.page** %9, align 8
  %151 = load i32, i32* @AGP_PAGE_DESTROY_UNMAP, align 4
  %152 = call i32 %149(%struct.page* %150, i32 %151)
  %153 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %154 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %156, align 8
  %158 = load %struct.page*, %struct.page** %9, align 8
  %159 = load i32, i32* @AGP_PAGE_DESTROY_FREE, align 4
  %160 = call i32 %157(%struct.page* %158, i32 %159)
  br label %161

161:                                              ; preds = %141, %134
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %166 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = bitcast {}** %168 to i32 (%struct.agp_bridge_data*)**
  %170 = load i32 (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*)** %169, align 8
  %171 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %172 = call i32 %170(%struct.agp_bridge_data* %171)
  br label %173

173:                                              ; preds = %164, %161
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %178 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @vfree(i32* %179)
  %181 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %182 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %181, i32 0, i32 0
  store i32* null, i32** %182, align 8
  br label %183

183:                                              ; preds = %176, %173
  %184 = load i32, i32* %5, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %183, %127, %31
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @agp_find_max(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
