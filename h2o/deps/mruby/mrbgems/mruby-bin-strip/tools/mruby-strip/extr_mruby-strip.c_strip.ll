; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-strip/tools/mruby-strip/extr_mruby-strip.c_strip.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-strip/tools/mruby-strip/extr_mruby-strip.c_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strip_args = type { i32, i32, i8**, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"can't open file for reading %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"can't read irep file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"can't open file for writing %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"error occurred during dumping %s\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.strip_args*)* @strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strip(i32* %0, %struct.strip_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.strip_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.strip_args* %1, %struct.strip_args** %5, align 8
  %12 = load %struct.strip_args*, %struct.strip_args** %5, align 8
  %13 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %93, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.strip_args*, %struct.strip_args** %5, align 8
  %18 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %96

21:                                               ; preds = %15
  %22 = load %struct.strip_args*, %struct.strip_args** %5, align 8
  %23 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %22, i32 0, i32 2
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %37, i32* %3, align 4
  br label %98

38:                                               ; preds = %21
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @mrb_read_irep_file(i32* %39, i32* %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i32*, i32** %9, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %50, i32* %3, align 4
  br label %98

51:                                               ; preds = %38
  %52 = load %struct.strip_args*, %struct.strip_args** %5, align 8
  %53 = getelementptr inbounds %struct.strip_args, %struct.strip_args* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @mrb_irep_remove_lv(i32* %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i8*, i8** %7, align 8
  %62 = call i32* @fopen(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @mrb_irep_decref(i32* %69, i32* %70)
  %72 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %72, i32* %3, align 4
  br label %98

73:                                               ; preds = %60
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @mrb_dump_irep_binary(i32* %74, i32* %75, i32 %76, i32* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @fclose(i32* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @mrb_irep_decref(i32* %81, i32* %82)
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @MRB_DUMP_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %91, i32* %3, align 4
  br label %98

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %15

96:                                               ; preds = %15
  %97 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %87, %65, %46, %33
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @mrb_read_irep_file(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @mrb_irep_remove_lv(i32*, i32*) #1

declare dso_local i32 @mrb_irep_decref(i32*, i32*) #1

declare dso_local i32 @mrb_dump_irep_binary(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
