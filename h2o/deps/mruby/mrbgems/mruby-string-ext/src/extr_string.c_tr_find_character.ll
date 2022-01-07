; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_find_character.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_tr_find_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_pattern = type { i64, i64, i32, %struct.tr_pattern*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@TR_IN_ORDER = common dso_local global i64 0, align 8
@TR_RANGE = common dso_local global i64 0, align 8
@TR_UNINITIALIZED = common dso_local global i64 0, align 8
@MRB_INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tr_pattern*, i8*, i32)* @tr_find_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tr_find_character(%struct.tr_pattern* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tr_pattern*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tr_pattern* %0, %struct.tr_pattern** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 -1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %13 = icmp ne %struct.tr_pattern* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %16 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i64 [ %17, %14 ], [ 0, %18 ]
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %108, %19
  %22 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %23 = icmp ne %struct.tr_pattern* %22, null
  br i1 %23, label %24, label %118

24:                                               ; preds = %21
  %25 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %26 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TR_IN_ORDER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %34 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %40 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %38, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %51, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %31

60:                                               ; preds = %31
  br label %108

61:                                               ; preds = %24
  %62 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %63 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TR_RANGE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %61
  %68 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %69 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %79 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %77, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = load i64, i64* %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %91 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %89, %96
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %85, %76, %67
  br label %107

99:                                               ; preds = %61
  %100 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %101 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TR_UNINITIALIZED, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @mrb_assert(i32 %105)
  br label %107

107:                                              ; preds = %99, %98
  br label %108

108:                                              ; preds = %107, %60
  %109 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %110 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %9, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %9, align 8
  %115 = load %struct.tr_pattern*, %struct.tr_pattern** %5, align 8
  %116 = getelementptr inbounds %struct.tr_pattern, %struct.tr_pattern* %115, i32 0, i32 3
  %117 = load %struct.tr_pattern*, %struct.tr_pattern** %116, align 8
  store %struct.tr_pattern* %117, %struct.tr_pattern** %5, align 8
  br label %21

118:                                              ; preds = %21
  %119 = load i64, i64* %10, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load i64, i64* %8, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i64, i64* @MRB_INT_MAX, align 8
  br label %127

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i64 [ %125, %124 ], [ -1, %126 ]
  store i64 %128, i64* %4, align 8
  br label %131

129:                                              ; preds = %118
  %130 = load i64, i64* %8, align 8
  store i64 %130, i64* %4, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = load i64, i64* %4, align 8
  ret i64 %132
}

declare dso_local i32 @mrb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
