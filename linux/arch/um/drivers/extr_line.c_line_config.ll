; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32 }
%struct.chan_opts = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Can't configure all devices from mconsole\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't parse device number\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Device number out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_config(%struct.line* %0, i32 %1, i8* %2, %struct.chan_opts* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.chan_opts*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.chan_opts* %3, %struct.chan_opts** %10, align 8
  store i8** %4, i8*** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 61
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %49

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @simple_strtoul(i8* %23, i8** %12, i32 0)
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 61
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %49

34:                                               ; preds = %22
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %39, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %49

42:                                               ; preds = %34
  %43 = load %struct.line*, %struct.line** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.chan_opts*, %struct.chan_opts** %10, align 8
  %47 = load i8**, i8*** %11, align 8
  %48 = call i32 @setup_one_line(%struct.line* %43, i32 %44, i8* %45, %struct.chan_opts* %46, i8** %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %38, %30, %18
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @setup_one_line(%struct.line*, i32, i8*, %struct.chan_opts*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
