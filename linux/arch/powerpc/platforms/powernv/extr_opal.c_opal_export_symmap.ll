; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal.c_opal_export_symmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal.c_opal_export_symmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"/ibm,opal/firmware\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"symbol-map\00", align 1
@symbol_map_attr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@opal_kobj = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Error %d creating OPAL symbols file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @opal_export_symmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opal_export_symmap() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %5, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = icmp ne %struct.device_node* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %36

9:                                                ; preds = %0
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i32* @of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ne i64 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %9
  br label %36

19:                                               ; preds = %14
  %20 = load i32*, i32** %1, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be64_to_cpu(i32 %22)
  %24 = call i32 @__va(i32 %23)
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_map_attr, i32 0, i32 1), align 4
  %25 = load i32*, i32** %1, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be64_to_cpu(i32 %27)
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_map_attr, i32 0, i32 0), align 4
  %29 = load i32, i32* @opal_kobj, align 4
  %30 = call i32 @sysfs_create_bin_file(i32 %29, %struct.TYPE_3__* @symbol_map_attr)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %8, %18, %33, %19
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @__va(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
