; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_mtd.c_image_check.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_mtd.c_image_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buflen = common dso_local global i32 0, align 4
@buf = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not get image magic\0A\00", align 1
@TRX_MAGIC = common dso_local global i64 0, align 8
@imageformat = common dso_local global i32 0, align 4
@SEAMA_MAGIC = common dso_local global i64 0, align 8
@WRG_MAGIC = common dso_local global i64 0, align 8
@WRGG03_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @image_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_check(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* @buflen, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i64, i64* @buf, align 8
  %16 = load i32, i32* @buflen, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @buflen, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @read(i32 %14, i64 %18, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %31

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @buflen, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* @buflen, align 4
  br label %9

31:                                               ; preds = %26, %9
  %32 = load i32, i32* @buflen, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load i64, i64* @buf, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @be32_to_cpu(i32 %43)
  %45 = load i64, i64* @TRX_MAGIC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 130, i32* @imageformat, align 4
  br label %69

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @be32_to_cpu(i32 %49)
  %51 = load i64, i64* @SEAMA_MAGIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 131, i32* @imageformat, align 4
  br label %68

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load i64, i64* @WRG_MAGIC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 129, i32* @imageformat, align 4
  br label %67

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @le32_to_cpu(i32 %61)
  %63 = load i64, i64* @WRGG03_MAGIC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 128, i32* @imageformat, align 4
  br label %66

66:                                               ; preds = %65, %60
  br label %67

67:                                               ; preds = %66, %59
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i32, i32* @imageformat, align 4
  switch i32 %70, label %79 [
    i32 130, label %71
    i32 131, label %78
    i32 129, label %78
    i32 128, label %78
  ]

71:                                               ; preds = %69
  br i1 true, label %72, label %77

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* @buf, align 8
  %76 = call i32 @trx_check(i32 %73, i8* %74, i64 %75, i32* @buflen)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %71
  br label %80

78:                                               ; preds = %69, %69, %69
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %78, %77
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %35
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @trx_check(i32, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
