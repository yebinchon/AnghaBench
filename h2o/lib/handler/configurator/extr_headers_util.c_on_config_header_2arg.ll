; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers_util.c_on_config_header_2arg.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_headers_util.c_on_config_header_2arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"failed to parse the value; should be in form of `name: value`\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_15__*, i32**)* @on_config_header_2arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_header_2arg(i32* %0, i32* %1, i32 %2, %struct.TYPE_15__* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca %struct.TYPE_15__**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32** %4, i32*** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @parse_header_node(i32* %19, %struct.TYPE_15__** %10, %struct.TYPE_15__*** %14, i64* %15, i32* %16)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %74

23:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %70, %23
  %25 = load i32, i32* %17, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %15, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %30, i64 %32
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %18, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @extract_name_value(i32 %38, %struct.TYPE_16__** %12, %struct.TYPE_16__* %13)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %44 = call i32 @h2o_configurator_errprintf(i32* %42, %struct.TYPE_15__* %43, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %74

45:                                               ; preds = %29
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load i32**, i32*** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @add_cmd(i32* %46, %struct.TYPE_15__* %47, i32 %48, %struct.TYPE_16__* %49, i32 %53, i32 %50, i32** %51)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %45
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = call i32 @h2o_iovec_is_token(%struct.TYPE_16__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @free(i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @free(i32 %67)
  store i32 -1, i32* %6, align 4
  br label %74

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %24

73:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %65, %41, %22
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @parse_header_node(i32*, %struct.TYPE_15__**, %struct.TYPE_15__***, i64*, i32*) #1

declare dso_local i64 @extract_name_value(i32, %struct.TYPE_16__**, %struct.TYPE_16__*) #1

declare dso_local i32 @h2o_configurator_errprintf(i32*, %struct.TYPE_15__*, i8*) #1

declare dso_local i64 @add_cmd(i32*, %struct.TYPE_15__*, i32, %struct.TYPE_16__*, i32, i32, i32**) #1

declare dso_local i32 @h2o_iovec_is_token(%struct.TYPE_16__*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
