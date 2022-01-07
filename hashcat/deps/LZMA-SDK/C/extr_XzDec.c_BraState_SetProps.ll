; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_BraState_SetProps.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_BraState_SetProps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@XZ_ID_Delta = common dso_local global i32 0, align 4
@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64, i32)* @BraState_SetProps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BraState_SetProps(i8* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @UNUSED_VAR(i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XZ_ID_Delta, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %27, i32* %5, align 4
  br label %79

28:                                               ; preds = %23
  %29 = load i64*, i64** %7, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %77

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load i64*, i64** %7, align 8
  %41 = call i32 @GetUi32(i64* %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %66 [
    i32 129, label %45
    i32 132, label %45
    i32 128, label %45
    i32 131, label %52
    i32 130, label %59
  ]

45:                                               ; preds = %39, %39, %39
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %50, i32* %5, align 4
  br label %79

51:                                               ; preds = %45
  br label %66

52:                                               ; preds = %39
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %57, i32* %5, align 4
  br label %79

58:                                               ; preds = %52
  br label %66

59:                                               ; preds = %39
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 15
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %64, i32* %5, align 4
  br label %79

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %39, %65, %58, %51
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %76

70:                                               ; preds = %36
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %74, i32* %5, align 4
  br label %79

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %66
  br label %77

77:                                               ; preds = %76, %28
  %78 = load i32, i32* @SZ_OK, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %73, %63, %56, %49, %26
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @UNUSED_VAR(i32) #1

declare dso_local i32 @GetUi32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
