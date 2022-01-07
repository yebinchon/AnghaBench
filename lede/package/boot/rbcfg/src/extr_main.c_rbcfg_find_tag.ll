; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_find_tag.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_find_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_ctx = type { i8*, i32 }

@RB_ERR_NOTFOUND = common dso_local global i32 0, align 4
@RB_ID_TERMINATOR = common dso_local global i64 0, align 8
@RB_ERR_NOTWANTED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no tag found with id=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbcfg_ctx*, i64, i64*, i8**)* @rbcfg_find_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbcfg_find_tag(%struct.rbcfg_ctx* %0, i64 %1, i64* %2, i8** %3) #0 {
  %5 = alloca %struct.rbcfg_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rbcfg_ctx* %0, %struct.rbcfg_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i8** %3, i8*** %8, align 8
  %14 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  %17 = load %struct.rbcfg_ctx*, %struct.rbcfg_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.rbcfg_ctx, %struct.rbcfg_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @RB_ERR_NOTFOUND, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  store i8* %22, i8** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sub i32 %23, 8
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %65, %4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ugt i32 %26, 2
  br i1 %27, label %28, label %74

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @get_u16(i8* %29)
  store i64 %30, i64* %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %32, i8** %11, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sub i32 %33, 2
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %74

38:                                               ; preds = %28
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @get_u16(i8* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sub i32 %43, 2
  store i32 %44, i32* %12, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @RB_ID_TERMINATOR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @RB_ERR_NOTWANTED, align 4
  store i32 %49, i32* %13, align 4
  br label %74

50:                                               ; preds = %38
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %74

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8**, i8*** %8, align 8
  store i8* %63, i8** %64, align 8
  store i32 0, i32* %13, align 4
  br label %74

65:                                               ; preds = %56
  %66 = load i64, i64* %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %11, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = sub nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %12, align 4
  br label %25

74:                                               ; preds = %60, %55, %48, %37, %25
  %75 = load i32, i32* @RB_ERR_NOTFOUND, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @stderr, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %13, align 4
  ret i32 %83
}

declare dso_local i64 @get_u16(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
