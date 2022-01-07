; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_init_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_init_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dev = type { i32 }
%struct.queue = type { i32, %struct.FS_QENTRY*, %struct.FS_QENTRY* }
%struct.FS_QENTRY = type { i32 }

@FS_DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Initializing queue at %x: %d entries:\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Alloc queue: %p(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_dev*, %struct.queue*, i32, i32, i32)* @init_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_q(%struct.fs_dev* %0, %struct.queue* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_dev*, align 8
  %8 = alloca %struct.queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.FS_QENTRY*, align 8
  store %struct.fs_dev* %0, %struct.fs_dev** %7, align 8
  store %struct.queue* %1, %struct.queue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = call i32 (...) @func_enter()
  %19 = load i32, i32* @FS_DEBUG_INIT, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @fs_dprintk(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.FS_QENTRY* @aligned_kmalloc(i32 %23, i32 %24, i32 16)
  store %struct.FS_QENTRY* %25, %struct.FS_QENTRY** %13, align 8
  %26 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %27 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %28 = ptrtoint %struct.FS_QENTRY* %27 to i32
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @fs_dprintk(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %32 = icmp ne %struct.FS_QENTRY* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %81

34:                                               ; preds = %5
  %35 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @Q_SA(i32 %36)
  %38 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %39 = call i32 @virt_to_bus(%struct.FS_QENTRY* %38)
  %40 = call i32 @write_fs(%struct.fs_dev* %35, i32 %37, i32 %39)
  %41 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @Q_EA(i32 %42)
  %44 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %44, i64 %46
  %48 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %47, i64 -1
  %49 = call i32 @virt_to_bus(%struct.FS_QENTRY* %48)
  %50 = call i32 @write_fs(%struct.fs_dev* %41, i32 %43, i32 %49)
  %51 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @Q_WP(i32 %52)
  %54 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %55 = call i32 @virt_to_bus(%struct.FS_QENTRY* %54)
  %56 = call i32 @write_fs(%struct.fs_dev* %51, i32 %53, i32 %55)
  %57 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @Q_RP(i32 %58)
  %60 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %61 = call i32 @virt_to_bus(%struct.FS_QENTRY* %60)
  %62 = call i32 @write_fs(%struct.fs_dev* %57, i32 %59, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %34
  %66 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @Q_CNF(i32 %67)
  %69 = call i32 @write_fs(%struct.fs_dev* %66, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %65, %34
  %71 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %72 = load %struct.queue*, %struct.queue** %8, align 8
  %73 = getelementptr inbounds %struct.queue, %struct.queue* %72, i32 0, i32 2
  store %struct.FS_QENTRY* %71, %struct.FS_QENTRY** %73, align 8
  %74 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %75 = load %struct.queue*, %struct.queue** %8, align 8
  %76 = getelementptr inbounds %struct.queue, %struct.queue* %75, i32 0, i32 1
  store %struct.FS_QENTRY* %74, %struct.FS_QENTRY** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.queue*, %struct.queue** %8, align 8
  %79 = getelementptr inbounds %struct.queue, %struct.queue* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = call i32 (...) @func_exit()
  store i32 1, i32* %6, align 4
  br label %81

81:                                               ; preds = %70, %33
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @fs_dprintk(i32, i8*, i32, i32) #1

declare dso_local %struct.FS_QENTRY* @aligned_kmalloc(i32, i32, i32) #1

declare dso_local i32 @write_fs(%struct.fs_dev*, i32, i32) #1

declare dso_local i32 @Q_SA(i32) #1

declare dso_local i32 @virt_to_bus(%struct.FS_QENTRY*) #1

declare dso_local i32 @Q_EA(i32) #1

declare dso_local i32 @Q_WP(i32) #1

declare dso_local i32 @Q_RP(i32) #1

declare dso_local i32 @Q_CNF(i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
