; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_usage_argh.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_usage_argh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i8*, i64 }

@PARSE_OPT_LITERAL_ARGHELP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"()<>[]|\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[=%s]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[=<%s>]\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[<%s>]\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i32*)* @usage_argh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_argh(%struct.option* %0, i32* %1) #0 {
  %3 = alloca %struct.option*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.option*, %struct.option** %3, align 8
  %8 = getelementptr inbounds %struct.option, %struct.option* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PARSE_OPT_LITERAL_ARGHELP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load %struct.option*, %struct.option** %3, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.option*, %struct.option** %3, align 8
  %20 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strpbrk(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %18, %13, %2
  %27 = phi i1 [ true, %13 ], [ true, %2 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.option*, %struct.option** %3, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %26
  %36 = load %struct.option*, %struct.option** %3, align 8
  %37 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  store i8* %44, i8** %5, align 8
  br label %50

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %45, %40
  br label %56

51:                                               ; preds = %26
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %51, %50
  %57 = load i32*, i32** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.option*, %struct.option** %3, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.option*, %struct.option** %3, align 8
  %65 = getelementptr inbounds %struct.option, %struct.option* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @_(i8* %66)
  br label %70

68:                                               ; preds = %56
  %69 = call i32 @_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi i32 [ %67, %63 ], [ %69, %68 ]
  %72 = call i32 @utf8_fprintf(i32* %57, i8* %58, i32 %71)
  ret i32 %72
}

declare dso_local i32 @strpbrk(i8*, i8*) #1

declare dso_local i32 @utf8_fprintf(i32*, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
