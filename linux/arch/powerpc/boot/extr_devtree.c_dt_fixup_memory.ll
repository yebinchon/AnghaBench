; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_devtree.c_dt_fixup_memory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_devtree.c_dt_fixup_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Can't cope with #address-cells == %d in /\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Can't cope with #size-cells == %d in /\0A\0D\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Memory <- <0x%x\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"> (%ldMB)\0A\0D\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_fixup_memory(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = call i8* @finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @getprop(i8* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32 4)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @getprop(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %8, i32 4)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  store i32 0, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 32
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  %59 = ashr i32 %58, 32
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %49
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = call i8* @finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %64
  %74 = call i8* @create_node(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @setprop_str(i8* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %64
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = sext i32 %79 to i64
  %81 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 %80)
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %95, %77
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %82

98:                                               ; preds = %82
  %99 = load i32, i32* %4, align 4
  %100 = ashr i32 %99, 20
  %101 = sext i32 %100 to i64
  %102 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %101)
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @setprop(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32* %104, i32 %110)
  ret void
}

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i64 @getprop(i8*, i8*, i32*, i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i8* @create_node(i32*, i8*) #1

declare dso_local i32 @setprop_str(i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
