; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mirb/tools/mirb/extr_mirb.c_is_code_block_open.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-mirb/tools/mirb/extr_mirb.c_is_code_block_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_parser_state = type { i64, i32, %struct.TYPE_2__*, i64, i32* }
%struct.TYPE_2__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@__const.is_code_block_open.unexpected_end = private unnamed_addr constant [30 x i8] c"syntax error, unexpected $end\00", align 16
@.str = private unnamed_addr constant [37 x i8] c"syntax error, unexpected keyword_end\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"syntax error, unexpected tREGEXP_BEG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrb_parser_state*)* @is_code_block_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_code_block_open(%struct.mrb_parser_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrb_parser_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [30 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.mrb_parser_state* %0, %struct.mrb_parser_state** %3, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %9 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %2, align 4
  br label %81

14:                                               ; preds = %1
  %15 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %16 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %81

21:                                               ; preds = %14
  %22 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %23 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 0, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = bitcast [30 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 getelementptr inbounds ([30 x i8], [30 x i8]* @__const.is_code_block_open.unexpected_end, i32 0, i32 0), i64 30, i1 false)
  %28 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %29 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %36 = call i64 @strncmp(i8* %34, i8* %35, i32 29)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %26
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %81

56:                                               ; preds = %21
  %57 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %3, align 8
  %58 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %78 [
    i32 138, label %60
    i32 135, label %62
    i32 137, label %64
    i32 131, label %66
    i32 128, label %68
    i32 139, label %70
    i32 136, label %72
    i32 134, label %73
    i32 133, label %74
    i32 132, label %75
    i32 129, label %76
    i32 130, label %77
  ]

60:                                               ; preds = %56
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %4, align 4
  br label %79

62:                                               ; preds = %56
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %4, align 4
  br label %79

64:                                               ; preds = %56
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %4, align 4
  br label %79

66:                                               ; preds = %56
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %4, align 4
  br label %79

68:                                               ; preds = %56
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %4, align 4
  br label %79

70:                                               ; preds = %56
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %79

72:                                               ; preds = %56
  br label %79

73:                                               ; preds = %56
  br label %79

74:                                               ; preds = %56
  br label %79

75:                                               ; preds = %56
  br label %79

76:                                               ; preds = %56
  br label %79

77:                                               ; preds = %56
  br label %79

78:                                               ; preds = %56
  br label %79

79:                                               ; preds = %78, %77, %76, %75, %74, %73, %72, %70, %68, %66, %64, %62, %60
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %54, %19, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
