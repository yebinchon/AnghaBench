; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas_flash.c_get_validate_flash_msg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas_flash.c_get_validate_flash_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_validate_flash_t = type { i64, i64, i8* }

@VALIDATE_TMP_UPDATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@VALIDATE_CUR_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtas_validate_flash_t*, i8*, i32)* @get_validate_flash_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_validate_flash_msg(%struct.rtas_validate_flash_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rtas_validate_flash_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtas_validate_flash_t* %0, %struct.rtas_validate_flash_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %4, align 8
  %9 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VALIDATE_TMP_UPDATE, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %4, align 8
  %16 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %4, align 8
  %20 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VALIDATE_CUR_UNKNOWN, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  %25 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %4, align 8
  %26 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VALIDATE_TMP_UPDATE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24, %13
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %4, align 8
  %39 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @snprintf(i8* %34, i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %30, %24
  br label %53

47:                                               ; preds = %3
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.rtas_validate_flash_t*, %struct.rtas_validate_flash_t** %4, align 8
  %50 = getelementptr inbounds %struct.rtas_validate_flash_t, %struct.rtas_validate_flash_t* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %46
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
