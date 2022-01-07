; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mrbc/tools/mrbc/extr_mrbc.c_dump_file.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mrbc/tools/mrbc/extr_mrbc.c_dump_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.mrbc_args = type { i8*, i8*, i32, i64 }

@MRB_DUMP_OK = common dso_local global i32 0, align 4
@MRB_DUMP_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: invalid C language symbol name\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: error in mrb dump (%s) %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, %struct.RProc*, %struct.mrbc_args*)* @dump_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_file(i32* %0, i32* %1, i8* %2, %struct.RProc* %3, %struct.mrbc_args* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.RProc*, align 8
  %10 = alloca %struct.mrbc_args*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.RProc* %3, %struct.RProc** %9, align 8
  store %struct.mrbc_args* %4, %struct.mrbc_args** %10, align 8
  %13 = load i32, i32* @MRB_DUMP_OK, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.RProc*, %struct.RProc** %9, align 8
  %15 = getelementptr inbounds %struct.RProc, %struct.RProc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load %struct.mrbc_args*, %struct.mrbc_args** %10, align 8
  %19 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @mrb_irep_remove_lv(i32* %23, i32* %24)
  br label %26

26:                                               ; preds = %22, %5
  %27 = load %struct.mrbc_args*, %struct.mrbc_args** %10, align 8
  %28 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load %struct.mrbc_args*, %struct.mrbc_args** %10, align 8
  %35 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.mrbc_args*, %struct.mrbc_args** %10, align 8
  %39 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @mrb_dump_irep_cfunc(i32* %32, i32* %33, i32 %36, i32* %37, i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @MRB_DUMP_INVALID_ARGUMENT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load i32, i32* @stderr, align 4
  %47 = load %struct.mrbc_args*, %struct.mrbc_args** %10, align 8
  %48 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %45, %31
  br label %60

52:                                               ; preds = %26
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load %struct.mrbc_args*, %struct.mrbc_args** %10, align 8
  %56 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @mrb_dump_irep_binary(i32* %53, i32* %54, i32 %57, i32* %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %52, %51
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @MRB_DUMP_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* @stderr, align 4
  %66 = load %struct.mrbc_args*, %struct.mrbc_args** %10, align 8
  %67 = getelementptr inbounds %struct.mrbc_args, %struct.mrbc_args* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %60
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @mrb_irep_remove_lv(i32*, i32*) #1

declare dso_local i32 @mrb_dump_irep_cfunc(i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @mrb_dump_irep_binary(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
