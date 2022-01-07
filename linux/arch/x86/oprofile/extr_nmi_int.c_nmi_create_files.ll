; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_nmi_int.c_nmi_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_nmi_int.c_nmi_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@model = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@counter_config = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"unit_mask\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @nmi_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmi_create_files(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [4 x i8], align 1
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %74, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @model, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %77

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @op_x86_virt_to_phys(i32 %13)
  %15 = call i32 @avail_to_resrv_perfctr_nmi_bit(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %74

18:                                               ; preds = %12
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @snprintf(i8* %19, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.dentry*, %struct.dentry** %2, align 8
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %24 = call %struct.dentry* @oprofilefs_mkdir(%struct.dentry* %22, i8* %23)
  store %struct.dentry* %24, %struct.dentry** %4, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = call i32 @oprofilefs_create_ulong(%struct.dentry* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 5
  %38 = call i32 @oprofilefs_create_ulong(%struct.dentry* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = call i32 @oprofilefs_create_ulong(%struct.dentry* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %44)
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = call i32 @oprofilefs_create_ulong(%struct.dentry* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %51)
  %53 = load %struct.dentry*, %struct.dentry** %4, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = call i32 @oprofilefs_create_ulong(%struct.dentry* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %58)
  %60 = load %struct.dentry*, %struct.dentry** %4, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @oprofilefs_create_ulong(%struct.dentry* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %65)
  %67 = load %struct.dentry*, %struct.dentry** %4, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %69 = load i32, i32* %3, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @oprofilefs_create_ulong(%struct.dentry* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %72)
  br label %74

74:                                               ; preds = %18, %17
  %75 = load i32, i32* %3, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %6

77:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @avail_to_resrv_perfctr_nmi_bit(i32) #1

declare dso_local i32 @op_x86_virt_to_phys(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @oprofilefs_mkdir(%struct.dentry*, i8*) #1

declare dso_local i32 @oprofilefs_create_ulong(%struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
