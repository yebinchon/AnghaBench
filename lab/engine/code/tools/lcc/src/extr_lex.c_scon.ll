; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_lex.c_scon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_lex.c_scon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = common dso_local global i32* null, align 8
@map = common dso_local global i32* null, align 8
@NEWLINE = common dso_local global i32 0, align 4
@limit = common dso_local global i32* null, align 8
@MAXTOKEN = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"missing %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s literal too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@Aflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"more than 509 characters in a string literal\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s literal contains non-portable characters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8* (i32, i8*)*, i8*)* @scon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scon(i32 %0, i8* (i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8* (i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* (i32, i8*)* %1, i8* (i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %129, %3
  %11 = load i32*, i32** @cp, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** @cp, align 8
  br label %13

13:                                               ; preds = %109, %41, %10
  %14 = load i32*, i32** @cp, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %110

18:                                               ; preds = %13
  %19 = load i32*, i32** @map, align 8
  %20 = load i32*, i32** @cp, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NEWLINE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load i32*, i32** @cp, align 8
  %30 = load i32*, i32** @limit, align 8
  %31 = icmp ult i32* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %110

33:                                               ; preds = %28
  %34 = load i32*, i32** @cp, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** @cp, align 8
  %36 = call i32 (...) @nextline()
  %37 = load i32*, i32** @cp, align 8
  %38 = load i32*, i32** @limit, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %110

41:                                               ; preds = %33
  br label %13

42:                                               ; preds = %18
  %43 = load i32*, i32** @cp, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** @cp, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 92
  br i1 %47, label %48, label %82

48:                                               ; preds = %42
  %49 = load i32*, i32** @map, align 8
  %50 = load i32*, i32** @cp, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NEWLINE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load i32*, i32** @cp, align 8
  %60 = load i32*, i32** @limit, align 8
  %61 = icmp ult i32* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %110

63:                                               ; preds = %58
  %64 = load i32*, i32** @cp, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** @cp, align 8
  %66 = call i32 (...) @nextline()
  br label %67

67:                                               ; preds = %63, %48
  %68 = load i32*, i32** @limit, align 8
  %69 = load i32*, i32** @cp, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = load i32, i32* @MAXTOKEN, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = call i32 (...) @fillbuf()
  br label %79

79:                                               ; preds = %77, %67
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @backslash(i32 %80)
  store i32 %81, i32* %9, align 4
  br label %99

82:                                               ; preds = %42
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp sgt i32 %86, 255
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** @map, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88, %85, %82
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %79
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @BUFSIZE, align 4
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i8* (i32, i8*)*, i8* (i32, i8*)** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* %105(i32 %106, i8* %107)
  store i8* %108, i8** %6, align 8
  br label %109

109:                                              ; preds = %104, %99
  br label %13

110:                                              ; preds = %62, %40, %32, %13
  %111 = load i32*, i32** @cp, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32*, i32** @cp, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** @cp, align 8
  br label %121

118:                                              ; preds = %110
  %119 = load i32, i32* %4, align 4
  %120 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, 34
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = call signext i8 (...) @getchr()
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 34
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi i1 [ false, %122 ], [ %128, %125 ]
  br i1 %130, label %10, label %131

131:                                              ; preds = %129
  %132 = load i8* (i32, i8*)*, i8* (i32, i8*)** %5, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = call i8* %132(i32 0, i8* %133)
  store i8* %134, i8** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @BUFSIZE, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* %4, align 4
  %140 = icmp eq i32 %139, 34
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %143 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %138, %131
  %145 = load i32, i32* @Aflag, align 4
  %146 = icmp sge i32 %145, 2
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i32, i32* %4, align 4
  %149 = icmp eq i32 %148, 34
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = icmp sgt i32 %151, 509
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %150, %147, %144
  %156 = load i32, i32* @Aflag, align 4
  %157 = icmp sge i32 %156, 2
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32, i32* %4, align 4
  %163 = icmp eq i32 %162, 34
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %166 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %161, %158, %155
  %168 = load i8*, i8** %6, align 8
  ret i8* %168
}

declare dso_local i32 @nextline(...) #1

declare dso_local i32 @fillbuf(...) #1

declare dso_local i32 @backslash(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local signext i8 @getchr(...) #1

declare dso_local i32 @warning(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
