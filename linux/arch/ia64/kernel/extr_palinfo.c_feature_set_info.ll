; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_feature_set_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_palinfo.c_feature_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@proc_features = common dso_local global i8*** null, align 8
@.str = private unnamed_addr constant [15 x i8] c"%-40s : %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"On \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"NoCtrl\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Feature set %2ld bit %2d\09\09\09 : %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, i32, i64)* @feature_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feature_set_info(%struct.seq_file* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i8***, i8**** @proc_features, align 8
  %15 = load i64, i64* %10, align 8
  %16 = getelementptr inbounds i8**, i8*** %14, i64 %15
  %17 = load i8**, i8*** %16, align 8
  store i8** %17, i8*** %12, align 8
  store i8** %17, i8*** %11, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %104, %5
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 64
  br i1 %20, label %21, label %113

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %113

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %104

30:                                               ; preds = %25
  %31 = load i8**, i8*** %11, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8**, i8*** %11, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8** %37, i8*** %12, align 8
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i8**, i8*** %12, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load i8**, i8*** %12, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %47 = load i8**, i8*** %12, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  br label %59

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %52
  %60 = phi i8* [ %57, %52 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %58 ]
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  br label %71

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i8* [ %69, %64 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %70 ]
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %60, i8* %72)
  br label %103

74:                                               ; preds = %41, %38
  %75 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  br label %88

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %81
  %89 = phi i8* [ %86, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %87 ]
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  br label %100

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi i8* [ %98, %93 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %99 ]
  %102 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %76, i32 %77, i8* %89, i8* %101)
  br label %103

103:                                              ; preds = %100, %71
  br label %104

104:                                              ; preds = %103, %29
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %7, align 4
  %108 = ashr i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %18

113:                                              ; preds = %24, %18
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
