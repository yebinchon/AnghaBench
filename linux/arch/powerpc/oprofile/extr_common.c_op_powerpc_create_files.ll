; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_common.c_op_powerpc_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_common.c_op_powerpc_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@model = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@ctr = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"unit_mask\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"enable_kernel\00", align 1
@sys = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"enable_user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @op_powerpc_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_powerpc_create_files(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [4 x i8], align 1
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %61, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @model, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %6
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @snprintf(i8* %13, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %18 = call %struct.dentry* @oprofilefs_mkdir(%struct.dentry* %16, i8* %17)
  store %struct.dentry* %18, %struct.dentry** %4, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @oprofilefs_create_ulong(%struct.dentry* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = call i32 @oprofilefs_create_ulong(%struct.dentry* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = call i32 @oprofilefs_create_ulong(%struct.dentry* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %38)
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = call i32 @oprofilefs_create_ulong(%struct.dentry* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %45)
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = call i32 @oprofilefs_create_ulong(%struct.dentry* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %52)
  %54 = load %struct.dentry*, %struct.dentry** %4, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = call i32 @oprofilefs_create_ulong(%struct.dentry* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %59)
  br label %61

61:                                               ; preds = %12
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %6

64:                                               ; preds = %6
  %65 = load %struct.dentry*, %struct.dentry** %2, align 8
  %66 = call i32 @oprofilefs_create_ulong(%struct.dentry* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys, i32 0, i32 4))
  %67 = load %struct.dentry*, %struct.dentry** %2, align 8
  %68 = call i32 @oprofilefs_create_ulong(%struct.dentry* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys, i32 0, i32 5))
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys, i32 0, i32 5), align 4
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @oprofilefs_mkdir(%struct.dentry*, i8*) #1

declare dso_local i32 @oprofilefs_create_ulong(%struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
