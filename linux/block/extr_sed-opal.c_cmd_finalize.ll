; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_cmd_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_cmd_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32, i64* }
%struct.opal_header = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@OPAL_ENDLIST = common dso_local global i32 0, align 4
@OPAL_ENDOFDATA = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error finalizing command.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IO_BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Error: Buffer overrun\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i32, i32)* @cmd_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_finalize(%struct.opal_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.opal_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.opal_header*, align 8
  %9 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %11 = load i32, i32* @OPAL_ENDLIST, align 4
  %12 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %10, i32 %11)
  %13 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %14 = load i32, i32* @OPAL_ENDOFDATA, align 4
  %15 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %13, i32 %14)
  %16 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %17 = load i32, i32* @OPAL_STARTLIST, align 4
  %18 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %16, i32 %17)
  %19 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %20 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %19, i32 0)
  %21 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %22 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %21, i32 0)
  %23 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %24 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %23, i32 0)
  %25 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %26 = load i32, i32* @OPAL_ENDLIST, align 4
  %27 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %107

34:                                               ; preds = %3
  %35 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %36 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = bitcast i64* %37 to %struct.opal_header*
  store %struct.opal_header* %38, %struct.opal_header** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.opal_header*, %struct.opal_header** %8, align 8
  %42 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.opal_header*, %struct.opal_header** %8, align 8
  %47 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %50 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = sub i64 %52, 40
  %54 = trunc i64 %53 to i32
  %55 = call i8* @cpu_to_be32(i32 %54)
  %56 = load %struct.opal_header*, %struct.opal_header** %8, align 8
  %57 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  br label %59

59:                                               ; preds = %75, %34
  %60 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %61 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = srem i32 %62, 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %67 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IO_BUFFER_LENGTH, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ERANGE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %107

75:                                               ; preds = %65
  %76 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %77 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %80 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %78, i64 %83
  store i64 0, i64* %84, align 8
  br label %59

85:                                               ; preds = %59
  %86 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %87 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = sub i64 %89, 8
  %91 = sub i64 %90, 24
  %92 = trunc i64 %91 to i32
  %93 = call i8* @cpu_to_be32(i32 %92)
  %94 = load %struct.opal_header*, %struct.opal_header** %8, align 8
  %95 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  %97 = load %struct.opal_dev*, %struct.opal_dev** %5, align 8
  %98 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, 8
  %102 = trunc i64 %101 to i32
  %103 = call i8* @cpu_to_be32(i32 %102)
  %104 = load %struct.opal_header*, %struct.opal_header** %8, align 8
  %105 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %85, %71, %30
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
