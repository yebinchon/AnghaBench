; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_bind_bytecoded_builtins.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_bind_bytecoded_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytecoded_builtin = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@BACKTRACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@PATH_BEGIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@PATH_END = common dso_local global i32 0, align 4
@STOREV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"rangevar\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rangestart\00", align 1
@DUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@LOADV = common dso_local global i32 0, align 4
@RANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bind_bytecoded_builtins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_bytecoded_builtins(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.bytecoded_builtin], align 16
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.bytecoded_builtin], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = call i32 (...) @gen_noop()
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds [2 x %struct.bytecoded_builtin], [2 x %struct.bytecoded_builtin]* %4, i64 0, i64 0
  %13 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %12, i32 0, i32 1
  %15 = load i32, i32* @BACKTRACK, align 4
  %16 = call i32 @gen_op_simple(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %14, align 8
  %19 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %12, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %12, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %12, i64 1
  %22 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %21, i32 0, i32 1
  %24 = call i32 (...) @jv_false()
  %25 = call i32 @gen_const(i32 %24)
  %26 = call i32 (...) @jv_true()
  %27 = call i32 @gen_const(i32 %26)
  %28 = call i32 @gen_condbranch(i32 %25, i32 %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %23, align 8
  %31 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %21, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %21, i32 0, i32 3
  store i32 0, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %52, %1
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %35, 2
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2 x %struct.bytecoded_builtin], [2 x %struct.bytecoded_builtin]* %4, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (...) @gen_noop()
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [2 x %struct.bytecoded_builtin], [2 x %struct.bytecoded_builtin]* %4, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @gen_function(i8* %43, i32 %44, i32 %49)
  %51 = call i32 (i32, i32, ...) @BLOCK(i32 %38, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %33

55:                                               ; preds = %33
  %56 = getelementptr inbounds [1 x %struct.bytecoded_builtin], [1 x %struct.bytecoded_builtin]* %6, i64 0, i64 0
  %57 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %57, align 8
  %58 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %56, i32 0, i32 1
  %59 = load i32, i32* @PATH_BEGIN, align 4
  %60 = call i32 @gen_op_simple(i32 %59)
  %61 = call i32 (...) @gen_noop()
  %62 = call i32 @gen_call(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @PATH_END, align 4
  %64 = call i32 @gen_op_simple(i32 %63)
  %65 = call i32 (i32, i32, ...) @BLOCK(i32 %60, i32 %62, i32 %64)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %58, align 8
  %68 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %56, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %56, i32 0, i32 3
  store i32 0, i32* %69, align 4
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %89, %55
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %72, 1
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [1 x %struct.bytecoded_builtin], [1 x %struct.bytecoded_builtin]* %6, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @gen_param(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [1 x %struct.bytecoded_builtin], [1 x %struct.bytecoded_builtin]* %6, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.bytecoded_builtin, %struct.bytecoded_builtin* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @gen_function(i8* %80, i32 %81, i32 %86)
  %88 = call i32 (i32, i32, ...) @BLOCK(i32 %75, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %70

92:                                               ; preds = %70
  %93 = load i32, i32* @STOREV, align 4
  %94 = call i32 @gen_op_var_fresh(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @STOREV, align 4
  %96 = call i32 @gen_op_var_fresh(i32 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @DUP, align 4
  %98 = call i32 @gen_op_simple(i32 %97)
  %99 = call i32 (...) @gen_noop()
  %100 = call i32 @gen_call(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (...) @gen_noop()
  %103 = call i32 @gen_call(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @DUP, align 4
  %105 = call i32 @gen_op_simple(i32 %104)
  %106 = load i32, i32* @LOADV, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @gen_op_bound(i32 %106, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @RANGE, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @gen_op_bound(i32 %110, i32 %111)
  %113 = call i32 (i32, i32, ...) @BLOCK(i32 %98, i32 %100, i32 %101, i32 %103, i32 %105, i32 %108, i32 %109, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @gen_param(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %116 = call i32 @gen_param(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %117 = call i32 (i32, i32, ...) @BLOCK(i32 %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @gen_function(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %117, i32 %118)
  %120 = call i32 (i32, i32, ...) @BLOCK(i32 %114, i32 %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %2, align 4
  %123 = call i32 (i32, i32, ...) @BLOCK(i32 %121, i32 %122)
  ret i32 %123
}

declare dso_local i32 @gen_noop(...) #1

declare dso_local i32 @gen_op_simple(i32) #1

declare dso_local i32 @gen_condbranch(i32, i32) #1

declare dso_local i32 @gen_const(i32) #1

declare dso_local i32 @jv_false(...) #1

declare dso_local i32 @jv_true(...) #1

declare dso_local i32 @BLOCK(i32, i32, ...) #1

declare dso_local i32 @gen_function(i8*, i32, i32) #1

declare dso_local i32 @gen_call(i8*, i32) #1

declare dso_local i32 @gen_param(i8*) #1

declare dso_local i32 @gen_op_var_fresh(i32, i8*) #1

declare dso_local i32 @gen_op_bound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
