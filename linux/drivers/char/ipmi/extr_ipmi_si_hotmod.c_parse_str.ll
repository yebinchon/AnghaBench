; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_hotmod.c_parse_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_hotmod.c_parse_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotmod_vals = type { i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"No hotmod %s given\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid hotmod %s '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotmod_vals*, i32*, i8*, i8**)* @parse_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_str(%struct.hotmod_vals* %0, i32* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hotmod_vals*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hotmod_vals* %0, %struct.hotmod_vals** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 44)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %66

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %56, %22
  %27 = load %struct.hotmod_vals*, %struct.hotmod_vals** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hotmod_vals, %struct.hotmod_vals* %27, i64 %29
  %31 = getelementptr inbounds %struct.hotmod_vals, %struct.hotmod_vals* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  %35 = load i8**, i8*** %9, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.hotmod_vals*, %struct.hotmod_vals** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hotmod_vals, %struct.hotmod_vals* %37, i64 %39
  %41 = getelementptr inbounds %struct.hotmod_vals, %struct.hotmod_vals* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @strcmp(i8* %36, i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load %struct.hotmod_vals*, %struct.hotmod_vals** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.hotmod_vals, %struct.hotmod_vals* %46, i64 %48
  %50 = getelementptr inbounds %struct.hotmod_vals, %struct.hotmod_vals* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load i8**, i8*** %9, align 8
  store i8* %53, i8** %54, align 8
  store i32 0, i32* %5, align 4
  br label %66

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load i8*, i8** %8, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %45, %17
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_warn(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
