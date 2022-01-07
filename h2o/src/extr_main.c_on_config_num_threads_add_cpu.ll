; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_on_config_num_threads_add_cpu.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_on_config_num_threads_add_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"CPUs in cpu sequence must be a scalar\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%u%n\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%u-%u%n\00", align 1
@conf = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [106 x i8] c"Invalid CPU number: CPUs must be specified as a non-negative number or as a range of non-negative numbers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*)* @on_config_num_threads_add_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_num_threads_add_cpu(i32* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = call i32 @h2o_configurator_errprintf(i32* %19, %struct.TYPE_8__* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %81

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32* @index(i8* %27, i8 signext 45)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %12)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %30
  br label %77

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %10, align 4
  br label %58

42:                                               ; preds = %22
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %9, i32* %10, i32* %12)
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %42
  br label %77

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %77

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %73, %58
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ule i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conf, i32 0, i32 0, i32 1), align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conf, i32 0, i32 0), i64 %66)
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conf, i32 0, i32 0, i32 0), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conf, i32 0, i32 0, i32 1), align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @conf, i32 0, i32 0, i32 1), align 8
  %72 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %60

76:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %81

77:                                               ; preds = %56, %51, %39
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = call i32 @h2o_configurator_errprintf(i32* %78, %struct.TYPE_8__* %79, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %76, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_8__*, i8*) #1

declare dso_local i32* @index(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
