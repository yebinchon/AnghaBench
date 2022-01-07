; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_scanhex.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_scanhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@termch = common dso_local global i32 0, align 4
@regnames = common dso_local global i32 0, align 4
@N_PTREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid register name '%%%s'\0A\00", align 1
@xmon_regs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"regs not available\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@tmpstr = common dso_local global i8* null, align 8
@bus_error_jmp = common dso_local global i32 0, align 4
@catch_memory_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown symbol '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scanhex(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %10 = call i32 (...) @skipbl()
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %60

13:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 7
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = call i32 (...) @inchar()
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @isalnum(i32 %20) #4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* @termch, align 4
  br label %34

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %29
  store i8 %27, i8* %30, align 1
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %14

34:                                               ; preds = %23, %14
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* @regnames, align 4
  %39 = load i32, i32* @N_PTREGS, align 4
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %41 = call i32 @match_string(i32 %38, i32 %39, i8* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 0, i32* %2, align 4
  br label %158

47:                                               ; preds = %34
  %48 = load i32*, i32** @xmon_regs, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %158

52:                                               ; preds = %47
  %53 = load i32*, i32** @xmon_regs, align 8
  %54 = bitcast i32* %53 to i64*
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %3, align 8
  store i64 %58, i64* %59, align 8
  store i32 1, i32* %2, align 4
  br label %158

60:                                               ; preds = %1
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 48
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = call i32 (...) @inchar()
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 120
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 (...) @inchar()
  store i32 %68, i32* %4, align 4
  br label %79

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @hexdigit(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @EOF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* @termch, align 4
  %77 = load i64*, i64** %3, align 8
  store i64 0, i64* %77, align 8
  store i32 1, i32* %2, align 4
  br label %158

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %67
  br label %132

80:                                               ; preds = %60
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 36
  br i1 %82, label %83, label %131

83:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 63
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = call i32 (...) @inchar()
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @isspace(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* @termch, align 4
  br label %107

97:                                               ; preds = %92
  %98 = load i32, i32* %4, align 4
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** @tmpstr, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 %99, i8* %103, align 1
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %84

107:                                              ; preds = %95, %84
  %108 = load i8*, i8** @tmpstr, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i64*, i64** %3, align 8
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* @bus_error_jmp, align 4
  %115 = call i64 @setjmp(i32 %114) #5
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  store i32 1, i32* @catch_memory_errors, align 4
  %118 = call i32 (...) @sync()
  %119 = load i8*, i8** @tmpstr, align 8
  %120 = call i64 @kallsyms_lookup_name(i8* %119)
  %121 = load i64*, i64** %3, align 8
  store i64 %120, i64* %121, align 8
  %122 = call i32 (...) @sync()
  br label %123

123:                                              ; preds = %117, %107
  store i32 0, i32* @catch_memory_errors, align 4
  %124 = load i64*, i64** %3, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** @tmpstr, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %128)
  store i32 0, i32* %2, align 4
  br label %158

130:                                              ; preds = %123
  store i32 1, i32* %2, align 4
  br label %158

131:                                              ; preds = %80
  br label %132

132:                                              ; preds = %131, %79
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @hexdigit(i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @EOF, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* @termch, align 4
  store i32 0, i32* %2, align 4
  br label %158

140:                                              ; preds = %132
  store i64 0, i64* %6, align 8
  br label %141

141:                                              ; preds = %150, %140
  %142 = load i64, i64* %6, align 8
  %143 = shl i64 %142, 4
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %143, %145
  store i64 %146, i64* %6, align 8
  %147 = call i32 (...) @inchar()
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @hexdigit(i32 %148)
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @EOF, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %141, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* @termch, align 4
  %156 = load i64, i64* %6, align 8
  %157 = load i64*, i64** %3, align 8
  store i64 %156, i64* %157, align 8
  store i32 1, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %138, %130, %127, %75, %52, %50, %44
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @skipbl(...) #1

declare dso_local i32 @inchar(...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @hexdigit(i32) #1

declare dso_local i64 @isspace(i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #3

declare dso_local i32 @sync(...) #1

declare dso_local i64 @kallsyms_lookup_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
