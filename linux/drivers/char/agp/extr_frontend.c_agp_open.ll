; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i8* }
%struct.agp_file_private = type { i32, i32 }
%struct.agp_client = type { i32 }

@AGPGART_MINOR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@agp_fe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AGP_FF_ALLOW_CLIENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@AGP_FF_ALLOW_CONTROLLER = common dso_local global i32 0, align 4
@AGP_FF_IS_CLIENT = common dso_local global i32 0, align 4
@AGP_FF_IS_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"private=%p, client=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @agp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.agp_file_private*, align 8
  %8 = alloca %struct.agp_client*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AGPGART_MINOR, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0))
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.agp_file_private* @kzalloc(i32 8, i32 %19)
  store %struct.agp_file_private* %20, %struct.agp_file_private** %7, align 8
  %21 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %22 = icmp eq %struct.agp_file_private* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %72

27:                                               ; preds = %17
  %28 = load i32, i32* @AGP_FF_ALLOW_CLIENT, align 4
  %29 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %30 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %36 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %38 = call i64 @capable(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %27
  %41 = load i32, i32* @AGP_FF_ALLOW_CONTROLLER, align 4
  %42 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %43 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %42, i32 0, i32 0
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %27
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.agp_client* @agp_find_client_by_pid(i32 %48)
  store %struct.agp_client* %49, %struct.agp_client** %8, align 8
  %50 = load %struct.agp_client*, %struct.agp_client** %8, align 8
  %51 = icmp ne %struct.agp_client* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load i32, i32* @AGP_FF_IS_CLIENT, align 4
  %54 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %55 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load i32, i32* @AGP_FF_IS_VALID, align 4
  %58 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %59 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  br label %61

61:                                               ; preds = %52, %45
  %62 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %63 = bitcast %struct.agp_file_private* %62 to i8*
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %67 = call i32 @agp_insert_file_private(%struct.agp_file_private* %66)
  %68 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %69 = load %struct.agp_client*, %struct.agp_client** %8, align 8
  %70 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.agp_file_private* %68, %struct.agp_client* %69)
  %71 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %23, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.agp_file_private* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local %struct.agp_client* @agp_find_client_by_pid(i32) #1

declare dso_local i32 @agp_insert_file_private(%struct.agp_file_private*) #1

declare dso_local i32 @DBG(i8*, %struct.agp_file_private*, %struct.agp_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
