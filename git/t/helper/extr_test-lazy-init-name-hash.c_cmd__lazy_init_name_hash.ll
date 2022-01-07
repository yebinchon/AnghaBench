; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-lazy-init-name-hash.c_cmd__lazy_init_name_hash.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-lazy-init-name-hash.c_cmd__lazy_init_name_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"test-tool lazy-init-name-hash -d (-s | -m)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"test-tool lazy-init-name-hash -p [-c c]\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"test-tool lazy-init-name-hash -a a [--step s] [-c c]\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"test-tool lazy-init-name-hash (-s | -m) [-c c]\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"test-tool lazy-init-name-hash -s -m [-c c]\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@single = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"run single-threaded code\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@multi = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"run multi-threaded code\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@count = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"number of passes\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@dump = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"dump hash tables\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@perf = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"compare single vs multi\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"analyze\00", align 1
@analyze = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"analyze different multi sizes\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@analyze_step = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"analyze step factor\00", align 1
@ignore_case = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"cannot combine dump, perf, or analyze\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"count not valid with dump\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"cannot use both single and multi with dump\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"dump requires either single or multi\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"cannot use single or multi with perf\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"multi is slower\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"analyze must be at least 500\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"cannot use single or multi with analyze\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"require either -s or -m or both\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__lazy_init_name_hash(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [6 x i8*], align 16
  %7 = alloca [8 x %struct.option], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast [6 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 48, i1 false)
  %12 = bitcast i8* %11 to [6 x i8*]*
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i8** %14, align 8
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 3
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %12, i32 0, i32 4
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [8 x %struct.option], [8 x %struct.option]* %7, i64 0, i64 0
  %19 = call i32 @OPT_BOOL(i8 signext 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64* @single, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.option, %struct.option* %18, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %18, i64 1
  %22 = call i32 @OPT_BOOL(i8 signext 109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64* @multi, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.option, %struct.option* %21, i64 1
  %25 = call i32 @OPT_INTEGER(i8 signext 99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* @count, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.option, %struct.option* %24, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.option, %struct.option* %24, i64 1
  %28 = call i32 @OPT_BOOL(i8 signext 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64* @dump, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.option, %struct.option* %27, i64 1
  %31 = call i32 @OPT_BOOL(i8 signext 112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64* @perf, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %30, i64 1
  %34 = call i32 @OPT_INTEGER(i8 signext 97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* @analyze, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %37 = call i32 @OPT_INTEGER(i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32* @analyze_step, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.option, %struct.option* %36, i64 1
  %40 = call i32 (...) @OPT_END()
  %41 = getelementptr inbounds %struct.option, %struct.option* %39, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = call i8* (...) @setup_git_directory()
  store i8* %42, i8** %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds [8 x %struct.option], [8 x %struct.option]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  %48 = call i32 @parse_options(i32 %43, i8** %44, i8* %45, %struct.option* %46, i8** %47, i32 0)
  store i32 %48, i32* %4, align 4
  store i32 1, i32* @ignore_case, align 4
  %49 = load i64, i64* @dump, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %2
  %52 = load i64, i64* @perf, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @analyze, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %51
  %58 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* @count, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i64, i64* @single, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* @multi, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67, %64
  %73 = load i64, i64* @single, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* @multi, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75, %72
  %81 = call i32 (...) @dump_run()
  store i32 0, i32* %3, align 4
  br label %149

82:                                               ; preds = %2
  %83 = load i64, i64* @perf, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load i32, i32* @analyze, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i64, i64* @single, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* @multi, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %90
  %97 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %93
  %99 = call i64 @time_runs(i32 0)
  store i64 %99, i64* %9, align 8
  %100 = call i64 @time_runs(i32 1)
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %98
  store i32 0, i32* %3, align 4
  br label %149

107:                                              ; preds = %82
  %108 = load i32, i32* @analyze, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load i32, i32* @analyze, align 4
  %112 = icmp slt i32 %111, 500
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %110
  %116 = load i32, i32* @analyze_step, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @analyze, align 4
  store i32 %119, i32* @analyze_step, align 4
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i64, i64* @single, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i64, i64* @multi, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123, %120
  %127 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %123
  %129 = call i32 (...) @analyze_run()
  store i32 0, i32* %3, align 4
  br label %149

130:                                              ; preds = %107
  %131 = load i64, i64* @single, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = load i64, i64* @multi, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %133, %130
  %139 = load i64, i64* @single, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i64 @time_runs(i32 0)
  br label %143

143:                                              ; preds = %141, %138
  %144 = load i64, i64* @multi, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i64 @time_runs(i32 1)
  br label %148

148:                                              ; preds = %146, %143
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %128, %106, %80
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i64*, i8*) #2

declare dso_local i32 @OPT_INTEGER(i8 signext, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i8* @setup_git_directory(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @dump_run(...) #2

declare dso_local i64 @time_runs(i32) #2

declare dso_local i32 @analyze_run(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
