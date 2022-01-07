; ModuleID = '/home/carl/AnghaBench/linux/block/extr_cmdline-parser.c_cmdline_parts_parse.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_cmdline-parser.c_cmdline_parts_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_parts = type { %struct.cmdline_parts* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cmdline partition has no valid partition.\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdline_parts_parse(%struct.cmdline_parts** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmdline_parts**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cmdline_parts**, align 8
  store %struct.cmdline_parts** %0, %struct.cmdline_parts*** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %4, align 8
  store %struct.cmdline_parts* null, %struct.cmdline_parts** %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kstrdup(i8* %12, i32 %13)
  store i8* %14, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %4, align 8
  store %struct.cmdline_parts** %21, %struct.cmdline_parts*** %10, align 8
  br label %22

22:                                               ; preds = %52, %20
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 59)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %10, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @parse_parts(%struct.cmdline_parts** %40, i8* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %69

46:                                               ; preds = %39
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %10, align 8
  %54 = load %struct.cmdline_parts*, %struct.cmdline_parts** %53, align 8
  %55 = getelementptr inbounds %struct.cmdline_parts, %struct.cmdline_parts* %54, i32 0, i32 0
  store %struct.cmdline_parts** %55, %struct.cmdline_parts*** %10, align 8
  br label %22

56:                                               ; preds = %30
  %57 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %4, align 8
  %58 = load %struct.cmdline_parts*, %struct.cmdline_parts** %57, align 8
  %59 = icmp ne %struct.cmdline_parts* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %69

64:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %72

69:                                               ; preds = %60, %45
  %70 = load %struct.cmdline_parts**, %struct.cmdline_parts*** %4, align 8
  %71 = call i32 @cmdline_parts_free(%struct.cmdline_parts** %70)
  br label %65

72:                                               ; preds = %65, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_parts(%struct.cmdline_parts**, i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cmdline_parts_free(%struct.cmdline_parts**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
