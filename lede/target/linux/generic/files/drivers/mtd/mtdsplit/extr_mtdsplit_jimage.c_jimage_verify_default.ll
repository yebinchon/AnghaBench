; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_jimage.c_jimage_verify_default.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/mtd/mtdsplit/extr_mtdsplit_jimage.c_jimage_verify_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jimage_header = type { i64, i64, i64, i64, i64 }

@STAG_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"invalid jImage stag header magic: %04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCH2_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid jImage sch2 header magic: %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"invalid jImage stag header cmark: %02x\0A\00", align 1
@STAG_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid jImage stag header id: %02x\0A\00", align 1
@SCH2_VER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"invalid jImage sch2 header version: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @jimage_verify_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jimage_verify_default(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.jimage_header*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.jimage_header*
  store %struct.jimage_header* %8, %struct.jimage_header** %6, align 8
  %9 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %10 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STAG_MAGIC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %16 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %23 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCH2_MAGIC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %29 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %76

34:                                               ; preds = %21
  %35 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %36 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %39 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %44 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %34
  %50 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %51 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @STAG_ID, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %57 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %76

62:                                               ; preds = %49
  %63 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %64 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SCH2_VER, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.jimage_header*, %struct.jimage_header** %6, align 8
  %70 = getelementptr inbounds %struct.jimage_header, %struct.jimage_header* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %68, %55, %42, %27, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
