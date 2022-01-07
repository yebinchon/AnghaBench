; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vde_kern.c_vde_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vde_kern.c_vde_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vde_init = type { i8*, i8* }
%struct.uml_net_private = type { i64 }
%struct.vde_data = type { i8*, i8*, %struct.net_device*, i32*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"UML vde_transport\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"vde backend - %s, \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"(default socket)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*)* @vde_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vde_init(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vde_init*, align 8
  %6 = alloca %struct.uml_net_private*, align 8
  %7 = alloca %struct.vde_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vde_init*
  store %struct.vde_init* %9, %struct.vde_init** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.uml_net_private* @netdev_priv(%struct.net_device* %10)
  store %struct.uml_net_private* %11, %struct.uml_net_private** %6, align 8
  %12 = load %struct.uml_net_private*, %struct.uml_net_private** %6, align 8
  %13 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.vde_data*
  store %struct.vde_data* %15, %struct.vde_data** %7, align 8
  %16 = load %struct.vde_init*, %struct.vde_init** %5, align 8
  %17 = getelementptr inbounds %struct.vde_init, %struct.vde_init* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.vde_data*, %struct.vde_data** %7, align 8
  %20 = getelementptr inbounds %struct.vde_data, %struct.vde_data* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.vde_init*, %struct.vde_init** %5, align 8
  %22 = getelementptr inbounds %struct.vde_init, %struct.vde_init* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.vde_init*, %struct.vde_init** %5, align 8
  %27 = getelementptr inbounds %struct.vde_init, %struct.vde_init* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %29 ]
  %32 = load %struct.vde_data*, %struct.vde_data** %7, align 8
  %33 = getelementptr inbounds %struct.vde_data, %struct.vde_data* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.vde_data*, %struct.vde_data** %7, align 8
  %35 = getelementptr inbounds %struct.vde_data, %struct.vde_data* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load %struct.vde_data*, %struct.vde_data** %7, align 8
  %37 = getelementptr inbounds %struct.vde_data, %struct.vde_data* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.vde_data*, %struct.vde_data** %7, align 8
  %40 = getelementptr inbounds %struct.vde_data, %struct.vde_data* %39, i32 0, i32 2
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  %41 = load %struct.vde_data*, %struct.vde_data** %7, align 8
  %42 = getelementptr inbounds %struct.vde_data, %struct.vde_data* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load %struct.vde_data*, %struct.vde_data** %7, align 8
  %47 = getelementptr inbounds %struct.vde_data, %struct.vde_data* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  br label %50

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i8* [ %48, %45 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %49 ]
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load %struct.vde_data*, %struct.vde_data** %7, align 8
  %54 = load %struct.vde_init*, %struct.vde_init** %5, align 8
  %55 = call i32 @vde_init_libstuff(%struct.vde_data* %53, %struct.vde_init* %54)
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.uml_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @vde_init_libstuff(%struct.vde_data*, %struct.vde_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
