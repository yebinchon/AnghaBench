; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.subsys_private*, i32, i32, %struct.lock_class_key }
%struct.subsys_private = type { i32, %struct.TYPE_5__, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.bus_type* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.lock_class_key = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bus_kset = common dso_local global i32 0, align 4
@bus_ktype = common dso_local global i32 0, align 4
@bus_attr_uevent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"subsys mutex\00", align 1
@klist_devices_get = common dso_local global i32* null, align 8
@klist_devices_put = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"bus: '%s': registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_register(%struct.bus_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bus_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subsys_private*, align 8
  %6 = alloca %struct.lock_class_key*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %3, align 8
  %7 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %8 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %7, i32 0, i32 3
  store %struct.lock_class_key* %8, %struct.lock_class_key** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.subsys_private* @kzalloc(i32 72, i32 %9)
  store %struct.subsys_private* %10, %struct.subsys_private** %5, align 8
  %11 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %12 = icmp ne %struct.subsys_private* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %159

16:                                               ; preds = %1
  %17 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %18 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %19 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %18, i32 0, i32 9
  store %struct.bus_type* %17, %struct.bus_type** %19, align 8
  %20 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %21 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %22 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %21, i32 0, i32 0
  store %struct.subsys_private* %20, %struct.subsys_private** %22, align 8
  %23 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %24 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %23, i32 0, i32 8
  %25 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %24)
  %26 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %27 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %30 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kobject_set_name(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %151

36:                                               ; preds = %16
  %37 = load i32, i32* @bus_kset, align 4
  %38 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %39 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 8
  %42 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %43 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32* @bus_ktype, i32** %45, align 8
  %46 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %47 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %49 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %48, i32 0, i32 1
  %50 = call i32 @kset_register(%struct.TYPE_5__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %151

54:                                               ; preds = %36
  %55 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %56 = call i32 @bus_create_file(%struct.bus_type* %55, i32* @bus_attr_uevent)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %145

60:                                               ; preds = %54
  %61 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %62 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i8* @kset_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.TYPE_6__* %63)
  %65 = bitcast i8* %64 to %struct.TYPE_5__*
  %66 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %67 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %66, i32 0, i32 2
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %67, align 8
  %68 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %69 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %142

75:                                               ; preds = %60
  %76 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %77 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i8* @kset_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, %struct.TYPE_6__* %78)
  %80 = bitcast i8* %79 to %struct.TYPE_5__*
  %81 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %82 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %81, i32 0, i32 3
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %82, align 8
  %83 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %84 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %135

90:                                               ; preds = %75
  %91 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %92 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %91, i32 0, i32 7
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %95 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %94, i32 0, i32 6
  %96 = load %struct.lock_class_key*, %struct.lock_class_key** %6, align 8
  %97 = call i32 @__mutex_init(i32* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* %96)
  %98 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %99 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %98, i32 0, i32 5
  %100 = load i32*, i32** @klist_devices_get, align 8
  %101 = load i32*, i32** @klist_devices_put, align 8
  %102 = call i32 @klist_init(i32* %99, i32* %100, i32* %101)
  %103 = load %struct.subsys_private*, %struct.subsys_private** %5, align 8
  %104 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %103, i32 0, i32 4
  %105 = call i32 @klist_init(i32* %104, i32* null, i32* null)
  %106 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %107 = call i32 @add_probe_files(%struct.bus_type* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  br label %128

111:                                              ; preds = %90
  %112 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %113 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %114 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bus_add_groups(%struct.bus_type* %112, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %125

120:                                              ; preds = %111
  %121 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %122 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  store i32 0, i32* %2, align 4
  br label %159

125:                                              ; preds = %119
  %126 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %127 = call i32 @remove_probe_files(%struct.bus_type* %126)
  br label %128

128:                                              ; preds = %125, %110
  %129 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %130 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %129, i32 0, i32 0
  %131 = load %struct.subsys_private*, %struct.subsys_private** %130, align 8
  %132 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %131, i32 0, i32 3
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = call i32 @kset_unregister(%struct.TYPE_5__* %133)
  br label %135

135:                                              ; preds = %128, %87
  %136 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %137 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %136, i32 0, i32 0
  %138 = load %struct.subsys_private*, %struct.subsys_private** %137, align 8
  %139 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %138, i32 0, i32 2
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = call i32 @kset_unregister(%struct.TYPE_5__* %140)
  br label %142

142:                                              ; preds = %135, %72
  %143 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %144 = call i32 @bus_remove_file(%struct.bus_type* %143, i32* @bus_attr_uevent)
  br label %145

145:                                              ; preds = %142, %59
  %146 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %147 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %146, i32 0, i32 0
  %148 = load %struct.subsys_private*, %struct.subsys_private** %147, align 8
  %149 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %148, i32 0, i32 1
  %150 = call i32 @kset_unregister(%struct.TYPE_5__* %149)
  br label %151

151:                                              ; preds = %145, %53, %35
  %152 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %153 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %152, i32 0, i32 0
  %154 = load %struct.subsys_private*, %struct.subsys_private** %153, align 8
  %155 = call i32 @kfree(%struct.subsys_private* %154)
  %156 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %157 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %156, i32 0, i32 0
  store %struct.subsys_private* null, %struct.subsys_private** %157, align 8
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %151, %120, %13
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.subsys_private* @kzalloc(i32, i32) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @kobject_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @kset_register(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_create_file(%struct.bus_type*, i32*) #1

declare dso_local i8* @kset_create_and_add(i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__mutex_init(i32*, i8*, %struct.lock_class_key*) #1

declare dso_local i32 @klist_init(i32*, i32*, i32*) #1

declare dso_local i32 @add_probe_files(%struct.bus_type*) #1

declare dso_local i32 @bus_add_groups(%struct.bus_type*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @remove_probe_files(%struct.bus_type*) #1

declare dso_local i32 @kset_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_remove_file(%struct.bus_type*, i32*) #1

declare dso_local i32 @kfree(%struct.subsys_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
