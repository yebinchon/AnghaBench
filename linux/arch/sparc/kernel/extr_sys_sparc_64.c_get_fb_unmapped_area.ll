; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_get_fb_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_get_fb_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.file = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_fb_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64 (%struct.file*, i64, i64, i64, i64)*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* @ENOMEM, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %13, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %20, align 8
  store i64 (%struct.file*, i64, i64, i64, i64)* %21, i64 (%struct.file*, i64, i64, i64, i64)** %14, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @MAP_FIXED, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %14, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i64 %27(%struct.file* null, i64 %28, i64 %29, i64 %30, i64 %31)
  store i64 %32, i64* %6, align 8
  br label %117

33:                                               ; preds = %5
  %34 = load i64, i64* @MAP_SHARED, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %11, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp uge i64 %39, 4194304
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i64 4194304, i64* %12, align 8
  br label %52

42:                                               ; preds = %33
  %43 = load i64, i64* %9, align 8
  %44 = icmp uge i64 %43, 524288
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i64 524288, i64* %12, align 8
  br label %51

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = icmp uge i64 %47, 65536
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i64 65536, i64* %12, align 8
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %45
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %100, %52
  %54 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %14, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = sub i64 %57, %58
  %60 = add i64 %56, %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i64 %54(%struct.file* null, i64 %55, i64 %60, i64 %61, i64 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @PAGE_MASK, align 8
  %66 = xor i64 %65, -1
  %67 = and i64 %64, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %53
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %12, align 8
  %72 = sub i64 %71, 1
  %73 = add i64 %70, %72
  %74 = load i64, i64* %12, align 8
  %75 = sub i64 %74, 1
  %76 = xor i64 %75, -1
  %77 = and i64 %73, %76
  store i64 %77, i64* %13, align 8
  br label %102

78:                                               ; preds = %53
  %79 = load i64, i64* %12, align 8
  %80 = icmp eq i64 %79, 4194304
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i64 524288, i64* %12, align 8
  br label %89

82:                                               ; preds = %78
  %83 = load i64, i64* %12, align 8
  %84 = icmp eq i64 %83, 524288
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i64 65536, i64* %12, align 8
  br label %88

86:                                               ; preds = %82
  %87 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %86, %85
  br label %89

89:                                               ; preds = %88, %81
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @PAGE_MASK, align 8
  %93 = xor i64 %92, -1
  %94 = and i64 %91, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = icmp ugt i64 %97, %98
  br label %100

100:                                              ; preds = %96, %90
  %101 = phi i1 [ false, %90 ], [ %99, %96 ]
  br i1 %101, label %53, label %102

102:                                              ; preds = %100, %69
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @PAGE_MASK, align 8
  %105 = xor i64 %104, -1
  %106 = and i64 %103, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %14, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i64 %109(%struct.file* null, i64 %110, i64 %111, i64 %112, i64 %113)
  store i64 %114, i64* %13, align 8
  br label %115

115:                                              ; preds = %108, %102
  %116 = load i64, i64* %13, align 8
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %115, %26
  %118 = load i64, i64* %6, align 8
  ret i64 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
