; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pcd.c_pcd_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i64, i32 }

@__const.pcd_identify.id_cmd = private unnamed_addr constant [12 x i8] c"\12\00\00\00$\00\00\00\00\00\00\00", align 1
@pcd_bufblk = common dso_local global i32 0, align 4
@pcd_buffer = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"identify\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: %s is not a CD-ROM\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcd_unit*, i8*)* @pcd_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_identify(%struct.pcd_unit* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcd_unit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [12 x i8], align 1
  store %struct.pcd_unit* %0, %struct.pcd_unit** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast [12 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.pcd_identify.id_cmd, i32 0, i32 0), i64 12, i1 false)
  store i32 -1, i32* @pcd_bufblk, align 4
  %10 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %12 = load i32*, i32** @pcd_buffer, align 8
  %13 = call i32 @pcd_atapi(%struct.pcd_unit* %10, i8* %11, i32 36, i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

17:                                               ; preds = %2
  %18 = load i32*, i32** @pcd_buffer, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 31
  %22 = icmp ne i32 %21, 5
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i64, i64* @verbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %28 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %31 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %36 = call i32 (i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %35)
  br label %37

37:                                               ; preds = %26, %23
  store i32 -1, i32* %3, align 4
  br label %77

38:                                               ; preds = %17
  %39 = load i8*, i8** %5, align 8
  %40 = load i32*, i32** @pcd_buffer, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  %42 = call i32 @memcpy(i8* %39, i32* %41, i32 16)
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 16
  store i8 0, i8* %44, align 1
  store i32 16, i32* %6, align 4
  br label %45

45:                                               ; preds = %58, %38
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 32
  br label %56

56:                                               ; preds = %48, %45
  %57 = phi i1 [ false, %45 ], [ %55, %48 ]
  br i1 %57, label %58, label %65

58:                                               ; preds = %56
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  br label %45

65:                                               ; preds = %56
  %66 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %67 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pcd_unit*, %struct.pcd_unit** %4, align 8
  %70 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 (i8*, i32, i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %68, i8* %74, i8* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %65, %37, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pcd_atapi(%struct.pcd_unit*, i8*, i32, i32*, i8*) #2

declare dso_local i32 @printk(i8*, i32, i8*, ...) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
