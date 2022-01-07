; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_generate_cached_kernel_filename.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_generate_cached_kernel_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPTI_TYPE_OPTIMIZED_KERNEL = common dso_local global i32 0, align 4
@ATTACK_EXEC_INSIDE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s/kernels/m%05d_a0-optimized.%s.kernel\00", align 1
@ATTACK_KERN_STRAIGHT = common dso_local global i32 0, align 4
@ATTACK_KERN_COMBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s/kernels/m%05d_a1-optimized.%s.kernel\00", align 1
@ATTACK_KERN_BF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%s/kernels/m%05d_a3-optimized.%s.kernel\00", align 1
@ATTACK_KERN_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"%s/kernels/m%05d-optimized.%s.kernel\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s/kernels/m%05d_a0-pure.%s.kernel\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s/kernels/m%05d_a1-pure.%s.kernel\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s/kernels/m%05d_a3-pure.%s.kernel\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s/kernels/m%05d-pure.%s.kernel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_cached_kernel_filename(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @ATTACK_EXEC_INSIDE_KERNEL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i8*, i8** %16, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 @snprintf(i8* %29, i32 255, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i8* %32)
  br label %78

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ATTACK_KERN_STRAIGHT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8*, i8** %16, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @snprintf(i8* %39, i32 255, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41, i8* %42)
  br label %77

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @ATTACK_KERN_COMBI, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** %16, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @snprintf(i8* %49, i32 255, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %51, i8* %52)
  br label %76

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @ATTACK_KERN_BF, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i8*, i8** %16, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @snprintf(i8* %59, i32 255, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %60, i32 %61, i8* %62)
  br label %75

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ATTACK_KERN_NONE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %15, align 8
  %73 = call i32 @snprintf(i8* %69, i32 255, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %68, %64
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %48
  br label %77

77:                                               ; preds = %76, %38
  br label %78

78:                                               ; preds = %77, %28
  br label %85

79:                                               ; preds = %21
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @snprintf(i8* %80, i32 255, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %81, i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %79, %78
  br label %151

86:                                               ; preds = %8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @ATTACK_EXEC_INSIDE_KERNEL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %144

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i8*, i8** %15, align 8
  %98 = call i32 @snprintf(i8* %94, i32 255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %95, i32 %96, i8* %97)
  br label %143

99:                                               ; preds = %90
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @ATTACK_KERN_STRAIGHT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i8*, i8** %16, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = call i32 @snprintf(i8* %104, i32 255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %105, i32 %106, i8* %107)
  br label %142

109:                                              ; preds = %99
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @ATTACK_KERN_COMBI, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i8*, i8** %16, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i8*, i8** %15, align 8
  %118 = call i32 @snprintf(i8* %114, i32 255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %115, i32 %116, i8* %117)
  br label %141

119:                                              ; preds = %109
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @ATTACK_KERN_BF, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i8*, i8** %16, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i8*, i8** %15, align 8
  %128 = call i32 @snprintf(i8* %124, i32 255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %125, i32 %126, i8* %127)
  br label %140

129:                                              ; preds = %119
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @ATTACK_KERN_NONE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i8*, i8** %16, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @snprintf(i8* %134, i32 255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %135, i32 %136, i8* %137)
  br label %139

139:                                              ; preds = %133, %129
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %140, %113
  br label %142

142:                                              ; preds = %141, %103
  br label %143

143:                                              ; preds = %142, %93
  br label %150

144:                                              ; preds = %86
  %145 = load i8*, i8** %16, align 8
  %146 = load i8*, i8** %14, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i8*, i8** %15, align 8
  %149 = call i32 @snprintf(i8* %145, i32 255, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %146, i32 %147, i8* %148)
  br label %150

150:                                              ; preds = %144, %143
  br label %151

151:                                              ; preds = %150, %85
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
