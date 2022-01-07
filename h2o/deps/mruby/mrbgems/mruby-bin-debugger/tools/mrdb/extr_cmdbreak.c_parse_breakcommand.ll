; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_parse_breakcommand.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdbreak.c_parse_breakcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64 }

@BREAK_ERR_MSG_BLANK = common dso_local global i32 0, align 4
@BREAK_ERR_MSG_INVALIDSTR = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_RANGEOVER = common dso_local global i32 0, align 4
@BREAK_ERR_MSG_INVALIDMETHOD = common dso_local global i8* null, align 8
@BREAK_ERR_MSG_INVALIDCLASS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_breakcommand(%struct.TYPE_5__* %0, i8** %1, i32* %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %12, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @BREAK_ERR_MSG_BLANK, align 4
  %26 = call i32 @puts(i32 %25)
  store i32 128, i32* %6, align 4
  br label %147

27:                                               ; preds = %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i8* @strrchr(i8* %33, i8 signext 58)
  store i8* %34, i8** %14, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i8*, i8** %13, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @check_bptype(i8* %38)
  store i32 %39, i32* %15, align 4
  br label %53

40:                                               ; preds = %27
  %41 = load i8*, i8** %14, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** @BREAK_ERR_MSG_INVALIDSTR, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @printf(i8* %45, i8* %46)
  store i32 128, i32* %6, align 4
  br label %147

48:                                               ; preds = %40
  %49 = load i8*, i8** %14, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %14, align 8
  %52 = call i32 @check_bptype(i8* %51)
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %48, %36
  %54 = load i32, i32* %15, align 4
  switch i32 %54, label %144 [
    i32 130, label %55
    i32 129, label %90
    i32 128, label %143
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* %16, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @STRTOUL(i32 %56, i8* %57)
  %59 = load i32, i32* %16, align 4
  %60 = icmp sle i32 %59, 65535
  br i1 %60, label %61, label %86

61:                                               ; preds = %55
  %62 = load i32, i32* %16, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %73, %78
  %80 = call i8* @mrb_debug_get_filename(%struct.TYPE_7__* %70, i64 %79)
  br label %83

81:                                               ; preds = %61
  %82 = load i8*, i8** %13, align 8
  br label %83

83:                                               ; preds = %81, %67
  %84 = phi i8* [ %80, %67 ], [ %82, %81 ]
  %85 = load i8**, i8*** %8, align 8
  store i8* %84, i8** %85, align 8
  br label %89

86:                                               ; preds = %55
  %87 = load i32, i32* @BREAK_ERR_MSG_RANGEOVER, align 4
  %88 = call i32 @puts(i32 %87)
  store i32 128, i32* %15, align 4
  br label %89

89:                                               ; preds = %86, %83
  br label %145

90:                                               ; preds = %53
  %91 = load i8*, i8** %14, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @ISUPPER(i8 signext %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %14, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @ISLOWER(i8 signext %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %14, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 95
  br i1 %108, label %109, label %113

109:                                              ; preds = %104, %99, %94
  %110 = load i8*, i8** %14, align 8
  %111 = load i8**, i8*** %11, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i8**, i8*** %10, align 8
  store i8* null, i8** %112, align 8
  br label %117

113:                                              ; preds = %104
  %114 = load i8*, i8** @BREAK_ERR_MSG_INVALIDMETHOD, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @printf(i8* %114, i8* %115)
  store i32 128, i32* %15, align 4
  br label %117

117:                                              ; preds = %113, %109
  br label %142

118:                                              ; preds = %90
  %119 = load i8*, i8** %13, align 8
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @ISUPPER(i8 signext %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load i8*, i8** %14, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  switch i32 %126, label %131 [
    i32 64, label %127
    i32 36, label %127
    i32 63, label %127
    i32 46, label %127
    i32 44, label %127
    i32 58, label %127
    i32 59, label %127
    i32 35, label %127
    i32 92, label %127
    i32 39, label %127
    i32 34, label %127
  ]

127:                                              ; preds = %123, %123, %123, %123, %123, %123, %123, %123, %123, %123, %123
  %128 = load i8*, i8** @BREAK_ERR_MSG_INVALIDMETHOD, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 @printf(i8* %128, i8* %129)
  store i32 128, i32* %15, align 4
  br label %136

131:                                              ; preds = %123
  %132 = load i8*, i8** %14, align 8
  %133 = load i8**, i8*** %11, align 8
  store i8* %132, i8** %133, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = load i8**, i8*** %10, align 8
  store i8* %134, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %127
  br label %141

137:                                              ; preds = %118
  %138 = load i8*, i8** @BREAK_ERR_MSG_INVALIDCLASS, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = call i32 @printf(i8* %138, i8* %139)
  store i32 128, i32* %15, align 4
  br label %141

141:                                              ; preds = %137, %136
  br label %142

142:                                              ; preds = %141, %117
  br label %145

143:                                              ; preds = %53
  br label %144

144:                                              ; preds = %53, %143
  br label %145

145:                                              ; preds = %144, %142, %89
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %44, %24
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @puts(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @check_bptype(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @STRTOUL(i32, i8*) #1

declare dso_local i8* @mrb_debug_get_filename(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @ISUPPER(i8 signext) #1

declare dso_local i32 @ISLOWER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
