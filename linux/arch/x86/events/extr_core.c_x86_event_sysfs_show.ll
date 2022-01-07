; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_event_sysfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_event_sysfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCH_PERFMON_EVENTSEL_UMASK = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_CMASK = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_EDGE = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_PIN_CONTROL = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_ANY = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"event=0x%02llx\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c",umask=0x%02llx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c",edge\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",pc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c",any\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c",inv\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c",cmask=0x%02llx\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_event_sysfs_show(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ARCH_PERFMON_EVENTSEL_UMASK, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ARCH_PERFMON_EVENTSEL_CMASK, align 4
  %20 = and i32 %18, %19
  %21 = ashr i32 %20, 24
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ARCH_PERFMON_EVENTSEL_EDGE, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ARCH_PERFMON_EVENTSEL_PIN_CONTROL, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ANY, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INV, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %3
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %39, %3
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %62, %59
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %73, %70
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %84, %81
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %95, %92
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  ret i32 %112
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
