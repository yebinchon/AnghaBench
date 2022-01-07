; ModuleID = '/home/carl/AnghaBench/git/extr_ws.c_parse_whitespace_rule.c'
source_filename = "/home/carl/AnghaBench/git/extr_ws.c_parse_whitespace_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@WS_DEFAULT_RULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c", \09\0A\0D\00", align 1
@whitespace_rule_names = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"tabwidth=\00", align 1
@WS_TAB_WIDTH_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"tabwidth %.*s out of range\00", align 1
@WS_TAB_IN_INDENT = common dso_local global i32 0, align 4
@WS_INDENT_WITH_NON_TAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"cannot enforce both tab-in-indent and indent-with-non-tab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_whitespace_rule(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @WS_DEFAULT_RULE, align 4
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %113, %1
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %115

13:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strspn(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8* %18, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @strchrnul(i8* %19, i8 signext 44)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  store i64 %25, i64* %5, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %35

30:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %2, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %30, %13
  %36 = load i64, i64* %5, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %115

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %81, %39
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @whitespace_rule_names, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @whitespace_rule_names, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 @strncmp(i8* %51, i8* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %81

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @whitespace_rule_names, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %80

71:                                               ; preds = %58
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @whitespace_rule_names, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %71, %61
  br label %84

81:                                               ; preds = %57
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %40

84:                                               ; preds = %80, %40
  %85 = load i8*, i8** %2, align 8
  %86 = call i64 @strncmp(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %84
  %89 = load i8*, i8** %2, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 9
  %91 = call i32 @atoi(i8* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ult i32 0, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = icmp ult i32 %95, 64
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* @WS_TAB_WIDTH_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %3, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  br label %112

105:                                              ; preds = %94, %88
  %106 = load i64, i64* %5, align 8
  %107 = sub i64 %106, 9
  %108 = trunc i64 %107 to i32
  %109 = load i8*, i8** %2, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 9
  %111 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %108, i8* %110)
  br label %112

112:                                              ; preds = %105, %97
  br label %113

113:                                              ; preds = %112, %84
  %114 = load i8*, i8** %6, align 8
  store i8* %114, i8** %2, align 8
  br label %10

115:                                              ; preds = %38, %10
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @WS_TAB_IN_INDENT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @WS_INDENT_WITH_NON_TAB, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = call i32 @die(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %120, %115
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @warning(i8*, i32, i8*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
