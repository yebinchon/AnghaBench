; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_generate_source_kernel_filename.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_generate_source_kernel_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPTI_TYPE_OPTIMIZED_KERNEL = common dso_local global i32 0, align 4
@ATTACK_EXEC_INSIDE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s/OpenCL/m%05d_a0-optimized.cl\00", align 1
@ATTACK_KERN_STRAIGHT = common dso_local global i32 0, align 4
@ATTACK_KERN_COMBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s/OpenCL/m%05d_a1-optimized.cl\00", align 1
@ATTACK_KERN_BF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s/OpenCL/m%05d_a3-optimized.cl\00", align 1
@ATTACK_KERN_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s/OpenCL/m%05d-optimized.cl\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s/OpenCL/m%05d_a0-pure.cl\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s/OpenCL/m%05d_a1-pure.cl\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s/OpenCL/m%05d_a3-pure.cl\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s/OpenCL/m%05d-pure.cl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_source_kernel_filename(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %7
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ATTACK_EXEC_INSIDE_KERNEL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %14, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @snprintf(i8* %27, i32 255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  br label %71

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ATTACK_KERN_STRAIGHT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @snprintf(i8* %36, i32 255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  br label %70

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @ATTACK_KERN_COMBI, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @snprintf(i8* %45, i32 255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %47)
  br label %69

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ATTACK_KERN_BF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @snprintf(i8* %54, i32 255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %56)
  br label %68

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @ATTACK_KERN_NONE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @snprintf(i8* %63, i32 255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %44
  br label %70

70:                                               ; preds = %69, %35
  br label %71

71:                                               ; preds = %70, %26
  br label %77

72:                                               ; preds = %19
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @snprintf(i8* %73, i32 255, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %71
  br label %137

78:                                               ; preds = %7
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ATTACK_EXEC_INSIDE_KERNEL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %131

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @snprintf(i8* %86, i32 255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %87, i32 %88)
  br label %130

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ATTACK_KERN_STRAIGHT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @snprintf(i8* %95, i32 255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %96, i32 %97)
  br label %129

99:                                               ; preds = %90
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @ATTACK_KERN_COMBI, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @snprintf(i8* %104, i32 255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %105, i32 %106)
  br label %128

108:                                              ; preds = %99
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @ATTACK_KERN_BF, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i8*, i8** %14, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @snprintf(i8* %113, i32 255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %114, i32 %115)
  br label %127

117:                                              ; preds = %108
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @ATTACK_KERN_NONE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i8*, i8** %14, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @snprintf(i8* %122, i32 255, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %103
  br label %129

129:                                              ; preds = %128, %94
  br label %130

130:                                              ; preds = %129, %85
  br label %136

131:                                              ; preds = %78
  %132 = load i8*, i8** %14, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @snprintf(i8* %132, i32 255, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %130
  br label %137

137:                                              ; preds = %136, %77
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
