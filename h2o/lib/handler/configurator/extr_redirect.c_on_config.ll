; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_redirect.c_on_config.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_redirect.c_on_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"url:s,status:*\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"internal:*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"value of property `status` should be within 300 to 399\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"YES,NO\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"value must be a string or a mapping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, %struct.TYPE_14__*)* @on_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__**, align 8
  %12 = alloca %struct.TYPE_14__**, align 8
  %13 = alloca %struct.TYPE_14__**, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i32 302, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %64 [
    i32 128, label %17
    i32 129, label %22
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  br label %68

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = call i32 @h2o_configurator_parse_mapping(i32* %23, %struct.TYPE_14__* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__*** %11, %struct.TYPE_14__*** %12, %struct.TYPE_14__*** %13)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %76

28:                                               ; preds = %22
  %29 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = call i32 @h2o_configurator_scanf(i32* %34, %struct.TYPE_14__* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %76

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = icmp sle i32 300, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %44, 399
  br i1 %45, label %51, label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = call i32 @h2o_configurator_errprintf(i32* %47, %struct.TYPE_14__* %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %76

51:                                               ; preds = %43
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %53 = icmp ne %struct.TYPE_14__** %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = call i32 @h2o_configurator_get_one_of(i32* %55, %struct.TYPE_14__* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  switch i32 %58, label %61 [
    i32 0, label %59
    i32 1, label %60
  ]

59:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %62

60:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %62

61:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %76

62:                                               ; preds = %60, %59
  br label %63

63:                                               ; preds = %62, %51
  br label %68

64:                                               ; preds = %3
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = call i32 @h2o_configurator_errprintf(i32* %65, %struct.TYPE_14__* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %76

68:                                               ; preds = %63, %17
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @h2o_redirect_register(i32 %71, i32 %72, i32 %73, i8* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %68, %64, %61, %46, %39, %27
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @h2o_configurator_parse_mapping(i32*, %struct.TYPE_14__*, i8*, i8*, %struct.TYPE_14__***, %struct.TYPE_14__***, %struct.TYPE_14__***) #1

declare dso_local i32 @h2o_configurator_scanf(i32*, %struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @h2o_configurator_get_one_of(i32*, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @h2o_redirect_register(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
