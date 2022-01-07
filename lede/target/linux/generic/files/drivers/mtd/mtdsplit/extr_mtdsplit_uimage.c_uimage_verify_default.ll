; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_uimage.c_uimage_verify_default.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_uimage.c_uimage_verify_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uimage_header = type { i64, i64, i64 }

@IH_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"invalid uImage magic: %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IH_OS_LINUX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid uImage OS: %08x\0A\00", align 1
@IH_TYPE_KERNEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid uImage type: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @uimage_verify_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uimage_verify_default(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uimage_header*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.uimage_header*
  store %struct.uimage_header* %8, %struct.uimage_header** %6, align 8
  %9 = load %struct.uimage_header*, %struct.uimage_header** %6, align 8
  %10 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @be32_to_cpu(i64 %11)
  %13 = load i64, i64* @IH_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.uimage_header*, %struct.uimage_header** %6, align 8
  %17 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @be32_to_cpu(i64 %18)
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.uimage_header*, %struct.uimage_header** %6, align 8
  %25 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IH_OS_LINUX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.uimage_header*, %struct.uimage_header** %6, align 8
  %31 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @be32_to_cpu(i64 %32)
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %23
  %38 = load %struct.uimage_header*, %struct.uimage_header** %6, align 8
  %39 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IH_TYPE_KERNEL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.uimage_header*, %struct.uimage_header** %6, align 8
  %45 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @be32_to_cpu(i64 %46)
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %43, %29, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
