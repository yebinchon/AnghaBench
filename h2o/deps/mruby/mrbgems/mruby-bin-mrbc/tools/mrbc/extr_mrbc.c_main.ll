; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mrbc/tools/mrbc/extr_mrbc.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mrbc/tools/mrbc/extr_mrbc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrbc_args = type { i8*, i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid mrb_state, exiting mrbc\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: no program file given\0A\00", align 1
@C_EXT = common dso_local global i32 0, align 4
@RITEBIN_EXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"%s: output file should be specified to compile multiple files\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s:%s:Syntax OK\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: cannot open output file:(%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Output file is required\0A\00", align 1
@MRB_DUMP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mrbc_args, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32* (...) @mrb_open()
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %18, i32* %3, align 4
  br label %164

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @parse_args(i32* %20, i32 %21, i8** %22, %struct.mrbc_args* %9)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @cleanup(i32* %27, %struct.mrbc_args* %9)
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @usage(i8* %31)
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %33, i32* %3, align 4
  br label %164

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %43, i32* %3, align 4
  br label %164

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i32*, i32** %6, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @C_EXT, align 4
  br label %71

69:                                               ; preds = %57
  %70 = load i32, i32* @RITEBIN_EXT, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i8* @get_outfilename(i32* %58, i8* %63, i32 %72)
  %74 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 1
  store i8* %73, i8** %74, align 8
  br label %81

75:                                               ; preds = %52
  %76 = load i32, i32* @stderr, align 4
  %77 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %80, i32* %3, align 4
  br label %164

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %48, %44
  %83 = load i32, i32* %7, align 4
  %84 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @load_file(i32* %85, %struct.mrbc_args* %9)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @mrb_nil_p(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @cleanup(i32* %91, %struct.mrbc_args* %9)
  %93 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %93, i32* %3, align 4
  br label %164

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %100, i8* %105)
  br label %107

107:                                              ; preds = %98, %94
  %108 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @cleanup(i32* %112, %struct.mrbc_args* %9)
  %114 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %164

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %141

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32*, i32** @stdout, align 8
  store i32* %125, i32** %10, align 8
  br label %140

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32* @fopen(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %129, i32** %10, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i32, i32* @stderr, align 4
  %133 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %134, i8* %136)
  %138 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %138, i32* %3, align 4
  br label %164

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %124
  br label %145

141:                                              ; preds = %115
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %144 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %144, i32* %3, align 4
  br label %164

145:                                              ; preds = %140
  %146 = load i32*, i32** %6, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %9, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @mrb_proc_ptr(i32 %150)
  %152 = call i32 @dump_file(i32* %146, i32* %147, i8* %149, i32 %151, %struct.mrbc_args* %9)
  store i32 %152, i32* %8, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = call i32 @fclose(i32* %153)
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @cleanup(i32* %155, %struct.mrbc_args* %9)
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @MRB_DUMP_OK, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %145
  %161 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %161, i32* %3, align 4
  br label %164

162:                                              ; preds = %145
  %163 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %160, %141, %131, %111, %90, %75, %38, %26, %15
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32* @mrb_open(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @parse_args(i32*, i32, i8**, %struct.mrbc_args*) #1

declare dso_local i32 @cleanup(i32*, %struct.mrbc_args*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @get_outfilename(i32*, i8*, i32) #1

declare dso_local i32 @load_file(i32*, %struct.mrbc_args*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @dump_file(i32*, i32*, i8*, i32, %struct.mrbc_args*) #1

declare dso_local i32 @mrb_proc_ptr(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
