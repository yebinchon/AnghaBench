; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_targ_generate_preget_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_targ_generate_preget_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tag_save = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"set temp%d 0 0 %d\0D\0A\00", align 1
@QLsave = common dso_local global i32 0, align 4
@Qsave = common dso_local global i32* null, align 8
@Q = common dso_local global i32* null, align 8
@CC = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"set xtemp%d 0 0 %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i32)* @targ_generate_preget_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targ_generate_preget_query(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* @tag_save, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %96

19:                                               ; preds = %5
  %20 = load i64, i64* @tag_save, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* @tag_save, align 8
  %25 = load i32, i32* @QLsave, align 4
  %26 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32*, i32** @Qsave, align 8
  %32 = load i32, i32* @QLsave, align 4
  %33 = call i32 @memcpy(i8* %30, i32* %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @QLsave, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  br label %96

37:                                               ; preds = %19
  %38 = load i64, i64* @tag_save, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %95

40:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  %41 = load i32*, i32** @Q, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 808464432, i32* %42, align 4
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %71, %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @QLsave, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32*, i32** @Qsave, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = srem i32 %52, %55
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %47
  %60 = load i32*, i32** @Qsave, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @Q, align 8
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %47
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %43

74:                                               ; preds = %43
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* @tag_save, align 8
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 4, %77
  %79 = add nsw i32 %78, 4
  %80 = call i32 @sprintf(i8* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %76, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32*, i32** @Q, align 8
  %86 = load i32, i32* %14, align 4
  %87 = mul nsw i32 4, %86
  %88 = add nsw i32 %87, 4
  %89 = call i32 @memcpy(i8* %84, i32* %85, i32 %88)
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 4, %91
  %93 = add nsw i32 %90, %92
  %94 = add nsw i32 %93, 4
  store i32 %94, i32* %6, align 4
  br label %96

95:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %95, %74, %22, %18
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @sprintf(i8*, i8*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
