; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe.c_layout_sections.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe.c_layout_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@layout_sections.masks = internal constant [4 x [2 x i64]] [[2 x i64] [i64 131, i64 131], [2 x i64] [i64 130, i64 131], [2 x i64] [i64 130, i64 131], [2 x i64] [i64 131, i64 0]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, %struct.TYPE_9__*, %struct.TYPE_8__*, i8*)* @layout_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_sections(%struct.module* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i8* %3) #0 {
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %24, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 -1, i64* %23, align 8
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %12

27:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %99, %27
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ARRAY_SIZE(i64** bitcast ([4 x [2 x i64]]* @layout_sections.masks to i64**))
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %102

32:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %84, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %11, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* @layout_sections.masks, i64 0, i64 %48
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %49, i64 0, i64 0
  %51 = load i64, i64* %50, align 16
  %52 = and i64 %46, %51
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* @layout_sections.masks, i64 0, i64 %54
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %55, i64 0, i64 0
  %57 = load i64, i64* %56, align 16
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %75, label %59

59:                                               ; preds = %39
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* @layout_sections.masks, i64 0, i64 %64
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %65, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %62, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %59
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %59, %39
  br label %84

76:                                               ; preds = %70
  %77 = load %struct.module*, %struct.module** %5, align 8
  %78 = getelementptr inbounds %struct.module, %struct.module* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %81 = call i64 @get_offset(i64* %79, %struct.TYPE_8__* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %76, %75
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %33

87:                                               ; preds = %33
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.module*, %struct.module** %5, align 8
  %92 = getelementptr inbounds %struct.module, %struct.module* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.module*, %struct.module** %5, align 8
  %96 = getelementptr inbounds %struct.module, %struct.module* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i64 %94, i64* %97, align 8
  br label %98

98:                                               ; preds = %90, %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %28

102:                                              ; preds = %28
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i64 @get_offset(i64*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
