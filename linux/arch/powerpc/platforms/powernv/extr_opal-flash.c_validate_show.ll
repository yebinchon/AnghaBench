; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_validate_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-flash.c_validate_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.validate_flash_t = type { i64, i32, i32, i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@validate_flash_data = common dso_local global %struct.validate_flash_t zeroinitializer, align 8
@VALIDATE_TMP_UPDATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@VALIDATE_CUR_UNKNOWN = common dso_local global i64 0, align 8
@VALIDATE_BUF_SIZE = common dso_local global i32 0, align 4
@FLASH_NO_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @validate_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.validate_flash_t*, align 8
  %8 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.validate_flash_t* @validate_flash_data, %struct.validate_flash_t** %7, align 8
  %9 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %10 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VALIDATE_TMP_UPDATE, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %17 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %8, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %24 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %28 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @VALIDATE_TMP_UPDATE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %35 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @VALIDATE_CUR_UNKNOWN, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %80

41:                                               ; preds = %33, %21
  %42 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %43 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VALIDATE_BUF_SIZE, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %55 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @VALIDATE_BUF_SIZE, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @memcpy(i8* %53, i32 %56, i32 %59)
  %61 = load i32, i32* @VALIDATE_BUF_SIZE, align 4
  store i32 %61, i32* %8, align 4
  br label %79

62:                                               ; preds = %41
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %68 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %71 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i8* %66, i32 %69, i32 %72)
  %74 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %75 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %62, %49
  br label %80

80:                                               ; preds = %79, %40, %14
  %81 = load i32, i32* @FLASH_NO_OP, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.validate_flash_t*, %struct.validate_flash_t** %7, align 8
  %84 = getelementptr inbounds %struct.validate_flash_t, %struct.validate_flash_t* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
