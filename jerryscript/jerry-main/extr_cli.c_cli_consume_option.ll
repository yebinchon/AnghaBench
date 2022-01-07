; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_cli.c_cli_consume_option.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_cli.c_cli_consume_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i8*, i8**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32* }

@CLI_OPT_END = common dso_local global i32 0, align 4
@CLI_OPT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unknown long option\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cli_consume_option(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CLI_OPT_END, align 4
  store i32 %12, i32* %2, align 4
  br label %132

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* null, i8** %20, align 8
  %21 = load i32, i32* @CLI_OPT_END, align 4
  store i32 %21, i32* %2, align 4
  br label %132

22:                                               ; preds = %13
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 45
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @CLI_OPT_DEFAULT, align 4
  store i32 %37, i32* %2, align 4
  br label %132

38:                                               ; preds = %22
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 45
  br i1 %43, label %44, label %88

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %46, i8** %4, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %5, align 8
  br label %50

50:                                               ; preds = %81, %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CLI_OPT_DEFAULT, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @strcmp(i8* %62, i32* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %74, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %2, align 4
  br label %132

80:                                               ; preds = %61, %56
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 1
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %5, align 8
  br label %50

84:                                               ; preds = %50
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %86, align 8
  %87 = load i32, i32* @CLI_OPT_END, align 4
  store i32 %87, i32* %2, align 4
  br label %132

88:                                               ; preds = %38
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %6, align 8
  br label %94

94:                                               ; preds = %125, %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CLI_OPT_DEFAULT, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %94
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %124

105:                                              ; preds = %100
  %106 = load i8*, i8** %4, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @strcmp(i8* %106, i32* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, -1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %120, i8*** %118, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %2, align 4
  br label %132

124:                                              ; preds = %105, %100
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 1
  store %struct.TYPE_5__* %127, %struct.TYPE_5__** %6, align 8
  br label %94

128:                                              ; preds = %94
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %130, align 8
  %131 = load i32, i32* @CLI_OPT_END, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %112, %84, %68, %36, %18, %11
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
