; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.clk_hw = type { %struct.clk*, %struct.clk_core*, %struct.clk_init_data* }
%struct.clk_core = type { i32, i32, i32, i32, i64, i32, i32, %struct.clk_hw*, i32, %struct.device_node*, %struct.device*, i64 }
%struct.clk_init_data = type { i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, %struct.device_node*, %struct.clk_hw*)* @__clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @__clk_register(%struct.device* %0, %struct.device_node* %1, %struct.clk_hw* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_core*, align 8
  %10 = alloca %struct.clk_init_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.clk_hw* %2, %struct.clk_hw** %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %12 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %11, i32 0, i32 2
  %13 = load %struct.clk_init_data*, %struct.clk_init_data** %12, align 8
  store %struct.clk_init_data* %13, %struct.clk_init_data** %10, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %15 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %14, i32 0, i32 2
  store %struct.clk_init_data* null, %struct.clk_init_data** %15, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.clk_core* @kzalloc(i32 72, i32 %16)
  store %struct.clk_core* %17, %struct.clk_core** %9, align 8
  %18 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %19 = icmp ne %struct.clk_core* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %174

23:                                               ; preds = %3
  %24 = load %struct.clk_init_data*, %struct.clk_init_data** %10, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @kstrdup_const(i32 %26, i32 %27)
  %29 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %30 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %32 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %171

38:                                               ; preds = %23
  %39 = load %struct.clk_init_data*, %struct.clk_init_data** %10, align 8
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %166

50:                                               ; preds = %38
  %51 = load %struct.clk_init_data*, %struct.clk_init_data** %10, align 8
  %52 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %55 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %54, i32 0, i32 11
  store i64 %53, i64* %55, align 8
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = icmp ne %struct.device* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i64 @pm_runtime_enabled(%struct.device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %64 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %58, %50
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %68 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %67, i32 0, i32 10
  store %struct.device* %66, %struct.device** %68, align 8
  %69 = load %struct.device_node*, %struct.device_node** %6, align 8
  %70 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %71 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %70, i32 0, i32 9
  store %struct.device_node* %69, %struct.device_node** %71, align 8
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = icmp ne %struct.device* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = icmp ne %struct.TYPE_2__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %86 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %79, %74, %65
  %88 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %89 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %90 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %89, i32 0, i32 7
  store %struct.clk_hw* %88, %struct.clk_hw** %90, align 8
  %91 = load %struct.clk_init_data*, %struct.clk_init_data** %10, align 8
  %92 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %95 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load %struct.clk_init_data*, %struct.clk_init_data** %10, align 8
  %97 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %100 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %102 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* @ULONG_MAX, align 4
  %104 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %105 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %107 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %108 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %107, i32 0, i32 1
  store %struct.clk_core* %106, %struct.clk_core** %108, align 8
  %109 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %110 = load %struct.clk_init_data*, %struct.clk_init_data** %10, align 8
  %111 = call i32 @clk_core_populate_parent_map(%struct.clk_core* %109, %struct.clk_init_data* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %87
  br label %165

115:                                              ; preds = %87
  %116 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %117 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %116, i32 0, i32 2
  %118 = call i32 @INIT_HLIST_HEAD(i32* %117)
  %119 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %120 = call %struct.clk* @alloc_clk(%struct.clk_core* %119, i32* null, i32* null)
  %121 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %122 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %121, i32 0, i32 0
  store %struct.clk* %120, %struct.clk** %122, align 8
  %123 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %124 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %123, i32 0, i32 0
  %125 = load %struct.clk*, %struct.clk** %124, align 8
  %126 = call i64 @IS_ERR(%struct.clk* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %115
  %129 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %130 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %129, i32 0, i32 0
  %131 = load %struct.clk*, %struct.clk** %130, align 8
  %132 = call i32 @PTR_ERR(%struct.clk* %131)
  store i32 %132, i32* %8, align 4
  br label %162

133:                                              ; preds = %115
  %134 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %135 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %134, i32 0, i32 1
  %136 = load %struct.clk_core*, %struct.clk_core** %135, align 8
  %137 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %138 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %137, i32 0, i32 0
  %139 = load %struct.clk*, %struct.clk** %138, align 8
  %140 = call i32 @clk_core_link_consumer(%struct.clk_core* %136, %struct.clk* %139)
  %141 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %142 = call i32 @__clk_core_init(%struct.clk_core* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %133
  %146 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %147 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %146, i32 0, i32 0
  %148 = load %struct.clk*, %struct.clk** %147, align 8
  store %struct.clk* %148, %struct.clk** %4, align 8
  br label %177

149:                                              ; preds = %133
  %150 = call i32 (...) @clk_prepare_lock()
  %151 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %152 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %151, i32 0, i32 0
  %153 = load %struct.clk*, %struct.clk** %152, align 8
  %154 = call i32 @clk_core_unlink_consumer(%struct.clk* %153)
  %155 = call i32 (...) @clk_prepare_unlock()
  %156 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %157 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %156, i32 0, i32 0
  %158 = load %struct.clk*, %struct.clk** %157, align 8
  %159 = call i32 @free_clk(%struct.clk* %158)
  %160 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %161 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %160, i32 0, i32 0
  store %struct.clk* null, %struct.clk** %161, align 8
  br label %162

162:                                              ; preds = %149, %128
  %163 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %164 = call i32 @clk_core_free_parent_map(%struct.clk_core* %163)
  br label %165

165:                                              ; preds = %162, %114
  br label %166

166:                                              ; preds = %165, %47
  %167 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %168 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @kfree_const(i32 %169)
  br label %171

171:                                              ; preds = %166, %35
  %172 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %173 = call i32 @kfree(%struct.clk_core* %172)
  br label %174

174:                                              ; preds = %171, %20
  %175 = load i32, i32* %8, align 4
  %176 = call %struct.clk* @ERR_PTR(i32 %175)
  store %struct.clk* %176, %struct.clk** %4, align 8
  br label %177

177:                                              ; preds = %174, %145
  %178 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %178
}

declare dso_local %struct.clk_core* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup_const(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @clk_core_populate_parent_map(%struct.clk_core*, %struct.clk_init_data*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local %struct.clk* @alloc_clk(%struct.clk_core*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_core_link_consumer(%struct.clk_core*, %struct.clk*) #1

declare dso_local i32 @__clk_core_init(%struct.clk_core*) #1

declare dso_local i32 @clk_prepare_lock(...) #1

declare dso_local i32 @clk_core_unlink_consumer(%struct.clk*) #1

declare dso_local i32 @clk_prepare_unlock(...) #1

declare dso_local i32 @free_clk(%struct.clk*) #1

declare dso_local i32 @clk_core_free_parent_map(%struct.clk_core*) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @kfree(%struct.clk_core*) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
