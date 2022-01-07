; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_input_name2mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_input_name2mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.input_name2mask.sigtab = private unnamed_addr constant [11 x i8] c"EeSsPpAaBb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i32*, i32*)* @input_name2mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_name2mask(i8* %0, i64* %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [11 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = bitcast [11 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.input_name2mask.sigtab, i32 0, i32 0), i64 11, i1 false)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %23

23:                                               ; preds = %96, %5
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %99

27:                                               ; preds = %23
  %28 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i8* @strchr(i8* %28, i8 signext %30)
  store i8* %31, i8** %21, align 8
  %32 = load i8*, i8** %21, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %120

35:                                               ; preds = %27
  %36 = load i8*, i8** %21, align 8
  %37 = getelementptr inbounds [11 x i8], [11 x i8]* %12, i64 0, i64 0
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = and i32 %42, 1
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %17, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sge i32 %54, 48
  br i1 %55, label %56, label %70

56:                                               ; preds = %35
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %59, 55
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %14, align 4
  br label %78

70:                                               ; preds = %56, %35
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 45
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 8, i32* %18, align 4
  br label %77

76:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %120

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %18, align 4
  %80 = mul nsw i32 %79, 5
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = zext i32 %83 to i64
  %85 = shl i64 1, %84
  %86 = load i64, i64* %15, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %15, align 8
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %19, align 4
  %92 = zext i32 %91 to i64
  %93 = shl i64 1, %92
  %94 = load i64, i64* %16, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %16, align 8
  br label %96

96:                                               ; preds = %90, %78
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  br label %23

99:                                               ; preds = %23
  %100 = load i64, i64* %15, align 8
  %101 = load i64*, i64** %8, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i64*, i64** %9, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i32, i32* %13, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %99
  %112 = load i32*, i32** %11, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %111
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %76, %34
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
