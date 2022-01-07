; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_conf_get_disk.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_conf_get_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%u:%u%n\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gendisk* @blkcg_conf_get_disk(i8** %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6, i32* %8)
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.gendisk* @ERR_PTR(i32 %17)
  store %struct.gendisk* %18, %struct.gendisk** %2, align 8
  br label %58

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @isspace(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.gendisk* @ERR_PTR(i32 %30)
  store %struct.gendisk* %31, %struct.gendisk** %2, align 8
  br label %58

32:                                               ; preds = %19
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @skip_spaces(i8* %33)
  store i8* %34, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @MKDEV(i32 %35, i32 %36)
  %38 = call %struct.gendisk* @get_gendisk(i32 %37, i32* %9)
  store %struct.gendisk* %38, %struct.gendisk** %7, align 8
  %39 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %40 = icmp ne %struct.gendisk* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.gendisk* @ERR_PTR(i32 %43)
  store %struct.gendisk* %44, %struct.gendisk** %2, align 8
  br label %58

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %50 = call i32 @put_disk_and_module(%struct.gendisk* %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.gendisk* @ERR_PTR(i32 %52)
  store %struct.gendisk* %53, %struct.gendisk** %2, align 8
  br label %58

54:                                               ; preds = %45
  %55 = load i8*, i8** %4, align 8
  %56 = load i8**, i8*** %3, align 8
  store i8* %55, i8** %56, align 8
  %57 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  store %struct.gendisk* %57, %struct.gendisk** %2, align 8
  br label %58

58:                                               ; preds = %54, %48, %41, %28, %15
  %59 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  ret %struct.gendisk* %59
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.gendisk* @ERR_PTR(i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local %struct.gendisk* @get_gendisk(i32, i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @put_disk_and_module(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
