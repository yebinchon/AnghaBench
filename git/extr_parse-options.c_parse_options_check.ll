; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_parse_options_check.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_parse_options_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i32, i32, i64, i32, i32, i64 }

@OPTION_END = common dso_local global i32 0, align 4
@PARSE_OPT_LASTARG_DEFAULT = common dso_local global i32 0, align 4
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"uses incompatible flags LASTARG_DEFAULT and OPTARG\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid short name\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"short name already used\00", align 1
@PARSE_OPT_NODASH = common dso_local global i32 0, align 4
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"uses feature not supported for dashless options\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"should not accept an argument\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"OPTION_CALLBACK needs one callback\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"OPTION_CALLBACK can't have two callbacks\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"OPTION_LOWLEVEL_CALLBACK needs a callback\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"OPTION_LOWLEVEL_CALLBACK needs no high level callback\00", align 1
@.str.9 = private unnamed_addr constant [122 x i8] c"OPT_ALIAS() should not remain at this point. Are you using parse_options_step() directly?\0AThat case is not supported yet.\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" _\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"multi-word argh should use dash to separate words\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.option*)* @parse_options_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options_check(%struct.option* %0) #0 {
  %2 = alloca %struct.option*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  store %struct.option* %0, %struct.option** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %6 = call i32 @memset(i8* %5, i8 signext 0, i32 128)
  br label %7

7:                                                ; preds = %189, %1
  %8 = load %struct.option*, %struct.option** %2, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @OPTION_END, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %192

13:                                               ; preds = %7
  %14 = load %struct.option*, %struct.option** %2, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PARSE_OPT_LASTARG_DEFAULT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.option*, %struct.option** %2, align 8
  %22 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.option*, %struct.option** %2, align 8
  %29 = call i32 @optbug(%struct.option* %28, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %20, %13
  %33 = load %struct.option*, %struct.option** %2, align 8
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load %struct.option*, %struct.option** %2, align 8
  %39 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 127, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.option*, %struct.option** %2, align 8
  %44 = call i32 @optbug(%struct.option* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %62

47:                                               ; preds = %37
  %48 = load %struct.option*, %struct.option** %2, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = add i8 %53, 1
  store i8 %54, i8* %52, align 1
  %55 = icmp ne i8 %53, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.option*, %struct.option** %2, align 8
  %58 = call i32 @optbug(%struct.option* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %47
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %32
  %64 = load %struct.option*, %struct.option** %2, align 8
  %65 = getelementptr inbounds %struct.option, %struct.option* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PARSE_OPT_NODASH, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = load %struct.option*, %struct.option** %2, align 8
  %72 = getelementptr inbounds %struct.option, %struct.option* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %70
  %78 = load %struct.option*, %struct.option** %2, align 8
  %79 = getelementptr inbounds %struct.option, %struct.option* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %77
  %85 = load %struct.option*, %struct.option** %2, align 8
  %86 = getelementptr inbounds %struct.option, %struct.option* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.option*, %struct.option** %2, align 8
  %93 = getelementptr inbounds %struct.option, %struct.option* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91, %84, %77, %70
  %97 = load %struct.option*, %struct.option** %2, align 8
  %98 = call i32 @optbug(%struct.option* %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %96, %91, %63
  %102 = load %struct.option*, %struct.option** %2, align 8
  %103 = getelementptr inbounds %struct.option, %struct.option* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %167 [
    i32 132, label %105
    i32 134, label %105
    i32 130, label %105
    i32 128, label %105
    i32 129, label %105
    i32 133, label %125
    i32 131, label %150
    i32 135, label %165
  ]

105:                                              ; preds = %101, %101, %101, %101, %101
  %106 = load %struct.option*, %struct.option** %2, align 8
  %107 = getelementptr inbounds %struct.option, %struct.option* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %105
  %113 = load %struct.option*, %struct.option** %2, align 8
  %114 = getelementptr inbounds %struct.option, %struct.option* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %112, %105
  %120 = load %struct.option*, %struct.option** %2, align 8
  %121 = call i32 @optbug(%struct.option* %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %112
  br label %168

125:                                              ; preds = %101
  %126 = load %struct.option*, %struct.option** %2, align 8
  %127 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = load %struct.option*, %struct.option** %2, align 8
  %132 = getelementptr inbounds %struct.option, %struct.option* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = call i32 @BUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %130, %125
  %138 = load %struct.option*, %struct.option** %2, align 8
  %139 = getelementptr inbounds %struct.option, %struct.option* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.option*, %struct.option** %2, align 8
  %144 = getelementptr inbounds %struct.option, %struct.option* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 @BUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %142, %137
  br label %168

150:                                              ; preds = %101
  %151 = load %struct.option*, %struct.option** %2, align 8
  %152 = getelementptr inbounds %struct.option, %struct.option* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  %156 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %150
  %158 = load %struct.option*, %struct.option** %2, align 8
  %159 = getelementptr inbounds %struct.option, %struct.option* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = call i32 @BUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %157
  br label %168

165:                                              ; preds = %101
  %166 = call i32 @BUG(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.9, i64 0, i64 0))
  br label %167

167:                                              ; preds = %101, %165
  br label %168

168:                                              ; preds = %167, %164, %149, %124
  %169 = load %struct.option*, %struct.option** %2, align 8
  %170 = getelementptr inbounds %struct.option, %struct.option* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %168
  %174 = load %struct.option*, %struct.option** %2, align 8
  %175 = getelementptr inbounds %struct.option, %struct.option* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @strcspn(i64 %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %178 = load %struct.option*, %struct.option** %2, align 8
  %179 = getelementptr inbounds %struct.option, %struct.option* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @strlen(i64 %180)
  %182 = icmp ne i64 %177, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %173
  %184 = load %struct.option*, %struct.option** %2, align 8
  %185 = call i32 @optbug(%struct.option* %184, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %186 = load i32, i32* %3, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %183, %173, %168
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.option*, %struct.option** %2, align 8
  %191 = getelementptr inbounds %struct.option, %struct.option* %190, i32 1
  store %struct.option* %191, %struct.option** %2, align 8
  br label %7

192:                                              ; preds = %7
  %193 = load i32, i32* %3, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = call i32 @exit(i32 128) #3
  unreachable

197:                                              ; preds = %192
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @optbug(%struct.option*, i8*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @strcspn(i64, i8*) #1

declare dso_local i64 @strlen(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
