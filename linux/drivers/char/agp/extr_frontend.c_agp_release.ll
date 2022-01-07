; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.agp_controller* }
%struct.agp_controller = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.agp_file_private* }
%struct.agp_file_private = type { i32, i32 }

@agp_fe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"priv=%p\00", align 1
@AGP_FF_IS_CONTROLLER = common dso_local global i32 0, align 4
@AGP_FF_IS_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @agp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.agp_file_private*, align 8
  %6 = alloca %struct.agp_controller*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.agp_file_private*, %struct.agp_file_private** %8, align 8
  store %struct.agp_file_private* %9, %struct.agp_file_private** %5, align 8
  %10 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0))
  %11 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %12 = call i32 @DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.agp_file_private* %11)
  %13 = load i32, i32* @AGP_FF_IS_CONTROLLER, align 4
  %14 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %15 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %20 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.agp_controller* @agp_find_controller_by_pid(i32 %21)
  store %struct.agp_controller* %22, %struct.agp_controller** %6, align 8
  %23 = load %struct.agp_controller*, %struct.agp_controller** %6, align 8
  %24 = icmp ne %struct.agp_controller* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct.agp_controller*, %struct.agp_controller** %6, align 8
  %27 = load %struct.agp_controller*, %struct.agp_controller** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 1), align 8
  %28 = icmp eq %struct.agp_controller* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.agp_controller*, %struct.agp_controller** %6, align 8
  %31 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %32 = call i32 @agp_controller_release_current(%struct.agp_controller* %30, %struct.agp_file_private* %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.agp_controller*, %struct.agp_controller** %6, align 8
  %35 = call i32 @agp_remove_controller(%struct.agp_controller* %34)
  store %struct.agp_controller* null, %struct.agp_controller** %6, align 8
  br label %36

36:                                               ; preds = %33, %18
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* @AGP_FF_IS_CLIENT, align 4
  %39 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %40 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %45 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @agp_remove_client(i32 %46)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %50 = call i32 @agp_remove_file_private(%struct.agp_file_private* %49)
  %51 = load %struct.agp_file_private*, %struct.agp_file_private** %5, align 8
  %52 = call i32 @kfree(%struct.agp_file_private* %51)
  %53 = load %struct.file*, %struct.file** %4, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  store %struct.agp_file_private* null, %struct.agp_file_private** %54, align 8
  %55 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DBG(i8*, %struct.agp_file_private*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.agp_controller* @agp_find_controller_by_pid(i32) #1

declare dso_local i32 @agp_controller_release_current(%struct.agp_controller*, %struct.agp_file_private*) #1

declare dso_local i32 @agp_remove_controller(%struct.agp_controller*) #1

declare dso_local i32 @agp_remove_client(i32) #1

declare dso_local i32 @agp_remove_file_private(%struct.agp_file_private*) #1

declare dso_local i32 @kfree(%struct.agp_file_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
