; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fill_es_indent_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fill_es_indent_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emitted_diff_symbol = type { i32, i8*, i32, i32, i32 }

@WS_TAB_WIDTH_MASK = common dso_local global i32 0, align 4
@INDENT_BLANKLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emitted_diff_symbol*)* @fill_es_indent_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_es_indent_data(%struct.emitted_diff_symbol* %0) #0 {
  %2 = alloca %struct.emitted_diff_symbol*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.emitted_diff_symbol* %0, %struct.emitted_diff_symbol** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %2, align 8
  %10 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WS_TAB_WIDTH_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %2, align 8
  %15 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %2, align 8
  %18 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %53, %1
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 12
  br i1 %27, label %51, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 11
  br i1 %35, label %51, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp ult i32 %45, %47
  br label %49

49:                                               ; preds = %44, %36
  %50 = phi i1 [ false, %36 ], [ %48, %44 ]
  br label %51

51:                                               ; preds = %49, %28, %20
  %52 = phi i1 [ true, %28 ], [ true, %20 ], [ %50, %49 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %20

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %102
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %3, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %102

70:                                               ; preds = %57
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %3, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %78, label %100

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = srem i32 %80, %81
  %83 = sub nsw i32 %79, %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %95, %78
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %3, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %3, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 9
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %86

99:                                               ; preds = %86
  br label %101

100:                                              ; preds = %70
  br label %103

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %65
  br label %57

103:                                              ; preds = %100
  %104 = load i32, i32* %3, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %119, %103
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @isspace(i8 signext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  br label %122

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %4, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %105

122:                                              ; preds = %117, %105
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i32, i32* @INDENT_BLANKLINE, align 4
  %128 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %2, align 8
  %129 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %2, align 8
  %132 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  br label %140

133:                                              ; preds = %122
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %2, align 8
  %136 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.emitted_diff_symbol*, %struct.emitted_diff_symbol** %2, align 8
  %139 = getelementptr inbounds %struct.emitted_diff_symbol, %struct.emitted_diff_symbol* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %133, %126
  ret void
}

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
