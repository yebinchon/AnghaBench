; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_show_negated_gitcomp.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_show_negated_gitcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i8*, i32 }

@OPTION_END = common dso_local global i32 0, align 4
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" --%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" --no-%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.option*, i32)* @show_negated_gitcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_negated_gitcomp(%struct.option* %0, i32 %1) #0 {
  %3 = alloca %struct.option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %81, %2
  %9 = load %struct.option*, %struct.option** %3, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @OPTION_END, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %84

14:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  %15 = load %struct.option*, %struct.option** %3, align 8
  %16 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %81

20:                                               ; preds = %14
  %21 = load %struct.option*, %struct.option** %3, align 8
  %22 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %25 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %81

30:                                               ; preds = %20
  %31 = load %struct.option*, %struct.option** %3, align 8
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %81

38:                                               ; preds = %30
  %39 = load %struct.option*, %struct.option** %3, align 8
  %40 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %43 [
    i32 128, label %42
    i32 133, label %42
    i32 132, label %42
    i32 131, label %42
    i32 135, label %42
    i32 136, label %42
    i32 130, label %42
    i32 134, label %42
    i32 129, label %42
  ]

42:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38
  store i32 1, i32* %6, align 4
  br label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %81

48:                                               ; preds = %44
  %49 = load %struct.option*, %struct.option** %3, align 8
  %50 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @skip_prefix(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %80

61:                                               ; preds = %48
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %67, %64
  %73 = load %struct.option*, %struct.option** %3, align 8
  %74 = getelementptr inbounds %struct.option, %struct.option* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %61
  br label %80

80:                                               ; preds = %79, %60
  br label %81

81:                                               ; preds = %80, %47, %37, %29, %19
  %82 = load %struct.option*, %struct.option** %3, align 8
  %83 = getelementptr inbounds %struct.option, %struct.option* %82, i32 1
  store %struct.option* %83, %struct.option** %3, align 8
  br label %8

84:                                               ; preds = %8
  ret void
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
